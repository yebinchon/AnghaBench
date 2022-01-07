; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_tx_canned_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_tx_canned_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_state_machine = type { i32, i32, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32*, i32)* }
%struct.eap_hdr = type { i64, i32, i32 }

@EAP_CODE_SUCCESS = common dso_local global i32 0, align 4
@EAP_CODE_FAILURE = common dso_local global i32 0, align 4
@EAPOL_LOGGER_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Sending canned EAP packet %s (identifier %d)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"FAILURE\00", align 1
@IEEE802_1X_TYPE_EAP_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_state_machine*, i32)* @eapol_auth_tx_canned_eap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_auth_tx_canned_eap(%struct.eapol_state_machine* %0, i32 %1) #0 {
  %3 = alloca %struct.eapol_state_machine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_hdr, align 8
  store %struct.eapol_state_machine* %0, %struct.eapol_state_machine** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @os_memset(%struct.eap_hdr* %5, i32 0, i32 16)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EAP_CODE_SUCCESS, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EAP_CODE_FAILURE, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %5, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %3, align 8
  %17 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %5, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = call i32 @host_to_be16(i32 16)
  %22 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %5, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %3, align 8
  %24 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %3, align 8
  %27 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EAPOL_LOGGER_DEBUG, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %34 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @eapol_auth_vlogger(%struct.TYPE_6__* %25, i32 %28, i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %33, i64 %35)
  %37 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %3, align 8
  %38 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32*, i32)** %41, align 8
  %43 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %3, align 8
  %44 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %3, align 8
  %50 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IEEE802_1X_TYPE_EAP_PACKET, align 4
  %53 = bitcast %struct.eap_hdr* %5 to i32*
  %54 = call i32 %42(i32 %48, i32 %51, i32 %52, i32* %53, i32 16)
  %55 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %3, align 8
  %56 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  ret void
}

declare dso_local i32 @os_memset(%struct.eap_hdr*, i32, i32) #1

declare dso_local i32 @host_to_be16(i32) #1

declare dso_local i32 @eapol_auth_vlogger(%struct.TYPE_6__*, i32, i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
