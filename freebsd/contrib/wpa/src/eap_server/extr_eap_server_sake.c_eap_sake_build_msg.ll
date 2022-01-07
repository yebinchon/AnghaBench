; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_build_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_build_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sake_data = type { i32 }
%struct.eap_sake_hdr = type { i32, i32, i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_SAKE = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"EAP-SAKE: Failed to allocate memory request\00", align 1
@EAP_SAKE_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sake_data*, i32, i64, i32)* @eap_sake_build_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sake_build_msg(%struct.eap_sake_data* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sake_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.eap_sake_hdr*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i64, align 8
  store %struct.eap_sake_data* %0, %struct.eap_sake_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  %14 = add i64 12, %13
  store i64 %14, i64* %12, align 8
  %15 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %16 = load i32, i32* @EAP_TYPE_SAKE, align 4
  %17 = load i64, i64* %12, align 8
  %18 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.wpabuf* @eap_msg_alloc(i32 %15, i32 %16, i64 %17, i32 %18, i32 %19)
  store %struct.wpabuf* %20, %struct.wpabuf** %11, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %22 = icmp eq %struct.wpabuf* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @MSG_ERROR, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %41

26:                                               ; preds = %4
  %27 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %28 = call %struct.eap_sake_hdr* @wpabuf_put(%struct.wpabuf* %27, i32 12)
  store %struct.eap_sake_hdr* %28, %struct.eap_sake_hdr** %10, align 8
  %29 = load i32, i32* @EAP_SAKE_VERSION, align 4
  %30 = load %struct.eap_sake_hdr*, %struct.eap_sake_hdr** %10, align 8
  %31 = getelementptr inbounds %struct.eap_sake_hdr, %struct.eap_sake_hdr* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %33 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.eap_sake_hdr*, %struct.eap_sake_hdr** %10, align 8
  %36 = getelementptr inbounds %struct.eap_sake_hdr, %struct.eap_sake_hdr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.eap_sake_hdr*, %struct.eap_sake_hdr** %10, align 8
  %39 = getelementptr inbounds %struct.eap_sake_hdr, %struct.eap_sake_hdr* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %40, %struct.wpabuf** %5, align 8
  br label %41

41:                                               ; preds = %26, %23
  %42 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %42
}

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.eap_sake_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
