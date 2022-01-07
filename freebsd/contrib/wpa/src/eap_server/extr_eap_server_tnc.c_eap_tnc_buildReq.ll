; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_eap_tnc_buildReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_eap_tnc_buildReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_tnc_data = type { i32, i32, i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"EAP-TNC: Failed to generate message\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"EAP-TNC: Failed to generate recommendation message\00", align 1
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, i32)* @eap_tnc_buildReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_tnc_buildReq(%struct.eap_sm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_tnc_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.eap_tnc_data*
  store %struct.eap_tnc_data* %10, %struct.eap_tnc_data** %8, align 8
  %11 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %12 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %82 [
    i32 129, label %14
    i32 134, label %23
    i32 130, label %48
    i32 128, label %73
    i32 131, label %77
    i32 133, label %81
    i32 132, label %81
  ]

14:                                               ; preds = %3
  %15 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %16 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @tncs_init_connection(i32 %17)
  %19 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %20 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.wpabuf* @eap_tnc_build_start(%struct.eap_sm* %19, %struct.eap_tnc_data* %20, i32 %21)
  store %struct.wpabuf* %22, %struct.wpabuf** %4, align 8
  br label %83

23:                                               ; preds = %3
  %24 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %25 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %30 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %31 = call i32* @eap_tnc_build(%struct.eap_sm* %29, %struct.eap_tnc_data* %30)
  %32 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %33 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %35 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %83

41:                                               ; preds = %28
  %42 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %43 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %23
  %45 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.wpabuf* @eap_tnc_build_msg(%struct.eap_tnc_data* %45, i32 %46)
  store %struct.wpabuf* %47, %struct.wpabuf** %4, align 8
  br label %83

48:                                               ; preds = %3
  %49 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %50 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %55 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %56 = call i32* @eap_tnc_build_recommendation(%struct.eap_sm* %54, %struct.eap_tnc_data* %55)
  %57 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %58 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %60 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %83

66:                                               ; preds = %53
  %67 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %68 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %48
  %70 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call %struct.wpabuf* @eap_tnc_build_msg(%struct.eap_tnc_data* %70, i32 %71)
  store %struct.wpabuf* %72, %struct.wpabuf** %4, align 8
  br label %83

73:                                               ; preds = %3
  %74 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call %struct.wpabuf* @eap_tnc_build_msg(%struct.eap_tnc_data* %74, i32 %75)
  store %struct.wpabuf* %76, %struct.wpabuf** %4, align 8
  br label %83

77:                                               ; preds = %3
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %80 = call %struct.wpabuf* @eap_tnc_build_frag_ack(i32 %78, i32 %79)
  store %struct.wpabuf* %80, %struct.wpabuf** %4, align 8
  br label %83

81:                                               ; preds = %3, %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %83

82:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %83

83:                                               ; preds = %82, %81, %77, %73, %69, %63, %44, %38, %14
  %84 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %84
}

declare dso_local i32 @tncs_init_connection(i32) #1

declare dso_local %struct.wpabuf* @eap_tnc_build_start(%struct.eap_sm*, %struct.eap_tnc_data*, i32) #1

declare dso_local i32* @eap_tnc_build(%struct.eap_sm*, %struct.eap_tnc_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_tnc_build_msg(%struct.eap_tnc_data*, i32) #1

declare dso_local i32* @eap_tnc_build_recommendation(%struct.eap_sm*, %struct.eap_tnc_data*) #1

declare dso_local %struct.wpabuf* @eap_tnc_build_frag_ack(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
