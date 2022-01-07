; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_depth_filter_editor.c_okay_to_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_depth_filter_editor.c_okay_to_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i64 }
%struct.node_baton = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edit_baton*, %struct.node_baton*, i32)* @okay_to_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @okay_to_edit(%struct.edit_baton* %0, %struct.node_baton* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.edit_baton*, align 8
  %6 = alloca %struct.node_baton*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.edit_baton* %0, %struct.edit_baton** %5, align 8
  store %struct.node_baton* %1, %struct.node_baton** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.node_baton*, %struct.node_baton** %6, align 8
  %10 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %55

15:                                               ; preds = %3
  %16 = load %struct.node_baton*, %struct.node_baton** %6, align 8
  %17 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %20 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = sub nsw i32 %18, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %27 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %53 [
    i32 133, label %29
    i32 131, label %33
    i32 130, label %48
    i32 128, label %52
    i32 132, label %52
    i32 129, label %52
  ]

29:                                               ; preds = %15
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %55

33:                                               ; preds = %15
  %34 = load i32, i32* %8, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @svn_node_file, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 1
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i1 [ false, %36 ], [ %42, %40 ]
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi i1 [ true, %33 ], [ %44, %43 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %55

48:                                               ; preds = %15
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %49, 1
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %55

52:                                               ; preds = %15, %15, %15
  br label %53

53:                                               ; preds = %15, %52
  %54 = call i32 (...) @SVN_ERR_MALFUNCTION_NO_RETURN()
  br label %55

55:                                               ; preds = %13, %29, %45, %48, %53
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @SVN_ERR_MALFUNCTION_NO_RETURN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
