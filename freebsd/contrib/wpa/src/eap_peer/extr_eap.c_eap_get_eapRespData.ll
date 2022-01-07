; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_get_eapRespData.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_get_eapRespData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { %struct.wpabuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @eap_get_eapRespData(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  %5 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %6 = icmp eq %struct.eap_sm* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %9 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %8, i32 0, i32 0
  %10 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %11 = icmp eq %struct.wpabuf* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %20

13:                                               ; preds = %7
  %14 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %15 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %14, i32 0, i32 0
  %16 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %16, %struct.wpabuf** %4, align 8
  %17 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %18 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %17, i32 0, i32 0
  store %struct.wpabuf* null, %struct.wpabuf** %18, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %19, %struct.wpabuf** %2, align 8
  br label %20

20:                                               ; preds = %13, %12
  %21 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
