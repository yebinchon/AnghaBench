; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_build_phase2_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_build_phase2_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32 }
%struct.eap_hdr = type { i32, i32, i32 }

@EAP_CODE_SUCCESS = common dso_local global i32 0, align 4
@EAP_CODE_FAILURE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-PEAP: Encrypting Phase 2 data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_peap_data*, i32, i32)* @eap_peap_build_phase2_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_peap_build_phase2_term(%struct.eap_sm* %0, %struct.eap_peap_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_peap_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.wpabuf, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.eap_hdr*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 12, i64* %12, align 8
  %14 = load i64, i64* %12, align 8
  %15 = call %struct.eap_hdr* @os_zalloc(i64 %14)
  store %struct.eap_hdr* %15, %struct.eap_hdr** %13, align 8
  %16 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %17 = icmp eq %struct.eap_hdr* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %52

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @EAP_CODE_SUCCESS, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @EAP_CODE_FAILURE, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %29 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %32 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @host_to_be16(i64 %33)
  %35 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %36 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %39 = bitcast %struct.eap_hdr* %38 to i32*
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @wpa_hexdump_key(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %39, i64 %40)
  %42 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @wpabuf_set(%struct.wpabuf* %11, %struct.eap_hdr* %42, i64 %43)
  %45 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %46 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %47 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %46, i32 0, i32 0
  %48 = call %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm* %45, i32* %47, %struct.wpabuf* %11)
  store %struct.wpabuf* %48, %struct.wpabuf** %10, align 8
  %49 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %50 = call i32 @os_free(%struct.eap_hdr* %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %51, %struct.wpabuf** %5, align 8
  br label %52

52:                                               ; preds = %26, %18
  %53 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %53
}

declare dso_local %struct.eap_hdr* @os_zalloc(i64) #1

declare dso_local i32 @host_to_be16(i64) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, %struct.eap_hdr*, i64) #1

declare dso_local %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm*, i32*, %struct.wpabuf*) #1

declare dso_local i32 @os_free(%struct.eap_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
