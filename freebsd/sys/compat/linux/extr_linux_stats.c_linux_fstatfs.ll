; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_linux_fstatfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_linux_fstatfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_fstatfs_args = type { i32, i32 }
%struct.l_statfs = type { i32 }
%struct.statfs = type { i32 }

@M_STATFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_fstatfs(%struct.thread* %0, %struct.linux_fstatfs_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_fstatfs_args*, align 8
  %6 = alloca %struct.l_statfs, align 4
  %7 = alloca %struct.statfs*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_fstatfs_args* %1, %struct.linux_fstatfs_args** %5, align 8
  %9 = load i32, i32* @M_STATFS, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = call %struct.statfs* @malloc(i32 4, i32 %9, i32 %10)
  store %struct.statfs* %11, %struct.statfs** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = load %struct.linux_fstatfs_args*, %struct.linux_fstatfs_args** %5, align 8
  %14 = getelementptr inbounds %struct.linux_fstatfs_args, %struct.linux_fstatfs_args* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.statfs*, %struct.statfs** %7, align 8
  %17 = call i32 @kern_fstatfs(%struct.thread* %12, i32 %15, %struct.statfs* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.statfs*, %struct.statfs** %7, align 8
  %22 = call i32 @bsd_to_linux_statfs(%struct.statfs* %21, %struct.l_statfs* %6)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.statfs*, %struct.statfs** %7, align 8
  %25 = load i32, i32* @M_STATFS, align 4
  %26 = call i32 @free(%struct.statfs* %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %23
  %32 = load %struct.linux_fstatfs_args*, %struct.linux_fstatfs_args** %5, align 8
  %33 = getelementptr inbounds %struct.linux_fstatfs_args, %struct.linux_fstatfs_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @copyout(%struct.l_statfs* %6, i32 %34, i32 4)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %29
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.statfs* @malloc(i32, i32, i32) #1

declare dso_local i32 @kern_fstatfs(%struct.thread*, i32, %struct.statfs*) #1

declare dso_local i32 @bsd_to_linux_statfs(%struct.statfs*, %struct.l_statfs*) #1

declare dso_local i32 @free(%struct.statfs*, i32) #1

declare dso_local i32 @copyout(%struct.l_statfs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
