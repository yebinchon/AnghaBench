; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_txSuppRsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_txSuppRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 (i32, i32, i32, i32)* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"EAPOL: txSuppRsp\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"EAPOL: txSuppRsp - EAP response data not available\00", align 1
@IEEE802_1X_TYPE_EAP_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_sm*)* @eapol_sm_txSuppRsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_sm_txSuppRsp(%struct.eapol_sm* %0) #0 {
  %2 = alloca %struct.eapol_sm*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  store %struct.eapol_sm* %0, %struct.eapol_sm** %2, align 8
  %4 = load i32, i32* @MSG_DEBUG, align 4
  %5 = call i32 @wpa_printf(i32 %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %7 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.wpabuf* @eap_get_eapRespData(i32 %8)
  store %struct.wpabuf* %9, %struct.wpabuf** %3, align 8
  %10 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %11 = icmp eq %struct.wpabuf* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @MSG_WARNING, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %17 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %16, i32 0, i32 5
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %19, align 8
  %21 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %22 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IEEE802_1X_TYPE_EAP_PACKET, align 4
  %27 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %28 = call i32 @wpabuf_head(%struct.wpabuf* %27)
  %29 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %30 = call i32 @wpabuf_len(%struct.wpabuf* %29)
  %31 = call i32 %20(i32 %25, i32 %26, i32 %28, i32 %30)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %33 = call i32 @wpabuf_free(%struct.wpabuf* %32)
  %34 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %35 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %15
  %39 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %40 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %48

43:                                               ; preds = %15
  %44 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %45 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %50 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %54 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_get_eapRespData(i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
