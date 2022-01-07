; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.wpabuf = type { i32 }
%struct.eap_pax_data = type { i32 }
%struct.eap_pax_hdr = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"EAP-PAX: Plaintext password not configured\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_pax_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pax_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_pax_data*, align 8
  %8 = alloca %struct.eap_pax_hdr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.eap_pax_data*
  store %struct.eap_pax_data* %12, %struct.eap_pax_data** %7, align 8
  %13 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %14 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %19 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %17, %3
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @FAILURE, align 4
  %28 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %29 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %57

30:                                               ; preds = %17
  %31 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %32 = load i32, i32* @EAP_TYPE_PAX, align 4
  %33 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %34 = call i32* @eap_hdr_validate(i32 %31, i32 %32, %struct.wpabuf* %33, i64* %10)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %10, align 8
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %30
  br label %57

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = bitcast i32* %42 to %struct.eap_pax_hdr*
  store %struct.eap_pax_hdr* %43, %struct.eap_pax_hdr** %8, align 8
  %44 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %8, align 8
  %45 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %57 [
    i32 128, label %47
    i32 129, label %52
  ]

47:                                               ; preds = %41
  %48 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %49 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %50 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %51 = call i32 @eap_pax_process_std_2(%struct.eap_sm* %48, %struct.eap_pax_data* %49, %struct.wpabuf* %50)
  br label %57

52:                                               ; preds = %41
  %53 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %54 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %55 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %56 = call i32 @eap_pax_process_ack(%struct.eap_sm* %53, %struct.eap_pax_data* %54, %struct.wpabuf* %55)
  br label %57

57:                                               ; preds = %24, %40, %41, %52, %47
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @eap_pax_process_std_2(%struct.eap_sm*, %struct.eap_pax_data*, %struct.wpabuf*) #1

declare dso_local i32 @eap_pax_process_ack(%struct.eap_sm*, %struct.eap_pax_data*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
