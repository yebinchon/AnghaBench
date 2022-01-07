; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_build_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_build_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32 }
%struct.eap_sake_data = type { i8*, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EAP-SAKE: Request/Confirm\00", align 1
@EAP_SAKE_MIC_LEN = common dso_local global i64 0, align 8
@EAP_SAKE_SUBTYPE_CONFIRM = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"EAP-SAKE: * AT_MIC_S\00", align 1
@EAP_SAKE_AT_MIC_S = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"EAP-SAKE: Failed to compute MIC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sake_data*, i32)* @eap_sake_build_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sake_build_confirm(%struct.eap_sm* %0, %struct.eap_sake_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sake_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sake_data* %1, %struct.eap_sake_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i64, i64* @EAP_SAKE_MIC_LEN, align 8
  %15 = add nsw i64 2, %14
  %16 = load i32, i32* @EAP_SAKE_SUBTYPE_CONFIRM, align 4
  %17 = call %struct.wpabuf* @eap_sake_build_msg(%struct.eap_sake_data* %12, i32 %13, i64 %15, i32 %16)
  store %struct.wpabuf* %17, %struct.wpabuf** %8, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %19 = icmp eq %struct.wpabuf* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i8*, i8** @FAILURE, align 8
  %22 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %23 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %77

24:                                               ; preds = %3
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %28 = load i64, i64* @EAP_SAKE_AT_MIC_S, align 8
  %29 = call i32 @wpabuf_put_u8(%struct.wpabuf* %27, i64 %28)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %31 = load i64, i64* @EAP_SAKE_MIC_LEN, align 8
  %32 = add nsw i64 2, %31
  %33 = call i32 @wpabuf_put_u8(%struct.wpabuf* %30, i64 %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %35 = load i64, i64* @EAP_SAKE_MIC_LEN, align 8
  %36 = call i32* @wpabuf_put(%struct.wpabuf* %34, i64 %35)
  store i32* %36, i32** %9, align 8
  %37 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %38 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %42 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %45 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %48 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %51 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %54 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %57 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %60 = call i32 @wpabuf_head(%struct.wpabuf* %59)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %62 = call i32 @wpabuf_len(%struct.wpabuf* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @eap_sake_compute_mic(i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 0, i32 %60, i32 %62, i32* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %24
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i8*, i8** @FAILURE, align 8
  %71 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %72 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %74 = call i32 @wpabuf_free(%struct.wpabuf* %73)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %77

75:                                               ; preds = %24
  %76 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %76, %struct.wpabuf** %4, align 8
  br label %77

77:                                               ; preds = %75, %67, %20
  %78 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %78
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_sake_build_msg(%struct.eap_sake_data*, i32, i64, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i64 @eap_sake_compute_mic(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
