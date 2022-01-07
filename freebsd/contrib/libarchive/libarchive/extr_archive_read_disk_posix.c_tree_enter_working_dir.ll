; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_enter_working_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_enter_working_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, i32, i32 }

@onWorkingDir = common dso_local global i32 0, align 4
@onInitialDir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*)* @tree_enter_working_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_enter_working_dir(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tree*, %struct.tree** %2, align 8
  %5 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load %struct.tree*, %struct.tree** %2, align 8
  %10 = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @onWorkingDir, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %8
  %16 = load %struct.tree*, %struct.tree** %2, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fchdir(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load i32, i32* @onInitialDir, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.tree*, %struct.tree** %2, align 8
  %26 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @onWorkingDir, align 4
  %30 = load %struct.tree*, %struct.tree** %2, align 8
  %31 = getelementptr inbounds %struct.tree, %struct.tree* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %22, %15
  br label %35

35:                                               ; preds = %34, %8, %1
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @fchdir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
