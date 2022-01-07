; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_request_eap_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_request_eap_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32, i64, %struct.TYPE_4__*, i32*, i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32* (%struct.eap_sm*)* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.eap_method_ret = type { i32 }
%struct.eap_hdr = type { i32 }
%struct.wpabuf = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"EAP-TTLS: failed to initialize Phase 2 EAP method %d\00", align 1
@EAP_TTLS_PHASE2_EAP = common dso_local global i64 0, align 8
@EAP_TYPE_TNC = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.eap_hdr*, i64, i64, %struct.wpabuf**)* @eap_ttls_phase2_request_eap_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_phase2_request_eap_method(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2, %struct.eap_hdr* %3, i64 %4, i64 %5, %struct.wpabuf** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.eap_sm*, align 8
  %10 = alloca %struct.eap_ttls_data*, align 8
  %11 = alloca %struct.eap_method_ret*, align 8
  %12 = alloca %struct.eap_hdr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.wpabuf**, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %9, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %10, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %11, align 8
  store %struct.eap_hdr* %3, %struct.eap_hdr** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.wpabuf** %6, %struct.wpabuf*** %15, align 8
  %16 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %17 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %7
  %23 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %24 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EAP_TYPE_NONE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @eap_ttls_phase2_select_eap_method(%struct.eap_ttls_data* %30, i64 %31)
  br label %33

33:                                               ; preds = %29, %22, %7
  %34 = load i64, i64* %14, align 8
  %35 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %36 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @EAP_TYPE_NONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40, %33
  %45 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %46 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %49 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %52 = load %struct.wpabuf**, %struct.wpabuf*** %15, align 8
  %53 = call i64 @eap_peer_tls_phase2_nak(i32 %47, i32 %50, %struct.eap_hdr* %51, %struct.wpabuf** %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 -1, i32* %8, align 4
  br label %109

56:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %109

57:                                               ; preds = %40
  %58 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %59 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %64 = load i64, i64* %14, align 8
  %65 = call %struct.TYPE_4__* @eap_peer_get_eap_method(i64 %63, i64 %64)
  %66 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %67 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %66, i32 0, i32 2
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %67, align 8
  %68 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %69 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = icmp ne %struct.TYPE_4__* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %62
  %73 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %74 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %76 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32* (%struct.eap_sm*)*, i32* (%struct.eap_sm*)** %78, align 8
  %80 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %81 = call i32* %79(%struct.eap_sm* %80)
  %82 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %83 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %82, i32 0, i32 3
  store i32* %81, i32** %83, align 8
  %84 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %85 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %72, %62
  br label %87

87:                                               ; preds = %86, %57
  %88 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %89 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %94 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = icmp eq %struct.TYPE_4__* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @MSG_INFO, align 4
  %99 = load i64, i64* %14, align 8
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %99)
  store i32 -1, i32* %8, align 4
  br label %109

101:                                              ; preds = %92
  %102 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %103 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %104 = load %struct.eap_method_ret*, %struct.eap_method_ret** %11, align 8
  %105 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load %struct.wpabuf**, %struct.wpabuf*** %15, align 8
  %108 = call i32 @eap_ttls_phase2_eap_process(%struct.eap_sm* %102, %struct.eap_ttls_data* %103, %struct.eap_method_ret* %104, %struct.eap_hdr* %105, i64 %106, %struct.wpabuf** %107)
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %101, %97, %56, %55
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local i32 @eap_ttls_phase2_select_eap_method(%struct.eap_ttls_data*, i64) #1

declare dso_local i64 @eap_peer_tls_phase2_nak(i32, i32, %struct.eap_hdr*, %struct.wpabuf**) #1

declare dso_local %struct.TYPE_4__* @eap_peer_get_eap_method(i64, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_ttls_phase2_eap_process(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.eap_hdr*, i64, %struct.wpabuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
