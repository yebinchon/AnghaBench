; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_raise_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_raise_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@svn_wc_operation_merge = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32*, i32 (i8*, %struct.TYPE_8__*, i32*)*, i8*, i32*)* @raise_tree_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @raise_tree_conflict(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i8* %7, i8* %8, i32 %9, i32 %10, i32* %11, i32 (i8*, %struct.TYPE_8__*, i32*)* %12, i8* %13, i32* %14) #0 {
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32 (i8*, %struct.TYPE_8__*, i32*)*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_9__*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %16, align 8
  store i32 %1, i32* %17, align 4
  store i32 %2, i32* %18, align 4
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32* %11, i32** %27, align 8
  store i32 (i8*, %struct.TYPE_8__*, i32*)* %12, i32 (i8*, %struct.TYPE_8__*, i32*)** %28, align 8
  store i8* %13, i8** %29, align 8
  store i32* %14, i32** %30, align 8
  %35 = load i8*, i8** %22, align 8
  %36 = load i8*, i8** %23, align 8
  %37 = load i8*, i8** %24, align 8
  %38 = load i32, i32* %25, align 4
  %39 = load i32, i32* %20, align 4
  %40 = load i32*, i32** %30, align 8
  %41 = call i32* @svn_wc_conflict_version_create2(i8* %35, i8* %36, i8* %37, i32 %38, i32 %39, i32* %40)
  store i32* %41, i32** %32, align 8
  %42 = load i8*, i8** %22, align 8
  %43 = load i8*, i8** %23, align 8
  %44 = load i8*, i8** %24, align 8
  %45 = load i32, i32* %26, align 4
  %46 = load i32, i32* %21, align 4
  %47 = load i32*, i32** %30, align 8
  %48 = call i32* @svn_wc_conflict_version_create2(i8* %42, i8* %43, i8* %44, i32 %45, i32 %46, i32* %47)
  store i32* %48, i32** %33, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* @svn_wc_operation_merge, align 4
  %52 = load i32*, i32** %32, align 8
  %53 = load i32*, i32** %33, align 8
  %54 = load i32*, i32** %30, align 8
  %55 = call %struct.TYPE_9__* @svn_wc_conflict_description_create_tree2(i8* %49, i32 %50, i32 %51, i32* %52, i32* %53, i32* %54)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %31, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %27, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %64 = load i32*, i32** %30, align 8
  %65 = call i32 @svn_wc__add_tree_conflict(i32* %62, %struct.TYPE_9__* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %28, align 8
  %68 = icmp ne i32 (i8*, %struct.TYPE_8__*, i32*)* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %15
  %70 = load i8*, i8** %16, align 8
  %71 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %72 = load i32*, i32** %30, align 8
  %73 = call %struct.TYPE_8__* @svn_wc_create_notify(i8* %70, i32 %71, i32* %72)
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %34, align 8
  %74 = load i32, i32* %19, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %28, align 8
  %78 = load i8*, i8** %29, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %80 = load i32*, i32** %30, align 8
  %81 = call i32 %77(i8* %78, %struct.TYPE_8__* %79, i32* %80)
  br label %82

82:                                               ; preds = %69, %15
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %83
}

declare dso_local i32* @svn_wc_conflict_version_create2(i8*, i8*, i8*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_wc_conflict_description_create_tree2(i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__add_tree_conflict(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
