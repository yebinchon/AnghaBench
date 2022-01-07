; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff.c_svn_diff_diff_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff.c_svn_diff_diff_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i8*)*, i32 (i8*, i32*, i32*, i32*, i32)* }

@svn_diff_datasource_original = common dso_local global i32 0, align 4
@svn_diff_datasource_modified = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_diff_diff_2(i32** %0, i8* %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i32*], align 16
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32*], align 16
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %20 = load i32, i32* @svn_diff_datasource_original, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @svn_diff_datasource_modified, align 4
  store i32 %22, i32* %21, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32**, i32*** %5, align 8
  store i32* null, i32** %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @svn_pool_create(i32* %24)
  store i32* %25, i32** %15, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @svn_pool_create(i32* %26)
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = call i32 @svn_diff__tree_create(i32** %9, i32* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32 (i8*, i32*, i32*, i32*, i32)*, i32 (i8*, i32*, i32*, i32*, i32)** %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %35 = call i32 %32(i8* %33, i32* %17, i32* %18, i32* %34, i32 2)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %38 = load i32*, i32** %9, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = load i32, i32* @svn_diff_datasource_original, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @svn_diff__get_tokens(i32** %37, i32* %38, i8* %39, %struct.TYPE_4__* %40, i32 %41, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  %47 = load i32*, i32** %9, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = load i32, i32* @svn_diff_datasource_modified, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @svn_diff__get_tokens(i32** %46, i32* %47, i8* %48, %struct.TYPE_4__* %49, i32 %50, i32 %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @svn_diff__get_node_count(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (i8*)*, i32 (i8*)** %58, align 8
  %60 = icmp ne i32 (i8*)* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (i8*)*, i32 (i8*)** %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 %64(i8* %65)
  br label %67

67:                                               ; preds = %61, %4
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 @svn_pool_destroy(i32* %68)
  %70 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %71 = load i32*, i32** %70, align 16
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = call i32* @svn_diff__get_token_counts(i32* %71, i32 %72, i32* %73)
  %75 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  store i32* %74, i32** %75, align 16
  %76 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** %15, align 8
  %80 = call i32* @svn_diff__get_token_counts(i32* %77, i32 %78, i32* %79)
  %81 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 1
  store i32* %80, i32** %81, align 8
  %82 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %83 = load i32*, i32** %82, align 16
  %84 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  %87 = load i32*, i32** %86, align 16
  %88 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = call i32* @svn_diff__lcs(i32* %83, i32* %85, i32* %87, i32* %89, i32 %90, i32 %91, i32 %92, i32* %93)
  store i32* %94, i32** %14, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* @TRUE, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = call i32* @svn_diff__diff(i32* %95, i32 1, i32 1, i32 %96, i32* %97)
  %99 = load i32**, i32*** %5, align 8
  store i32* %98, i32** %99, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @svn_pool_destroy(i32* %100)
  %102 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %102
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_diff__tree_create(i32**, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_diff__get_tokens(i32**, i32*, i8*, %struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @svn_diff__get_node_count(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_diff__get_token_counts(i32*, i32, i32*) #1

declare dso_local i32* @svn_diff__lcs(i32*, i32*, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_diff__diff(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
