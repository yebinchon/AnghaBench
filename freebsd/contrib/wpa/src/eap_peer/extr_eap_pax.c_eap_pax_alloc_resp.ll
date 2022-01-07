; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pax.c_eap_pax_alloc_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pax.c_eap_pax_alloc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_pax_hdr = type { i32, i32, i32, i64, i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PAX = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_pax_hdr*, i32, i32, i64)* @eap_pax_alloc_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_pax_alloc_resp(%struct.eap_pax_hdr* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_pax_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.eap_pax_hdr*, align 8
  store %struct.eap_pax_hdr* %0, %struct.eap_pax_hdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %13 = load i32, i32* @EAP_TYPE_PAX, align 4
  %14 = load i64, i64* %9, align 8
  %15 = add i64 32, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.wpabuf* @eap_msg_alloc(i32 %12, i32 %13, i32 %16, i32 %17, i32 %18)
  store %struct.wpabuf* %19, %struct.wpabuf** %10, align 8
  %20 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %21 = icmp eq %struct.wpabuf* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %47

23:                                               ; preds = %4
  %24 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %25 = call %struct.eap_pax_hdr* @wpabuf_put(%struct.wpabuf* %24, i32 32)
  store %struct.eap_pax_hdr* %25, %struct.eap_pax_hdr** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %11, align 8
  %28 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %11, align 8
  %30 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %11, align 8
  %35 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %11, align 8
  %40 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %6, align 8
  %42 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %11, align 8
  %45 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %46, %struct.wpabuf** %5, align 8
  br label %47

47:                                               ; preds = %23, %22
  %48 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %48
}

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local %struct.eap_pax_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
