; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_send_eap_request_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_send_eap_request_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32 }
%struct.ieee802_1x_hdr = type { i8*, i32, i32 }
%struct.eap_hdr = type { i32, i8*, i32 }

@EAPOL_VERSION = common dso_local global i32 0, align 4
@IEEE802_1X_TYPE_EAP_PACKET = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@EAP_TYPE_IDENTITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Sending fake EAP-Request-Identity\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @send_eap_request_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_eap_request_identity(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca [100 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee802_1x_hdr*, align 8
  %9 = alloca %struct.eap_hdr*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %11, %struct.wpa_supplicant** %5, align 8
  %12 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 0
  %13 = bitcast i32* %12 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %13, %struct.ieee802_1x_hdr** %8, align 8
  %14 = load i32, i32* @EAPOL_VERSION, align 4
  %15 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %16 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @IEEE802_1X_TYPE_EAP_PACKET, align 4
  %18 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %19 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = call i8* @htons(i32 5)
  %21 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %22 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %24 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %23, i64 1
  %25 = bitcast %struct.ieee802_1x_hdr* %24 to %struct.eap_hdr*
  store %struct.eap_hdr* %25, %struct.eap_hdr** %9, align 8
  %26 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %27 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %28 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %30 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %29, i32 0, i32 0
  %31 = call i64 @os_get_random(i32* %30, i32 4)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = call i32 (...) @os_random()
  %35 = and i32 %34, 255
  %36 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %37 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %33, %2
  %39 = call i8* @htons(i32 5)
  %40 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %41 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %43 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %42, i64 1
  %44 = bitcast %struct.eap_hdr* %43 to i32*
  store i32* %44, i32** %7, align 8
  %45 = load i32, i32* @EAP_TYPE_IDENTITY, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 0
  %55 = call i32 @eapol_sm_rx_eapol(i32 %50, i32 %53, i32* %54, i32 21)
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @os_get_random(i32*, i32) #1

declare dso_local i32 @os_random(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @eapol_sm_rx_eapol(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
