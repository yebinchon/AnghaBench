; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibss_rsn = type { i64, %struct.ibss_rsn_peer* }
%struct.ibss_rsn_peer = type { %struct.ibss_rsn_peer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibss_rsn_deinit(%struct.ibss_rsn* %0) #0 {
  %2 = alloca %struct.ibss_rsn*, align 8
  %3 = alloca %struct.ibss_rsn_peer*, align 8
  %4 = alloca %struct.ibss_rsn_peer*, align 8
  store %struct.ibss_rsn* %0, %struct.ibss_rsn** %2, align 8
  %5 = load %struct.ibss_rsn*, %struct.ibss_rsn** %2, align 8
  %6 = icmp eq %struct.ibss_rsn* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %35

8:                                                ; preds = %1
  %9 = load %struct.ibss_rsn*, %struct.ibss_rsn** %2, align 8
  %10 = getelementptr inbounds %struct.ibss_rsn, %struct.ibss_rsn* %9, i32 0, i32 1
  %11 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %10, align 8
  store %struct.ibss_rsn_peer* %11, %struct.ibss_rsn_peer** %3, align 8
  br label %12

12:                                               ; preds = %15, %8
  %13 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %3, align 8
  %14 = icmp ne %struct.ibss_rsn_peer* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %3, align 8
  store %struct.ibss_rsn_peer* %16, %struct.ibss_rsn_peer** %4, align 8
  %17 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %3, align 8
  %18 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %17, i32 0, i32 0
  %19 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %18, align 8
  store %struct.ibss_rsn_peer* %19, %struct.ibss_rsn_peer** %3, align 8
  %20 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %4, align 8
  %21 = call i32 @ibss_rsn_free(%struct.ibss_rsn_peer* %20)
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.ibss_rsn*, %struct.ibss_rsn** %2, align 8
  %24 = getelementptr inbounds %struct.ibss_rsn, %struct.ibss_rsn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.ibss_rsn*, %struct.ibss_rsn** %2, align 8
  %29 = getelementptr inbounds %struct.ibss_rsn, %struct.ibss_rsn* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wpa_deinit(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.ibss_rsn*, %struct.ibss_rsn** %2, align 8
  %34 = call i32 @os_free(%struct.ibss_rsn* %33)
  br label %35

35:                                               ; preds = %32, %7
  ret void
}

declare dso_local i32 @ibss_rsn_free(%struct.ibss_rsn_peer*) #1

declare dso_local i32 @wpa_deinit(i64) #1

declare dso_local i32 @os_free(%struct.ibss_rsn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
