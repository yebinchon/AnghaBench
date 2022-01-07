; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_get_full_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_get_full_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32, i32*, i8*, i64, i64, i32*, i32*, i32*)* @get_full_mergeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_full_mergeinfo(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i8* %5, i64 %6, i64 %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %11
  %27 = load i32*, i32** %12, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32*, i32** %16, align 8
  %32 = load i8*, i8** %17, align 8
  %33 = load i32*, i32** %20, align 8
  %34 = load i32*, i32** %21, align 8
  %35 = call i32 @svn_client__get_wc_or_repos_mergeinfo(i32* %27, i32* %28, i32* null, i32 %29, i32 %30, i32* %31, i8* %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  br label %37

37:                                               ; preds = %26, %11
  %38 = load i32*, i32** %13, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %100

40:                                               ; preds = %37
  %41 = load i64, i64* %18, align 8
  %42 = call i64 @SVN_IS_VALID_REVNUM(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i64, i64* %19, align 8
  %46 = call i64 @SVN_IS_VALID_REVNUM(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* %19, align 8
  %51 = icmp sgt i64 %49, %50
  br label %52

52:                                               ; preds = %48, %44, %40
  %53 = phi i1 [ false, %44 ], [ false, %40 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @SVN_ERR_ASSERT(i32 %54)
  %56 = load i8*, i8** %17, align 8
  %57 = load i32*, i32** %20, align 8
  %58 = load i32*, i32** %22, align 8
  %59 = load i32*, i32** %22, align 8
  %60 = call i32 @svn_client__wc_node_get_origin(%struct.TYPE_4__** %23, i8* %56, i32* %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %52
  %65 = load i32*, i32** %21, align 8
  %66 = call i32 @apr_hash_make(i32* %65)
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  br label %99

68:                                               ; preds = %52
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %19, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32*, i32** %21, align 8
  %76 = call i32 @apr_hash_make(i32* %75)
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  br label %98

78:                                               ; preds = %68
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %18, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %18, align 8
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i32*, i32** %13, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %20, align 8
  %95 = load i32*, i32** %21, align 8
  %96 = call i32 @svn_client__get_history_as_mergeinfo(i32* %89, i32* null, %struct.TYPE_4__* %90, i64 %91, i64 %92, i32* %93, i32* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  br label %98

98:                                               ; preds = %88, %74
  br label %99

99:                                               ; preds = %98, %64
  br label %100

100:                                              ; preds = %99, %37
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %101
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__get_wc_or_repos_mergeinfo(i32*, i32*, i32*, i32, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_client__wc_node_get_origin(%struct.TYPE_4__**, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @svn_client__get_history_as_mergeinfo(i32*, i32*, %struct.TYPE_4__*, i64, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
