; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_enter_initial_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_enter_initial_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i32 }

@onInitialDir = common dso_local global i32 0, align 4
@onWorkingDir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*)* @tree_enter_initial_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_enter_initial_dir(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tree*, %struct.tree** %2, align 8
  %5 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @onInitialDir, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.tree*, %struct.tree** %2, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fchdir(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load i32, i32* @onWorkingDir, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.tree*, %struct.tree** %2, align 8
  %21 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @onInitialDir, align 4
  %25 = load %struct.tree*, %struct.tree** %2, align 8
  %26 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %17, %10
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @fchdir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
