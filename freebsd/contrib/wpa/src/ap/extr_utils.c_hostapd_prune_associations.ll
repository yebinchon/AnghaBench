; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_utils.c_hostapd_prune_associations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_utils.c_hostapd_prune_associations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, %struct.prune_data*)* }
%struct.prune_data = type { i32*, %struct.hostapd_data* }

@prune_associations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_prune_associations(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.prune_data, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %7 = getelementptr inbounds %struct.prune_data, %struct.prune_data* %5, i32 0, i32 1
  store %struct.hostapd_data* %6, %struct.hostapd_data** %7, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds %struct.prune_data, %struct.prune_data* %5, i32 0, i32 0
  store i32* %8, i32** %9, align 8
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %18 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_4__*, i32, %struct.prune_data*)*, i32 (%struct.TYPE_4__*, i32, %struct.prune_data*)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_4__*, i32, %struct.prune_data*)* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %16
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_4__*, i32, %struct.prune_data*)*, i32 (%struct.TYPE_4__*, i32, %struct.prune_data*)** %31, align 8
  %33 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %34 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* @prune_associations, align 4
  %39 = call i32 %32(%struct.TYPE_4__* %37, i32 %38, %struct.prune_data* %5)
  br label %40

40:                                               ; preds = %25, %16, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
