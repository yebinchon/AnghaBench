; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_waiting_list_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_waiting_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outside_network = type { %struct.waiting_tcp*, %struct.waiting_tcp* }
%struct.waiting_tcp = type { %struct.waiting_tcp* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.outside_network*, %struct.waiting_tcp*)* @waiting_list_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waiting_list_remove(%struct.outside_network* %0, %struct.waiting_tcp* %1) #0 {
  %3 = alloca %struct.outside_network*, align 8
  %4 = alloca %struct.waiting_tcp*, align 8
  %5 = alloca %struct.waiting_tcp*, align 8
  %6 = alloca %struct.waiting_tcp*, align 8
  store %struct.outside_network* %0, %struct.outside_network** %3, align 8
  store %struct.waiting_tcp* %1, %struct.waiting_tcp** %4, align 8
  %7 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %8 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %7, i32 0, i32 1
  %9 = load %struct.waiting_tcp*, %struct.waiting_tcp** %8, align 8
  store %struct.waiting_tcp* %9, %struct.waiting_tcp** %5, align 8
  store %struct.waiting_tcp* null, %struct.waiting_tcp** %6, align 8
  br label %10

10:                                               ; preds = %43, %2
  %11 = load %struct.waiting_tcp*, %struct.waiting_tcp** %5, align 8
  %12 = icmp ne %struct.waiting_tcp* %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %14 = load %struct.waiting_tcp*, %struct.waiting_tcp** %5, align 8
  %15 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %16 = icmp eq %struct.waiting_tcp* %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.waiting_tcp*, %struct.waiting_tcp** %6, align 8
  %19 = icmp ne %struct.waiting_tcp* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %22 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %21, i32 0, i32 0
  %23 = load %struct.waiting_tcp*, %struct.waiting_tcp** %22, align 8
  %24 = load %struct.waiting_tcp*, %struct.waiting_tcp** %6, align 8
  %25 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %24, i32 0, i32 0
  store %struct.waiting_tcp* %23, %struct.waiting_tcp** %25, align 8
  br label %32

26:                                               ; preds = %17
  %27 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %28 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %27, i32 0, i32 0
  %29 = load %struct.waiting_tcp*, %struct.waiting_tcp** %28, align 8
  %30 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %31 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %30, i32 0, i32 1
  store %struct.waiting_tcp* %29, %struct.waiting_tcp** %31, align 8
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %34 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %33, i32 0, i32 0
  %35 = load %struct.waiting_tcp*, %struct.waiting_tcp** %34, align 8
  %36 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %37 = icmp eq %struct.waiting_tcp* %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.waiting_tcp*, %struct.waiting_tcp** %6, align 8
  %40 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %41 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %40, i32 0, i32 0
  store %struct.waiting_tcp* %39, %struct.waiting_tcp** %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  br label %48

43:                                               ; preds = %13
  %44 = load %struct.waiting_tcp*, %struct.waiting_tcp** %5, align 8
  store %struct.waiting_tcp* %44, %struct.waiting_tcp** %6, align 8
  %45 = load %struct.waiting_tcp*, %struct.waiting_tcp** %5, align 8
  %46 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %45, i32 0, i32 0
  %47 = load %struct.waiting_tcp*, %struct.waiting_tcp** %46, align 8
  store %struct.waiting_tcp* %47, %struct.waiting_tcp** %5, align 8
  br label %10

48:                                               ; preds = %42, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
