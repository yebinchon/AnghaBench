; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_get_neigh_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_get_neigh_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_addr = type { i32 }
%struct.get_neigh_handler = type { i32, i32, i32 }
%struct.rtnl_neigh = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nl_addr* (%struct.get_neigh_handler*)* @get_neigh_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nl_addr* @get_neigh_mac(%struct.get_neigh_handler* %0) #0 {
  %2 = alloca %struct.nl_addr*, align 8
  %3 = alloca %struct.get_neigh_handler*, align 8
  %4 = alloca %struct.rtnl_neigh*, align 8
  %5 = alloca %struct.nl_addr*, align 8
  store %struct.get_neigh_handler* %0, %struct.get_neigh_handler** %3, align 8
  store %struct.nl_addr* null, %struct.nl_addr** %5, align 8
  %6 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %7 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %10 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %13 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.rtnl_neigh* @rtnl_neigh_get(i32 %8, i32 %11, i32 %14)
  store %struct.rtnl_neigh* %15, %struct.rtnl_neigh** %4, align 8
  %16 = load %struct.rtnl_neigh*, %struct.rtnl_neigh** %4, align 8
  %17 = icmp eq %struct.rtnl_neigh* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.nl_addr* null, %struct.nl_addr** %2, align 8
  br label %31

19:                                               ; preds = %1
  %20 = load %struct.rtnl_neigh*, %struct.rtnl_neigh** %4, align 8
  %21 = call %struct.nl_addr* @rtnl_neigh_get_lladdr(%struct.rtnl_neigh* %20)
  store %struct.nl_addr* %21, %struct.nl_addr** %5, align 8
  %22 = load %struct.nl_addr*, %struct.nl_addr** %5, align 8
  %23 = icmp ne %struct.nl_addr* null, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.nl_addr*, %struct.nl_addr** %5, align 8
  %26 = call %struct.nl_addr* @nl_addr_clone(%struct.nl_addr* %25)
  store %struct.nl_addr* %26, %struct.nl_addr** %5, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.rtnl_neigh*, %struct.rtnl_neigh** %4, align 8
  %29 = call i32 @rtnl_neigh_put(%struct.rtnl_neigh* %28)
  %30 = load %struct.nl_addr*, %struct.nl_addr** %5, align 8
  store %struct.nl_addr* %30, %struct.nl_addr** %2, align 8
  br label %31

31:                                               ; preds = %27, %18
  %32 = load %struct.nl_addr*, %struct.nl_addr** %2, align 8
  ret %struct.nl_addr* %32
}

declare dso_local %struct.rtnl_neigh* @rtnl_neigh_get(i32, i32, i32) #1

declare dso_local %struct.nl_addr* @rtnl_neigh_get_lladdr(%struct.rtnl_neigh*) #1

declare dso_local %struct.nl_addr* @nl_addr_clone(%struct.nl_addr*) #1

declare dso_local i32 @rtnl_neigh_put(%struct.rtnl_neigh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
