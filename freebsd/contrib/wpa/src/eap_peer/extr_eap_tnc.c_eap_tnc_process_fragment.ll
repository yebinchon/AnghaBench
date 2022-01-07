; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tnc.c_eap_tnc_process_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tnc.c_eap_tnc_process_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_tnc_data = type { i32* }
%struct.eap_method_ret = type { i8* }

@EAP_TNC_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EAP-TNC: No Message Length field in a fragmented packet\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"EAP-TNC: No memory for message\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"EAP-TNC: Received %lu bytes in first fragment, waiting for %lu bytes more\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_tnc_data*, %struct.eap_method_ret*, i32, i32, i32, i32*, i64)* @eap_tnc_process_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_tnc_process_fragment(%struct.eap_tnc_data* %0, %struct.eap_method_ret* %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.eap_tnc_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.eap_tnc_data* %0, %struct.eap_tnc_data** %9, align 8
  store %struct.eap_method_ret* %1, %struct.eap_method_ret** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %16 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %9, align 8
  %17 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %7
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @EAP_TNC_FLAGS_LENGTH_INCLUDED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** @TRUE, align 8
  %29 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %30 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  br label %69

31:                                               ; preds = %20, %7
  %32 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %9, align 8
  %33 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = call i32* @wpabuf_alloc(i32 %37)
  %39 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %9, align 8
  %40 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %9, align 8
  %42 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** @TRUE, align 8
  %49 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %50 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  br label %69

51:                                               ; preds = %36
  %52 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %9, align 8
  %53 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i64, i64* %15, align 8
  %57 = call i32 @wpabuf_put_data(i32* %54, i32* %55, i64 %56)
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load i64, i64* %15, align 8
  %60 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %9, align 8
  %61 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @wpabuf_tailroom(i32* %62)
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %59, i64 %63)
  br label %65

65:                                               ; preds = %51, %31
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %68 = call %struct.wpabuf* @eap_tnc_build_frag_ack(i32 %66, i32 %67)
  store %struct.wpabuf* %68, %struct.wpabuf** %8, align 8
  br label %69

69:                                               ; preds = %65, %45, %25
  %70 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  ret %struct.wpabuf* %70
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_data(i32*, i32*, i64) #1

declare dso_local i64 @wpabuf_tailroom(i32*) #1

declare dso_local %struct.wpabuf* @eap_tnc_build_frag_ack(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
