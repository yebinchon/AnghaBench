; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_implicit_identity_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_implicit_identity_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32 }
%struct.eap_method_ret = type { i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i32 }
%struct.eap_peer_config = type { i64, i64, i64, i64, i64 }

@METHOD_DONE = common dso_local global i8* null, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"EAP-TTLS: Phase2 Request processing failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf**)* @eap_ttls_implicit_identity_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_implicit_identity_request(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2, i32 %3, %struct.wpabuf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ttls_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpabuf**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.eap_hdr*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca %struct.eap_peer_config*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.wpabuf** %4, %struct.wpabuf*** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = call i64 (...) @eap_ttls_fake_identity_request()
  %17 = inttoptr i64 %16 to %struct.eap_hdr*
  store %struct.eap_hdr* %17, %struct.eap_hdr** %13, align 8
  %18 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %19 = icmp eq %struct.eap_hdr* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i8*, i8** @METHOD_DONE, align 8
  %22 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %23 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @DECISION_FAIL, align 8
  %25 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %26 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  store i32 -1, i32* %6, align 4
  br label %96

27:                                               ; preds = %5
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  %28 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %29 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %30 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %31 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %32 = call i64 @eap_ttls_phase2_request(%struct.eap_sm* %28, %struct.eap_ttls_data* %29, %struct.eap_method_ret* %30, %struct.eap_hdr* %31, %struct.wpabuf** %14)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %82

37:                                               ; preds = %27
  %38 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %39 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %38)
  store %struct.eap_peer_config* %39, %struct.eap_peer_config** %15, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %41 = icmp eq %struct.wpabuf* %40, null
  br i1 %41, label %42, label %75

42:                                               ; preds = %37
  %43 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %44 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %42
  %48 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %49 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %47
  %53 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %54 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %59 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %64 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62, %57, %52, %47, %42
  %68 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %69 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wpabuf_clear_free(i32 %70)
  %72 = call i32 @wpabuf_alloc(i32 0)
  %73 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %74 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %62, %37
  %76 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %77 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %81 = call i32 @eap_ttls_encrypt_response(%struct.eap_sm* %76, %struct.eap_ttls_data* %77, %struct.wpabuf* %78, i32 %79, %struct.wpabuf** %80)
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %75, %34
  %83 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %84 = call i32 @os_free(%struct.eap_hdr* %83)
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i8*, i8** @METHOD_DONE, align 8
  %89 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %90 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @DECISION_FAIL, align 8
  %92 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %93 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %87, %82
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %20
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i64 @eap_ttls_fake_identity_request(...) #1

declare dso_local i64 @eap_ttls_phase2_request(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.eap_hdr*, %struct.wpabuf**) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @wpabuf_clear_free(i32) #1

declare dso_local i32 @wpabuf_alloc(i32) #1

declare dso_local i32 @eap_ttls_encrypt_response(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.wpabuf*, i32, %struct.wpabuf**) #1

declare dso_local i32 @os_free(%struct.eap_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
