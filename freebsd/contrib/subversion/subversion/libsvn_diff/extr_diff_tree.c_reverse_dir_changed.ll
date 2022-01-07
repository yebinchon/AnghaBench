; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_reverse_dir_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_reverse_dir_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_diff_tree_processor_t = type { %struct.reverse_tree_baton_t* }
%struct.reverse_tree_baton_t = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i8*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_2__*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @reverse_dir_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @reverse_dir_changed(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i8* %6, %struct.svn_diff_tree_processor_t* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.reverse_tree_baton_t*, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.svn_diff_tree_processor_t* %7, %struct.svn_diff_tree_processor_t** %17, align 8
  store i32* %8, i32** %18, align 8
  %21 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %17, align 8
  %22 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %21, i32 0, i32 0
  %23 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %22, align 8
  store %struct.reverse_tree_baton_t* %23, %struct.reverse_tree_baton_t** %19, align 8
  store i32* null, i32** %20, align 8
  %24 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %19, align 8
  %25 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %9
  %29 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %19, align 8
  %30 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = call i8* @svn_relpath_join(i64 %31, i8* %32, i32* %33)
  store i8* %34, i8** %10, align 8
  br label %35

35:                                               ; preds = %28, %9
  %36 = load i32*, i32** %15, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32*, i32** %13, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %14, align 8
  %43 = icmp ne i32* %42, null
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %38 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @SVN_ERR_ASSERT(i32 %46)
  %48 = load i32*, i32** %13, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %18, align 8
  %51 = call i32 @svn_prop_diffs(i32** %20, i32* %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %53

53:                                               ; preds = %44, %35
  %54 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %19, align 8
  %55 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (i8*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_2__*, i32*)*, i32 (i8*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_2__*, i32*)** %57, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32*, i32** %20, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %19, align 8
  %67 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32*, i32** %18, align 8
  %70 = call i32 %58(i8* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64, i8* %65, %struct.TYPE_2__* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %72
}

declare dso_local i8* @svn_relpath_join(i64, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
