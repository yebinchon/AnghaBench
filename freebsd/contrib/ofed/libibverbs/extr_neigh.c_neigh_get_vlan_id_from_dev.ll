; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_neigh_get_vlan_id_from_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_neigh_get_vlan_id_from_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_neigh_handler = type { i32, i32 }
%struct.rtnl_link = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neigh_get_vlan_id_from_dev(%struct.get_neigh_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.get_neigh_handler*, align 8
  %4 = alloca %struct.rtnl_link*, align 8
  %5 = alloca i32, align 4
  store %struct.get_neigh_handler* %0, %struct.get_neigh_handler** %3, align 8
  store i32 65535, i32* %5, align 4
  %6 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %7 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %10 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rtnl_link* @rtnl_link_get(i32 %8, i32 %11)
  store %struct.rtnl_link* %12, %struct.rtnl_link** %4, align 8
  %13 = load %struct.rtnl_link*, %struct.rtnl_link** %4, align 8
  %14 = icmp eq %struct.rtnl_link* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* @errno, align 4
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.rtnl_link*, %struct.rtnl_link** %4, align 8
  %20 = call i64 @rtnl_link_is_vlan(%struct.rtnl_link* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.rtnl_link*, %struct.rtnl_link** %4, align 8
  %24 = call i32 @rtnl_link_vlan_get_id(%struct.rtnl_link* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.rtnl_link*, %struct.rtnl_link** %4, align 8
  %27 = call i32 @rtnl_link_put(%struct.rtnl_link* %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %31, 4095
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  br label %36

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 65535, %35 ]
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %15
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.rtnl_link* @rtnl_link_get(i32, i32) #1

declare dso_local i64 @rtnl_link_is_vlan(%struct.rtnl_link*) #1

declare dso_local i32 @rtnl_link_vlan_get_id(%struct.rtnl_link*) #1

declare dso_local i32 @rtnl_link_put(%struct.rtnl_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
