; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_validate_gpsk_3_mic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_validate_gpsk_3_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_gpsk_data = type { i32, i32, i32, i32 }

@EAP_GPSK_MAX_MIC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"EAP-GPSK: Message too short for MIC (left=%lu miclen=%lu)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"EAP-GPSK: Failed to compute MIC\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"EAP-GPSK: Incorrect MIC in GPSK-3\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"EAP-GPSK: Received MIC\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"EAP-GPSK: Computed MIC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_gpsk_data*, i32*, i32*, i32*)* @eap_gpsk_validate_gpsk_3_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_gpsk_validate_gpsk_3_mic(%struct.eap_gpsk_data* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.eap_gpsk_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.eap_gpsk_data* %0, %struct.eap_gpsk_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @EAP_GPSK_MAX_MIC_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  store i32 1, i32* %13, align 4
  br label %95

21:                                               ; preds = %4
  %22 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %23 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %26 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @eap_gpsk_mic_len(i32 %24, i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = ptrtoint i32* %29 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %21
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = load i64, i64* %10, align 8
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %47)
  store i32* null, i32** %5, align 8
  store i32 1, i32* %13, align 4
  br label %95

49:                                               ; preds = %21
  %50 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %51 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %54 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %57 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %60 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i64 @eap_gpsk_compute_mic(i32 %52, i32 %55, i32 %58, i32 %61, i32* %62, i32 %69, i32* %17)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %49
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  store i32 1, i32* %13, align 4
  br label %95

75:                                               ; preds = %49
  %76 = load i32*, i32** %8, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i64 @os_memcmp_const(i32* %17, i32* %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32, i32* @MSG_INFO, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @wpa_hexdump(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %84, i64 %85)
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @wpa_hexdump(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %17, i64 %88)
  store i32* null, i32** %5, align 8
  store i32 1, i32* %13, align 4
  br label %95

90:                                               ; preds = %75
  %91 = load i64, i64* %10, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 %91
  store i32* %93, i32** %8, align 8
  %94 = load i32*, i32** %8, align 8
  store i32* %94, i32** %5, align 8
  store i32 1, i32* %13, align 4
  br label %95

95:                                               ; preds = %90, %80, %72, %39, %20
  %96 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32*, i32** %5, align 8
  ret i32* %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @eap_gpsk_mic_len(i32, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @eap_gpsk_compute_mic(i32, i32, i32, i32, i32*, i32, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i64) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
