; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_current_lstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_current_lstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.tree = type { i32, %struct.stat }

@hasLstat = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stat* (%struct.tree*)* @tree_current_lstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stat* @tree_current_lstat(%struct.tree* %0) #0 {
  %2 = alloca %struct.stat*, align 8
  %3 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  %4 = load %struct.tree*, %struct.tree** %3, align 8
  %5 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @hasLstat, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %1
  %11 = load %struct.tree*, %struct.tree** %3, align 8
  %12 = call i64 @tree_enter_working_dir(%struct.tree* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store %struct.stat* null, %struct.stat** %2, align 8
  br label %32

15:                                               ; preds = %10
  %16 = load %struct.tree*, %struct.tree** %3, align 8
  %17 = call i32 @tree_current_access_path(%struct.tree* %16)
  %18 = load %struct.tree*, %struct.tree** %3, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 1
  %20 = call i64 @lstat(i32 %17, %struct.stat* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store %struct.stat* null, %struct.stat** %2, align 8
  br label %32

23:                                               ; preds = %15
  %24 = load i32, i32* @hasLstat, align 4
  %25 = load %struct.tree*, %struct.tree** %3, align 8
  %26 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.tree*, %struct.tree** %3, align 8
  %31 = getelementptr inbounds %struct.tree, %struct.tree* %30, i32 0, i32 1
  store %struct.stat* %31, %struct.stat** %2, align 8
  br label %32

32:                                               ; preds = %29, %22, %14
  %33 = load %struct.stat*, %struct.stat** %2, align 8
  ret %struct.stat* %33
}

declare dso_local i64 @tree_enter_working_dir(%struct.tree*) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @tree_current_access_path(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
