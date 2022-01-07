; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ikev2.c_eap_ikev2_process_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ikev2.c_eap_ikev2_process_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_ikev2_data = type { i32* }
%struct.eap_method_ret = type { i8* }

@IKEV2_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"EAP-IKEV2: No Message Length field in a fragmented packet\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"EAP-IKEV2: Ignore too long message\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"EAP-IKEV2: No memory for message\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"EAP-IKEV2: Received %lu bytes in first fragment, waiting for %lu bytes more\00", align 1
@FALSE = common dso_local global i8* null, align 8
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_ikev2_data*, %struct.eap_method_ret*, i32, i32, i32, i32*, i64)* @eap_ikev2_process_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_ikev2_process_fragment(%struct.eap_ikev2_data* %0, %struct.eap_method_ret* %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.eap_ikev2_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.eap_ikev2_data* %0, %struct.eap_ikev2_data** %9, align 8
  store %struct.eap_method_ret* %1, %struct.eap_method_ret** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %16 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %9, align 8
  %17 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %7
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @IKEV2_FLAGS_LENGTH_INCLUDED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** @TRUE, align 8
  %29 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %30 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  br label %81

31:                                               ; preds = %20, %7
  %32 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %9, align 8
  %33 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 50000
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** @TRUE, align 8
  %43 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %44 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  br label %81

45:                                               ; preds = %36
  %46 = load i32, i32* %13, align 4
  %47 = call i32* @wpabuf_alloc(i32 %46)
  %48 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %9, align 8
  %49 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %9, align 8
  %51 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i8*, i8** @TRUE, align 8
  %58 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %59 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  br label %81

60:                                               ; preds = %45
  %61 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %9, align 8
  %62 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @wpabuf_put_data(i32* %63, i32* %64, i64 %65)
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load i64, i64* %15, align 8
  %69 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %9, align 8
  %70 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @wpabuf_tailroom(i32* %71)
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i64 %68, i64 %72)
  br label %74

74:                                               ; preds = %60, %31
  %75 = load i8*, i8** @FALSE, align 8
  %76 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %77 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %80 = call %struct.wpabuf* @eap_ikev2_build_frag_ack(i32 %78, i32 %79)
  store %struct.wpabuf* %80, %struct.wpabuf** %8, align 8
  br label %81

81:                                               ; preds = %74, %54, %39, %25
  %82 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  ret %struct.wpabuf* %82
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_data(i32*, i32*, i64) #1

declare dso_local i64 @wpabuf_tailroom(i32*) #1

declare dso_local %struct.wpabuf* @eap_ikev2_build_frag_ack(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
