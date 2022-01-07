; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_dir_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_dir_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.svn_diff_tree_processor_t = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@DIFF_REVNUM_NONEXISTENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_5__*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @diff_dir_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_dir_deleted(i8* %0, %struct.TYPE_5__* %1, i32* %2, i8* %3, %struct.svn_diff_tree_processor_t* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.svn_diff_tree_processor_t* %4, %struct.svn_diff_tree_processor_t** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %12, align 8
  %18 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %14, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %25, i32** %7, align 8
  br label %48

26:                                               ; preds = %6
  %27 = load i32*, i32** %13, align 8
  %28 = call i32* @apr_hash_make(i32* %27)
  store i32* %28, i32** %16, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @svn_prop_diffs(i32** %15, i32* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DIFF_REVNUM_NONEXISTENT, align 4
  %39 = load i32*, i32** %15, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @diff_props_changed(i8* %34, i32 %37, i32 %38, i32* %39, i32* %40, i32* %41, i32 %42, %struct.TYPE_6__* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %47, i32** %7, align 8
  br label %48

48:                                               ; preds = %26, %24
  %49 = load i32*, i32** %7, align 8
  ret i32* %49
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @diff_props_changed(i8*, i32, i32, i32*, i32*, i32*, i32, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
