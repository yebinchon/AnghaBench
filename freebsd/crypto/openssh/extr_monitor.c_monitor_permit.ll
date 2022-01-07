; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_monitor.c_monitor_permit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_monitor.c_monitor_permit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_table = type { i32, i32, i32* }

@MON_PERMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_table*, i32, i32)* @monitor_permit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_permit(%struct.mon_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mon_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mon_table* %0, %struct.mon_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %3
  %8 = load %struct.mon_table*, %struct.mon_table** %4, align 8
  %9 = getelementptr inbounds %struct.mon_table, %struct.mon_table* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = load %struct.mon_table*, %struct.mon_table** %4, align 8
  %14 = getelementptr inbounds %struct.mon_table, %struct.mon_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load i32, i32* @MON_PERMIT, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.mon_table*, %struct.mon_table** %4, align 8
  %22 = getelementptr inbounds %struct.mon_table, %struct.mon_table* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @MON_PERMIT, align 4
  br label %30

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = load %struct.mon_table*, %struct.mon_table** %4, align 8
  %33 = getelementptr inbounds %struct.mon_table, %struct.mon_table* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %39

36:                                               ; preds = %12
  %37 = load %struct.mon_table*, %struct.mon_table** %4, align 8
  %38 = getelementptr inbounds %struct.mon_table, %struct.mon_table* %37, i32 1
  store %struct.mon_table* %38, %struct.mon_table** %4, align 8
  br label %7

39:                                               ; preds = %30, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
