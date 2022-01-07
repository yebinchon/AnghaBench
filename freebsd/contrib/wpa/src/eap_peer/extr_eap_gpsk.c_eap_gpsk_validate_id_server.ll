; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_validate_id_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_validate_id_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_gpsk_data = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"EAP-GPSK: Message too short for length(ID_Server)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"EAP-GPSK: Message too short for ID_Server\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"EAP-GPSK: ID_Server did not match with the one used in GPSK-1\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"EAP-GPSK: ID_Server in GPSK-1\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"EAP-GPSK: ID_Server in GPSK-3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_gpsk_data*, i32*, i32*)* @eap_gpsk_validate_id_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_gpsk_validate_id_server(%struct.eap_gpsk_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_gpsk_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.eap_gpsk_data* %0, %struct.eap_gpsk_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %75

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = ptrtoint i32* %13 to i64
  %16 = ptrtoint i32* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = icmp slt i64 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %75

23:                                               ; preds = %12
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @WPA_GET_BE16(i32* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = ptrtoint i32* %28 to i64
  %31 = ptrtoint i32* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = load i64, i64* %8, align 8
  %35 = trunc i64 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %75

41:                                               ; preds = %23
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %44 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %50 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @os_memcmp(i32* %48, i32* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %47, %41
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %60 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %63 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @wpa_hexdump_ascii(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32* %61, i64 %64)
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @wpa_hexdump_ascii(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* %67, i64 %68)
  store i32* null, i32** %4, align 8
  br label %75

70:                                               ; preds = %47
  %71 = load i64, i64* %8, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 %71
  store i32* %73, i32** %6, align 8
  %74 = load i32*, i32** %6, align 8
  store i32* %74, i32** %4, align 8
  br label %75

75:                                               ; preds = %70, %55, %38, %20, %11
  %76 = load i32*, i32** %4, align 8
  ret i32* %76
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
