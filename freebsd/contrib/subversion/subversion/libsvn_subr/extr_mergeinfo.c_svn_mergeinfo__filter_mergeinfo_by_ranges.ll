; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo__filter_mergeinfo_by_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo__filter_mergeinfo_by_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_mergeinfo__filter_mergeinfo_by_ranges(i64* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @SVN_IS_VALID_REVNUM(i64 %20)
  %22 = call i32 @SVN_ERR_ASSERT(i32 %21)
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @SVN_IS_VALID_REVNUM(i64 %23)
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp slt i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @SVN_ERR_ASSERT(i32 %29)
  %31 = load i32*, i32** %13, align 8
  %32 = call i64 @apr_hash_make(i32* %31)
  %33 = load i64*, i64** %8, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %7
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = call %struct.TYPE_8__* @svn_rangelist__initialize(i64 %37, i64 %38, i32 %39, i32* %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %16, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32* @apr_hash_first(i32* %42, i64 %43)
  store i32* %44, i32** %15, align 8
  br label %45

45:                                               ; preds = %82, %36
  %46 = load i32*, i32** %15, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %85

48:                                               ; preds = %45
  %49 = load i32*, i32** %15, align 8
  %50 = call i8* @apr_hash_this_key(i32* %49)
  store i8* %50, i8** %17, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call %struct.TYPE_8__* @apr_hash_this_val(i32* %51)
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %18, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %48
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @rangelist_intersect_or_remove(%struct.TYPE_8__** %19, %struct.TYPE_8__* %58, %struct.TYPE_8__* %59, i32 %63, i32 %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %57
  %73 = load i64*, i64** %8, align 8
  %74 = load i64, i64* %73, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i8*, i8** %17, align 8
  %77 = call i32 @apr_pstrdup(i32* %75, i8* %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %79 = call i32 @svn_hash_sets(i64 %74, i32 %77, %struct.TYPE_8__* %78)
  br label %80

80:                                               ; preds = %72, %57
  br label %81

81:                                               ; preds = %80, %48
  br label %82

82:                                               ; preds = %81
  %83 = load i32*, i32** %15, align 8
  %84 = call i32* @apr_hash_next(i32* %83)
  store i32* %84, i32** %15, align 8
  br label %45

85:                                               ; preds = %45
  br label %86

86:                                               ; preds = %85, %7
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %87
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i64 @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_8__* @svn_rangelist__initialize(i64, i64, i32, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i64) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_8__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @rangelist_intersect_or_remove(%struct.TYPE_8__**, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i64, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
