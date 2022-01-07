; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_find_prison.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_find_prison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32, %struct.prison* }
%struct.linux_prison = type { i32 }

@prison0 = common dso_local global %struct.prison zeroinitializer, align 8
@lprison0 = common dso_local global %struct.linux_prison zeroinitializer, align 4
@linux_osd_jail_slot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.linux_prison* (%struct.prison*, %struct.prison**)* @linux_find_prison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.linux_prison* @linux_find_prison(%struct.prison* %0, %struct.prison** %1) #0 {
  %3 = alloca %struct.prison*, align 8
  %4 = alloca %struct.prison**, align 8
  %5 = alloca %struct.prison*, align 8
  %6 = alloca %struct.linux_prison*, align 8
  store %struct.prison* %0, %struct.prison** %3, align 8
  store %struct.prison** %1, %struct.prison*** %4, align 8
  %7 = load %struct.prison*, %struct.prison** %3, align 8
  store %struct.prison* %7, %struct.prison** %5, align 8
  br label %8

8:                                                ; preds = %28, %2
  %9 = load %struct.prison*, %struct.prison** %5, align 8
  %10 = getelementptr inbounds %struct.prison, %struct.prison* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.prison*, %struct.prison** %5, align 8
  %13 = icmp eq %struct.prison* %12, @prison0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %19

15:                                               ; preds = %8
  %16 = load %struct.prison*, %struct.prison** %5, align 8
  %17 = load i32, i32* @linux_osd_jail_slot, align 4
  %18 = call %struct.linux_prison* @osd_jail_get(%struct.prison* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi %struct.linux_prison* [ @lprison0, %14 ], [ %18, %15 ]
  store %struct.linux_prison* %20, %struct.linux_prison** %6, align 8
  %21 = load %struct.linux_prison*, %struct.linux_prison** %6, align 8
  %22 = icmp ne %struct.linux_prison* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %32

24:                                               ; preds = %19
  %25 = load %struct.prison*, %struct.prison** %5, align 8
  %26 = getelementptr inbounds %struct.prison, %struct.prison* %25, i32 0, i32 0
  %27 = call i32 @mtx_unlock(i32* %26)
  br label %28

28:                                               ; preds = %24
  %29 = load %struct.prison*, %struct.prison** %5, align 8
  %30 = getelementptr inbounds %struct.prison, %struct.prison* %29, i32 0, i32 1
  %31 = load %struct.prison*, %struct.prison** %30, align 8
  store %struct.prison* %31, %struct.prison** %5, align 8
  br label %8

32:                                               ; preds = %23
  %33 = load %struct.prison*, %struct.prison** %5, align 8
  %34 = load %struct.prison**, %struct.prison*** %4, align 8
  store %struct.prison* %33, %struct.prison** %34, align 8
  %35 = load %struct.linux_prison*, %struct.linux_prison** %6, align 8
  ret %struct.linux_prison* %35
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.linux_prison* @osd_jail_get(%struct.prison*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
