; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_request_pap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_request_pap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32 }
%struct.eap_method_ret = type { i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-TTLS: Phase 2 PAP Request\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"EAP-TTLS/PAP: Failed to allocate memory\00", align 1
@RADIUS_ATTR_USER_NAME = common dso_local global i32 0, align 4
@RADIUS_ATTR_USER_PASSWORD = common dso_local global i32 0, align 4
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_COND_SUCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.wpabuf**)* @eap_ttls_phase2_request_pap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_phase2_request_pap(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2, %struct.wpabuf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_ttls_data*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf**, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf** %3, %struct.wpabuf*** %9, align 8
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %21 = call i32* @eap_get_config_identity(%struct.eap_sm* %20, i64* %16)
  store i32* %21, i32** %14, align 8
  %22 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %23 = call i32* @eap_get_config_password(%struct.eap_sm* %22, i64* %17)
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32*, i32** %15, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %4
  store i32 -1, i32* %5, align 4
  br label %99

30:                                               ; preds = %26
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* %17, align 8
  %33 = add i64 %31, %32
  %34 = add i64 %33, 100
  %35 = call %struct.wpabuf* @wpabuf_alloc(i64 %34)
  store %struct.wpabuf* %35, %struct.wpabuf** %10, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %37 = icmp eq %struct.wpabuf* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @MSG_ERROR, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %99

41:                                               ; preds = %30
  %42 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %43 = call i32* @wpabuf_mhead(%struct.wpabuf* %42)
  store i32* %43, i32** %11, align 8
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* @RADIUS_ATTR_USER_NAME, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i64, i64* %16, align 8
  %49 = call i32* @eap_ttls_avp_add(i32* %44, i32* %45, i32 %46, i32 0, i32 1, i32* %47, i64 %48)
  store i32* %49, i32** %12, align 8
  %50 = load i64, i64* %17, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %58

53:                                               ; preds = %41
  %54 = load i64, i64* %17, align 8
  %55 = and i64 %54, 15
  %56 = sub i64 16, %55
  %57 = and i64 %56, 15
  br label %58

58:                                               ; preds = %53, %52
  %59 = phi i64 [ 16, %52 ], [ %57, %53 ]
  store i64 %59, i64* %13, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* @RADIUS_ATTR_USER_PASSWORD, align 4
  %62 = load i64, i64* %17, align 8
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %62, %63
  %65 = call i32* @eap_ttls_avp_hdr(i32* %60, i32 %61, i32 0, i32 1, i64 %64)
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i64, i64* %17, align 8
  %69 = call i32 @os_memcpy(i32* %66, i32* %67, i64 %68)
  %70 = load i64, i64* %17, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 %70
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @os_memset(i32* %73, i32 0, i64 %74)
  %76 = load i64, i64* %13, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 %76
  store i32* %78, i32** %12, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @AVP_PAD(i32* %79, i32* %80)
  %82 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i32 @wpabuf_put(%struct.wpabuf* %82, i32 %89)
  %91 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %92 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  store %struct.wpabuf* %91, %struct.wpabuf** %92, align 8
  %93 = load i32, i32* @METHOD_DONE, align 4
  %94 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %95 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @DECISION_COND_SUCC, align 4
  %97 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %98 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %58, %38, %29
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32* @eap_get_config_password(%struct.eap_sm*, i64*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32* @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32* @eap_ttls_avp_add(i32*, i32*, i32, i32, i32, i32*, i64) #1

declare dso_local i32* @eap_ttls_avp_hdr(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32 @AVP_PAD(i32*, i32*) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
