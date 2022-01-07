; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_create_filter_neigh_for_dst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_create_filter_neigh_for_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_neigh = type { i32 }
%struct.nl_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtnl_neigh* (%struct.nl_addr*, i32)* @create_filter_neigh_for_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtnl_neigh* @create_filter_neigh_for_dst(%struct.nl_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.rtnl_neigh*, align 8
  %4 = alloca %struct.nl_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtnl_neigh*, align 8
  store %struct.nl_addr* %0, %struct.nl_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.rtnl_neigh* (...) @rtnl_neigh_alloc()
  store %struct.rtnl_neigh* %7, %struct.rtnl_neigh** %6, align 8
  %8 = load %struct.rtnl_neigh*, %struct.rtnl_neigh** %6, align 8
  %9 = icmp eq %struct.rtnl_neigh* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.rtnl_neigh* null, %struct.rtnl_neigh** %3, align 8
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.rtnl_neigh*, %struct.rtnl_neigh** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @rtnl_neigh_set_ifindex(%struct.rtnl_neigh* %12, i32 %13)
  %15 = load %struct.rtnl_neigh*, %struct.rtnl_neigh** %6, align 8
  %16 = load %struct.nl_addr*, %struct.nl_addr** %4, align 8
  %17 = call i32 @rtnl_neigh_set_dst(%struct.rtnl_neigh* %15, %struct.nl_addr* %16)
  %18 = load %struct.rtnl_neigh*, %struct.rtnl_neigh** %6, align 8
  store %struct.rtnl_neigh* %18, %struct.rtnl_neigh** %3, align 8
  br label %19

19:                                               ; preds = %11, %10
  %20 = load %struct.rtnl_neigh*, %struct.rtnl_neigh** %3, align 8
  ret %struct.rtnl_neigh* %20
}

declare dso_local %struct.rtnl_neigh* @rtnl_neigh_alloc(...) #1

declare dso_local i32 @rtnl_neigh_set_ifindex(%struct.rtnl_neigh*, i32) #1

declare dso_local i32 @rtnl_neigh_set_dst(%struct.rtnl_neigh*, %struct.nl_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
