; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_file_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_file_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.svn_diff_tree_processor_t = type { i32* }

@FALSE = common dso_local global i64 0, align 8
@svn_diff_op_modified = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_7__*, %struct.TYPE_7__*, i8*, i8*, i32*, i32*, i64, %struct.TYPE_8__*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @diff_file_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_file_changed(i8* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i8* %3, i8* %4, i32* %5, i32* %6, i64 %7, %struct.TYPE_8__* %8, i8* %9, %struct.svn_diff_tree_processor_t* %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %13, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i64 %7, i64* %20, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.svn_diff_tree_processor_t* %10, %struct.svn_diff_tree_processor_t** %23, align 8
  store i32* %11, i32** %24, align 8
  %27 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %23, align 8
  %28 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %25, align 8
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %26, align 8
  %31 = load i64, i64* %20, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %12
  %34 = load i8*, i8** %13, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %18, align 8
  %44 = load i32*, i32** %19, align 8
  %45 = load i32, i32* @svn_diff_op_modified, align 4
  %46 = load i64, i64* @FALSE, align 8
  %47 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %48 = load i32*, i32** %25, align 8
  %49 = load i32*, i32** %24, align 8
  %50 = call i32 @diff_content_changed(i64* %26, i8* %34, i8* %35, i8* %36, i32 %39, i32 %42, i32* %43, i32* %44, i32 %45, i64 %46, i32* null, i32 %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %52

52:                                               ; preds = %33, %12
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load i8*, i8** %13, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = load i32*, i32** %19, align 8
  %68 = load i64, i64* %26, align 8
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load i32*, i32** %25, align 8
  %73 = load i32*, i32** %24, align 8
  %74 = call i32 @diff_props_changed(i8* %58, i32 %61, i32 %64, %struct.TYPE_8__* %65, i32* %66, i32* %67, i32 %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %76

76:                                               ; preds = %57, %52
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @diff_content_changed(i64*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32, i64, i32*, i32, i32*, i32*) #1

declare dso_local i32 @diff_props_changed(i8*, i32, i32, %struct.TYPE_8__*, i32*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
