; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_process_gpsk_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_process_gpsk_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_gpsk_data = type { i64 }
%struct.eap_method_ret = type { i32, i32 }

@GPSK_1 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-GPSK: Received Request/GPSK-1\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@GPSK_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_gpsk_data*, %struct.eap_method_ret*, i32, i32*, i64)* @eap_gpsk_process_gpsk_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_gpsk_process_gpsk_1(%struct.eap_sm* %0, %struct.eap_gpsk_data* %1, %struct.eap_method_ret* %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_gpsk_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_gpsk_data* %1, %struct.eap_gpsk_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %20 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GPSK_1, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i32, i32* @TRUE, align 4
  %26 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %27 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %70

28:                                               ; preds = %6
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %17, align 8
  %34 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = call i32* @eap_gpsk_process_id_server(%struct.eap_gpsk_data* %34, i32* %35, i32* %36)
  store i32* %37, i32** %16, align 8
  %38 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = call i32* @eap_gpsk_process_rand_server(%struct.eap_gpsk_data* %38, i32* %39, i32* %40)
  store i32* %41, i32** %16, align 8
  %42 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %43 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = call i32* @eap_gpsk_process_csuite_list(%struct.eap_sm* %42, %struct.eap_gpsk_data* %43, i32** %15, i64* %14, i32* %44, i32* %45)
  store i32* %46, i32** %16, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %28
  %50 = load i32, i32* @METHOD_DONE, align 4
  %51 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %52 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %54 = load i32, i32* @FAILURE, align 4
  %55 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %53, i32 %54)
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %70

56:                                               ; preds = %28
  %57 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call %struct.wpabuf* @eap_gpsk_send_gpsk_2(%struct.eap_gpsk_data* %57, i32 %58, i32* %59, i64 %60)
  store %struct.wpabuf* %61, %struct.wpabuf** %18, align 8
  %62 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %63 = icmp eq %struct.wpabuf* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %70

65:                                               ; preds = %56
  %66 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %67 = load i32, i32* @GPSK_3, align 4
  %68 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %66, i32 %67)
  %69 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  store %struct.wpabuf* %69, %struct.wpabuf** %7, align 8
  br label %70

70:                                               ; preds = %65, %64, %49, %24
  %71 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %71
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @eap_gpsk_process_id_server(%struct.eap_gpsk_data*, i32*, i32*) #1

declare dso_local i32* @eap_gpsk_process_rand_server(%struct.eap_gpsk_data*, i32*, i32*) #1

declare dso_local i32* @eap_gpsk_process_csuite_list(%struct.eap_sm*, %struct.eap_gpsk_data*, i32**, i64*, i32*, i32*) #1

declare dso_local i32 @eap_gpsk_state(%struct.eap_gpsk_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_gpsk_send_gpsk_2(%struct.eap_gpsk_data*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
