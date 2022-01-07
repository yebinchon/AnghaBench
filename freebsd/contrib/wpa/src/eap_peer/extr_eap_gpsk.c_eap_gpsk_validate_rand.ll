; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_validate_rand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_validate_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_gpsk_data = type { i32*, i32* }

@EAP_GPSK_RAND_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"EAP-GPSK: Message too short for RAND_Peer\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"EAP-GPSK: RAND_Peer in GPSK-2 and GPSK-3 did not match\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"EAP-GPSK: RAND_Peer in GPSK-2\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"EAP-GPSK: RAND_Peer in GPSK-3\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"EAP-GPSK: Message too short for RAND_Server\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"EAP-GPSK: RAND_Server in GPSK-1 and GPSK-3 did not match\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"EAP-GPSK: RAND_Server in GPSK-1\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"EAP-GPSK: RAND_Server in GPSK-3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_gpsk_data*, i32*, i32*)* @eap_gpsk_validate_rand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_gpsk_validate_rand(%struct.eap_gpsk_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_gpsk_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.eap_gpsk_data* %0, %struct.eap_gpsk_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = ptrtoint i32* %8 to i64
  %11 = ptrtoint i32* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 4
  %14 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %85

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %23 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %26 = call i64 @os_memcmp(i32* %21, i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %33 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %36 = call i32 @wpa_hexdump(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %34, i32 %35)
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %40 = call i32 @wpa_hexdump(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32* %38, i32 %39)
  store i32* null, i32** %4, align 8
  br label %85

41:                                               ; preds = %20
  %42 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %85

58:                                               ; preds = %41
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %61 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %64 = call i64 @os_memcmp(i32* %59, i32* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %58
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 @wpa_printf(i32 %67, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %71 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %74 = call i32 @wpa_hexdump(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32* %72, i32 %73)
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %78 = call i32 @wpa_hexdump(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32* %76, i32 %77)
  store i32* null, i32** %4, align 8
  br label %85

79:                                               ; preds = %58
  %80 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  store i32* %84, i32** %4, align 8
  br label %85

85:                                               ; preds = %79, %66, %55, %28, %17
  %86 = load i32*, i32** %4, align 8
  ret i32* %86
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
