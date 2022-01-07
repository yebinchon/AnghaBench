; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_current_is_symblic_link_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_current_is_symblic_link_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }
%struct.tree = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@tree_current_is_symblic_link_target.lst = internal global %struct.stat* null, align 8
@tree_current_is_symblic_link_target.st = internal global %struct.stat* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*)* @tree_current_is_symblic_link_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_current_is_symblic_link_target(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %2, align 8
  %3 = load %struct.tree*, %struct.tree** %2, align 8
  %4 = call %struct.stat* @tree_current_lstat(%struct.tree* %3)
  store %struct.stat* %4, %struct.stat** @tree_current_is_symblic_link_target.lst, align 8
  %5 = load %struct.tree*, %struct.tree** %2, align 8
  %6 = call %struct.stat* @tree_current_stat(%struct.tree* %5)
  store %struct.stat* %6, %struct.stat** @tree_current_is_symblic_link_target.st, align 8
  %7 = load %struct.stat*, %struct.stat** @tree_current_is_symblic_link_target.st, align 8
  %8 = icmp ne %struct.stat* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.stat*, %struct.stat** @tree_current_is_symblic_link_target.lst, align 8
  %11 = icmp ne %struct.stat* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load %struct.stat*, %struct.stat** @tree_current_is_symblic_link_target.st, align 8
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.tree*, %struct.tree** %2, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %15, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = load %struct.stat*, %struct.stat** @tree_current_is_symblic_link_target.st, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.stat*, %struct.stat** @tree_current_is_symblic_link_target.lst, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br label %30

30:                                               ; preds = %22, %12, %9, %1
  %31 = phi i1 [ false, %12 ], [ false, %9 ], [ false, %1 ], [ %29, %22 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local %struct.stat* @tree_current_lstat(%struct.tree*) #1

declare dso_local %struct.stat* @tree_current_stat(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
