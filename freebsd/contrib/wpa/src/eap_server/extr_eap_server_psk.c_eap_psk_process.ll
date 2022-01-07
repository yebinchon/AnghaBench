; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.wpabuf = type { i32 }
%struct.eap_psk_data = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"EAP-PSK: Plaintext password not configured\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_psk_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_psk_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_psk_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.eap_psk_data*
  store %struct.eap_psk_data* %11, %struct.eap_psk_data** %7, align 8
  %12 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp eq %struct.TYPE_2__* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %18 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16, %3
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @FAILURE, align 4
  %27 = load %struct.eap_psk_data*, %struct.eap_psk_data** %7, align 8
  %28 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %54

29:                                               ; preds = %16
  %30 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %31 = load i32, i32* @EAP_TYPE_PSK, align 4
  %32 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %33 = call i32* @eap_hdr_validate(i32 %30, i32 %31, %struct.wpabuf* %32, i64* %9)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %29
  br label %54

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @EAP_PSK_FLAGS_GET_T(i32 %42)
  switch i32 %43, label %54 [
    i32 1, label %44
    i32 3, label %49
  ]

44:                                               ; preds = %40
  %45 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %46 = load %struct.eap_psk_data*, %struct.eap_psk_data** %7, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %48 = call i32 @eap_psk_process_2(%struct.eap_sm* %45, %struct.eap_psk_data* %46, %struct.wpabuf* %47)
  br label %54

49:                                               ; preds = %40
  %50 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %51 = load %struct.eap_psk_data*, %struct.eap_psk_data** %7, align 8
  %52 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %53 = call i32 @eap_psk_process_4(%struct.eap_sm* %50, %struct.eap_psk_data* %51, %struct.wpabuf* %52)
  br label %54

54:                                               ; preds = %23, %39, %40, %49, %44
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @EAP_PSK_FLAGS_GET_T(i32) #1

declare dso_local i32 @eap_psk_process_2(%struct.eap_sm*, %struct.eap_psk_data*, %struct.wpabuf*) #1

declare dso_local i32 @eap_psk_process_4(%struct.eap_sm*, %struct.eap_psk_data*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
