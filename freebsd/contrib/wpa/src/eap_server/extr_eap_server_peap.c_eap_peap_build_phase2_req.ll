; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_build_phase2_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_build_phase2_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i64, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, %struct.wpabuf* (%struct.eap_sm*, i32*, i32)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EAP-PEAP: Phase 2 method not ready\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"EAP-PEAP: Encrypting Phase 2 data\00", align 1
@EAP_TYPE_TLV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_peap_data*, i32)* @eap_peap_build_phase2_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_peap_build_phase2_req(%struct.eap_sm* %0, %struct.eap_peap_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_peap_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.wpabuf, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %14 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %19 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %77

25:                                               ; preds = %17
  %26 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %27 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.wpabuf* (%struct.eap_sm*, i32*, i32)*, %struct.wpabuf* (%struct.eap_sm*, i32*, i32)** %29, align 8
  %31 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %32 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %33 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.wpabuf* %30(%struct.eap_sm* %31, i32* %34, i32 %35)
  store %struct.wpabuf* %36, %struct.wpabuf** %8, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %38 = icmp eq %struct.wpabuf* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %77

40:                                               ; preds = %25
  %41 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %42 = call i32* @wpabuf_head(%struct.wpabuf* %41)
  store i32* %42, i32** %11, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %44 = call i64 @wpabuf_len(%struct.wpabuf* %43)
  store i64 %44, i64* %12, align 8
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @wpa_hexdump_key(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* %46, i64 %47)
  %49 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %50 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %40
  %54 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %55 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @EAP_TYPE_TLV, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32* %63, i32** %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = sub i64 %64, 4
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %61, %53, %40
  %67 = load i32*, i32** %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @wpabuf_set(%struct.wpabuf* %10, i32* %67, i64 %68)
  %70 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %71 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %72 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %71, i32 0, i32 1
  %73 = call %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm* %70, i32* %72, %struct.wpabuf* %10)
  store %struct.wpabuf* %73, %struct.wpabuf** %9, align 8
  %74 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %75 = call i32 @wpabuf_free(%struct.wpabuf* %74)
  %76 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %76, %struct.wpabuf** %4, align 8
  br label %77

77:                                               ; preds = %66, %39, %22
  %78 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %78
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i64) #1

declare dso_local %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm*, i32*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
