; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, %struct.wpa_tdls_peer*, i32, i64 }
%struct.wpa_tdls_peer = type { i32, i32, %struct.wpa_tdls_peer* }

@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_tdls_remove(%struct.wpa_sm* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_sm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_tdls_peer*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  br label %56

16:                                               ; preds = %10
  %17 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %17, i32 0, i32 1
  %19 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %18, align 8
  store %struct.wpa_tdls_peer* %19, %struct.wpa_tdls_peer** %5, align 8
  br label %20

20:                                               ; preds = %33, %16
  %21 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %22 = icmp ne %struct.wpa_tdls_peer* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %25 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i64 @os_memcmp(i32 %26, i32* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %37

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %35 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %34, i32 0, i32 2
  %36 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %35, align 8
  store %struct.wpa_tdls_peer* %36, %struct.wpa_tdls_peer** %5, align 8
  br label %20

37:                                               ; preds = %31, %20
  %38 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %39 = icmp eq %struct.wpa_tdls_peer* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %42 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %37
  br label %56

46:                                               ; preds = %40
  %47 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %48 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %53 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %54 = load i32, i32* @WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED, align 4
  %55 = call i32 @wpa_tdls_do_teardown(%struct.wpa_sm* %52, %struct.wpa_tdls_peer* %53, i32 %54)
  br label %56

56:                                               ; preds = %15, %45, %51, %46
  ret void
}

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @wpa_tdls_do_teardown(%struct.wpa_sm*, %struct.wpa_tdls_peer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
