; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_dir_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_dir_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.svn_diff_tree_processor_t = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@DIFF_REVNUM_NONEXISTENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @diff_dir_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_dir_added(i8* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32* %3, i32* %4, i8* %5, %struct.svn_diff_tree_processor_t* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.svn_diff_tree_processor_t* %6, %struct.svn_diff_tree_processor_t** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %16, align 8
  %22 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %18, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %29, i32** %9, align 8
  br label %79

30:                                               ; preds = %8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %13, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** %13, align 8
  br label %46

43:                                               ; preds = %38
  %44 = load i32*, i32** %17, align 8
  %45 = call i32* @apr_hash_make(i32* %44)
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32* [ %42, %41 ], [ %45, %43 ]
  store i32* %47, i32** %19, align 8
  br label %51

48:                                               ; preds = %33, %30
  %49 = load i32*, i32** %17, align 8
  %50 = call i32* @apr_hash_make(i32* %49)
  store i32* %50, i32** %19, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  br label %51

51:                                               ; preds = %48, %46
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %19, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = call i32 @svn_prop_diffs(i32** %20, i32* %52, i32* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  br label %66

64:                                               ; preds = %51
  %65 = load i32, i32* @DIFF_REVNUM_NONEXISTENT, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %63, %60 ], [ %65, %64 ]
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %20, align 8
  %72 = load i32*, i32** %19, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @diff_props_changed(i8* %57, i32 %67, i32 %70, i32* %71, i32* %72, i32* %73, i32 %74, %struct.TYPE_7__* %75, i32* %76)
  %78 = call i32* @svn_error_trace(i32 %77)
  store i32* %78, i32** %9, align 8
  br label %79

79:                                               ; preds = %66, %28
  %80 = load i32*, i32** %9, align 8
  ret i32* %80
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @diff_props_changed(i8*, i32, i32, i32*, i32*, i32*, i32, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
