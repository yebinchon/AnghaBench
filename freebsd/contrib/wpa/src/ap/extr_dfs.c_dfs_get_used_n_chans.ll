; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_get_used_n_chans.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_get_used_n_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i32*)* @dfs_get_used_n_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_get_used_n_chans(%struct.hostapd_iface* %0, i32* %1) #0 {
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %8 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 2, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %13, %2
  %22 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %23 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %30 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28, %21
  %36 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %37 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @hostapd_get_oper_chwidth(%struct.TYPE_2__* %38)
  switch i32 %39, label %45 [
    i32 128, label %40
    i32 130, label %41
    i32 131, label %42
    i32 129, label %43
  ]

40:                                               ; preds = %35
  br label %46

41:                                               ; preds = %35
  store i32 4, i32* %5, align 4
  br label %46

42:                                               ; preds = %35
  store i32 8, i32* %5, align 4
  br label %46

43:                                               ; preds = %35
  store i32 4, i32* %5, align 4
  %44 = load i32*, i32** %4, align 8
  store i32 4, i32* %44, align 4
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %43, %42, %41, %40
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @hostapd_get_oper_chwidth(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
