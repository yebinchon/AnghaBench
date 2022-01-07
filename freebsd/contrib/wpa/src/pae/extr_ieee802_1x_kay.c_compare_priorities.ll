; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_compare_priorities.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_compare_priorities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_kay_peer = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer*)* @compare_priorities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_priorities(%struct.ieee802_1x_kay_peer* %0, %struct.ieee802_1x_kay_peer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802_1x_kay_peer*, align 8
  %5 = alloca %struct.ieee802_1x_kay_peer*, align 8
  store %struct.ieee802_1x_kay_peer* %0, %struct.ieee802_1x_kay_peer** %4, align 8
  store %struct.ieee802_1x_kay_peer* %1, %struct.ieee802_1x_kay_peer** %5, align 8
  %6 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %4, align 8
  %7 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %5, align 8
  %10 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %5, align 8
  %16 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %4, align 8
  %19 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %34

23:                                               ; preds = %14
  %24 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %4, align 8
  %25 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %5, align 8
  %29 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @os_memcmp(i32 %27, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %22, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @os_memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
