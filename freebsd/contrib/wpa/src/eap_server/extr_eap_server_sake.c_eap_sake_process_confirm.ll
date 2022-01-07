; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_process_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_process_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32 }
%struct.eap_sake_data = type { i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sake_parse_attr = type { i32 }

@EAP_SAKE_MIC_LEN = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"EAP-SAKE: Received Response/Confirm\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"EAP-SAKE: Response/Confirm did not include AT_MIC_P\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"EAP-SAKE: Failed to compute MIC\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"EAP-SAKE: Incorrect AT_MIC_P\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_sake_data*, %struct.wpabuf*, i32*, i64)* @eap_sake_process_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sake_process_confirm(%struct.eap_sm* %0, %struct.eap_sake_data* %1, %struct.wpabuf* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_sake_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.eap_sake_parse_attr, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_sake_data* %1, %struct.eap_sake_data** %7, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i32, i32* @EAP_SAKE_MIC_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %20 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CONFIRM, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  br label %91

25:                                               ; preds = %5
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @eap_sake_parse_attributes(i32* %28, i64 %29, %struct.eap_sake_parse_attr* %11)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %14, align 4
  br label %91

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @MSG_INFO, align 4
  %39 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %91

40:                                               ; preds = %33
  %41 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %42 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %46 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %49 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %52 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %55 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %58 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %61 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %64 = call i32 @wpabuf_head(%struct.wpabuf* %63)
  %65 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %66 = call i32 @wpabuf_len(%struct.wpabuf* %65)
  %67 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @eap_sake_compute_mic(i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 1, i32 %64, i32 %66, i32 %68, i32* %18)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %40
  %72 = load i32, i32* @MSG_INFO, align 4
  %73 = call i32 @wpa_printf(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %91

74:                                               ; preds = %40
  %75 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EAP_SAKE_MIC_LEN, align 4
  %78 = call i64 @os_memcmp_const(i32 %76, i32* %18, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32, i32* @MSG_INFO, align 4
  %82 = call i32 @wpa_printf(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %84 = load i32, i32* @FAILURE, align 4
  %85 = call i32 @eap_sake_state(%struct.eap_sake_data* %83, i32 %84)
  br label %90

86:                                               ; preds = %74
  %87 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %88 = load i32, i32* @SUCCESS, align 4
  %89 = call i32 @eap_sake_state(%struct.eap_sake_data* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %80
  store i32 0, i32* %14, align 4
  br label %91

91:                                               ; preds = %90, %71, %37, %32, %24
  %92 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %14, align 4
  switch i32 %93, label %95 [
    i32 0, label %94
    i32 1, label %94
  ]

94:                                               ; preds = %91, %91
  ret void

95:                                               ; preds = %91
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i64 @eap_sake_parse_attributes(i32*, i64, %struct.eap_sake_parse_attr*) #2

declare dso_local i64 @eap_sake_compute_mic(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i64 @os_memcmp_const(i32, i32*, i32) #2

declare dso_local i32 @eap_sake_state(%struct.eap_sake_data*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
