; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_wsc_process_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_wsc_process_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_wsc_data = type { i32, i32* }
%struct.eap_method_ret = type { i8* }

@WSC_FLAGS_LF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EAP-WSC: No Message Length field in a fragmented packet\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"EAP-WSC: No memory for message\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"EAP-WSC: Received %lu bytes in first fragment, waiting for %lu bytes more\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_wsc_data*, %struct.eap_method_ret*, i32, i32, i32, i32, i32*, i64)* @eap_wsc_process_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_wsc_process_fragment(%struct.eap_wsc_data* %0, %struct.eap_method_ret* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i64 %7) #0 {
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_wsc_data*, align 8
  %11 = alloca %struct.eap_method_ret*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.eap_wsc_data* %0, %struct.eap_wsc_data** %10, align 8
  store %struct.eap_method_ret* %1, %struct.eap_method_ret** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %18 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %19 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @WSC_FLAGS_LF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** @TRUE, align 8
  %31 = load %struct.eap_method_ret*, %struct.eap_method_ret** %11, align 8
  %32 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  br label %74

33:                                               ; preds = %22, %8
  %34 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %35 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %70

38:                                               ; preds = %33
  %39 = load i32, i32* %15, align 4
  %40 = call i32* @wpabuf_alloc(i32 %39)
  %41 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %42 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %44 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8*, i8** @TRUE, align 8
  %51 = load %struct.eap_method_ret*, %struct.eap_method_ret** %11, align 8
  %52 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  br label %74

53:                                               ; preds = %38
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %56 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %58 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = load i64, i64* %17, align 8
  %62 = call i32 @wpabuf_put_data(i32* %59, i32* %60, i64 %61)
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i64, i64* %17, align 8
  %65 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %66 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @wpabuf_tailroom(i32* %67)
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %64, i64 %68)
  br label %70

70:                                               ; preds = %53, %33
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %73 = call %struct.wpabuf* @eap_wsc_build_frag_ack(i32 %71, i32 %72)
  store %struct.wpabuf* %73, %struct.wpabuf** %9, align 8
  br label %74

74:                                               ; preds = %70, %47, %27
  %75 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  ret %struct.wpabuf* %75
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_data(i32*, i32*, i64) #1

declare dso_local i64 @wpabuf_tailroom(i32*) #1

declare dso_local %struct.wpabuf* @eap_wsc_build_frag_ack(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
