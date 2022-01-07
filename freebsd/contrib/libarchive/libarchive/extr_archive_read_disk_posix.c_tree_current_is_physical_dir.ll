; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_current_is_physical_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_current_is_physical_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }
%struct.stat = type { i32 }

@hasStat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*)* @tree_current_is_physical_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_current_is_physical_dir(%struct.tree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.stat*, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  %5 = load %struct.tree*, %struct.tree** %3, align 8
  %6 = getelementptr inbounds %struct.tree, %struct.tree* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @hasStat, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.tree*, %struct.tree** %3, align 8
  %13 = call %struct.stat* @tree_current_stat(%struct.tree* %12)
  store %struct.stat* %13, %struct.stat** %4, align 8
  %14 = load %struct.stat*, %struct.stat** %4, align 8
  %15 = icmp eq %struct.stat* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %36

17:                                               ; preds = %11
  %18 = load %struct.stat*, %struct.stat** %4, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @S_ISDIR(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %36

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.tree*, %struct.tree** %3, align 8
  %27 = call %struct.stat* @tree_current_lstat(%struct.tree* %26)
  store %struct.stat* %27, %struct.stat** %4, align 8
  %28 = load %struct.stat*, %struct.stat** %4, align 8
  %29 = icmp eq %struct.stat* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %36

31:                                               ; preds = %25
  %32 = load %struct.stat*, %struct.stat** %4, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @S_ISDIR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %30, %23, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.stat* @tree_current_stat(%struct.tree*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.stat* @tree_current_lstat(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
