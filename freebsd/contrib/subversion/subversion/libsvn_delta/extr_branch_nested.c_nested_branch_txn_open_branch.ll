; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_nested.c_nested_branch_txn_open_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_nested.c_nested_branch_txn_open_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32**, i8*, i32, %struct.TYPE_10__*, i32*, i32*)* @nested_branch_txn_open_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nested_branch_txn_open_branch(%struct.TYPE_9__* %0, i32** %1, i8* %2, i32 %3, %struct.TYPE_10__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 @svn_branch__txn_open_branch(i32 %22, i32** %15, i8* %23, i32 %24, %struct.TYPE_10__* %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %7
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @branch_in_rev_or_txn(i32** %16, %struct.TYPE_10__* %33, i32 %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %16, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @svn_branch__get_subtree(i32* %42, i32** %17, i32 %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %15, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @svn_branch__instantiate_elements_r(i32* %49, i32 %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %55

55:                                               ; preds = %32, %7
  %56 = load i32**, i32*** %9, align 8
  %57 = icmp ne i32** %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32*, i32** %15, align 8
  %60 = load i32**, i32*** %9, align 8
  store i32* %59, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %62
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_branch__txn_open_branch(i32, i32**, i8*, i32, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @branch_in_rev_or_txn(i32**, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @svn_branch__get_subtree(i32*, i32**, i32, i32*) #1

declare dso_local i32 @svn_branch__instantiate_elements_r(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
