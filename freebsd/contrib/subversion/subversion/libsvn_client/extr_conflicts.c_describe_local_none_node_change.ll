; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_local_none_node_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_local_none_node_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [70 x i8] c"An item containing uncommitted changes was found in the working copy.\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"An item which already occupies this path was found in the working copy.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"A deleted item was found in the working copy.\00", align 1
@svn_wc_operation_update = common dso_local global i32 0, align 4
@svn_wc_operation_switch = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"No such file or directory was found in the working copy.\00", align 1
@svn_wc_operation_merge = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [144 x i8] c"No such file or directory was found in the merge target working copy.\0AThe item may have been deleted or moved away in the repository's history.\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"An unversioned item was found in the working copy.\00", align 1
@.str.6 = private unnamed_addr constant [98 x i8] c"An item scheduled to be added to the repository in the next commit was found in the working copy.\00", align 1
@.str.7 = private unnamed_addr constant [89 x i8] c"The item in the working copy had been moved away at the time this conflict was recorded.\00", align 1
@.str.8 = private unnamed_addr constant [88 x i8] c"An item had been moved here in the working copy at the time this conflict was recorded.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32*, i32*)* @describe_local_none_node_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @describe_local_none_node_change(i8** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @svn_client_conflict_get_local_change(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @svn_client_conflict_get_operation(i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %57 [
    i32 134, label %16
    i32 130, label %19
    i32 135, label %22
    i32 133, label %25
    i32 128, label %45
    i32 136, label %48
    i32 129, label %48
    i32 132, label %51
    i32 131, label %54
  ]

16:                                               ; preds = %4
  %17 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %18 = load i8**, i8*** %5, align 8
  store i8* %17, i8** %18, align 8
  br label %57

19:                                               ; preds = %4
  %20 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8**, i8*** %5, align 8
  store i8* %20, i8** %21, align 8
  br label %57

22:                                               ; preds = %4
  %23 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i8**, i8*** %5, align 8
  store i8* %23, i8** %24, align 8
  br label %57

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @svn_wc_operation_update, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @svn_wc_operation_switch, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25
  %34 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i8**, i8*** %5, align 8
  store i8* %34, i8** %35, align 8
  br label %44

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @svn_wc_operation_merge, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call i8* @_(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i8**, i8*** %5, align 8
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %33
  br label %57

45:                                               ; preds = %4
  %46 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i8**, i8*** %5, align 8
  store i8* %46, i8** %47, align 8
  br label %57

48:                                               ; preds = %4, %4
  %49 = call i8* @_(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.6, i64 0, i64 0))
  %50 = load i8**, i8*** %5, align 8
  store i8* %49, i8** %50, align 8
  br label %57

51:                                               ; preds = %4
  %52 = call i8* @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %53 = load i8**, i8*** %5, align 8
  store i8* %52, i8** %53, align 8
  br label %57

54:                                               ; preds = %4
  %55 = call i8* @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.8, i64 0, i64 0))
  %56 = load i8**, i8*** %5, align 8
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %4, %54, %51, %48, %45, %44, %22, %19, %16
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %58
}

declare dso_local i32 @svn_client_conflict_get_local_change(i32*) #1

declare dso_local i32 @svn_client_conflict_get_operation(i32*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
