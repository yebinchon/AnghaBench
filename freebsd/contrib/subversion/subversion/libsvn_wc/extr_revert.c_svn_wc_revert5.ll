; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_revert.c_svn_wc_revert5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_revert.c_svn_wc_revert5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@svn_depth_empty = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@SVN_ERR_WC_INVALID_OPERATION_DEPTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_revert5(%struct.TYPE_6__* %0, i8* %1, i64 %2, i32 %3, %struct.TYPE_7__* %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %14, align 8
  store i8* %1, i8** %15, align 8
  store i64 %2, i64* %16, align 8
  store i32 %3, i32* %17, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i8* %8, i8** %22, align 8
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %12
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %36 = load i32*, i32** %25, align 8
  %37 = call i32 @svn_hash_from_cstring_keys(i32** %26, %struct.TYPE_7__* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %15, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i32*, i32** %26, align 8
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %21, align 4
  %49 = load i8*, i8** %22, align 8
  %50 = load i32, i32* %23, align 4
  %51 = load i8*, i8** %24, align 8
  %52 = load i32*, i32** %25, align 8
  %53 = call i32 @revert_changelist(i32 %41, i8* %42, i64 %43, i32 %44, i32* %45, i32 %46, i32 %47, i32 %48, i8* %49, i32 %50, i8* %51, i32* %52)
  %54 = call i32* @svn_error_trace(i32 %53)
  store i32* %54, i32** %13, align 8
  br label %106

55:                                               ; preds = %29, %12
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* @svn_depth_empty, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* @svn_depth_infinity, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59, %55
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %21, align 4
  %73 = load i8*, i8** %22, align 8
  %74 = load i32, i32* %23, align 4
  %75 = load i8*, i8** %24, align 8
  %76 = load i32*, i32** %25, align 8
  %77 = call i32 @revert(i32 %66, i8* %67, i64 %68, i32 %69, i32 %70, i32 %71, i32 %72, i8* %73, i32 %74, i8* %75, i32* %76)
  %78 = call i32* @svn_error_trace(i32 %77)
  store i32* %78, i32** %13, align 8
  br label %106

79:                                               ; preds = %59
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* @svn_depth_files, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* @svn_depth_immediates, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %83, %79
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %15, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i8*, i8** %22, align 8
  %98 = load i32, i32* %23, align 4
  %99 = load i8*, i8** %24, align 8
  %100 = load i32*, i32** %25, align 8
  %101 = call i32 @revert_partial(i32 %90, i8* %91, i64 %92, i32 %93, i32 %94, i32 %95, i32 %96, i8* %97, i32 %98, i8* %99, i32* %100)
  %102 = call i32* @svn_error_trace(i32 %101)
  store i32* %102, i32** %13, align 8
  br label %106

103:                                              ; preds = %83
  %104 = load i32, i32* @SVN_ERR_WC_INVALID_OPERATION_DEPTH, align 4
  %105 = call i32* @svn_error_create(i32 %104, i32* null, i32* null)
  store i32* %105, i32** %13, align 8
  br label %106

106:                                              ; preds = %103, %87, %63, %34
  %107 = load i32*, i32** %13, align 8
  ret i32* %107
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_hash_from_cstring_keys(i32**, %struct.TYPE_7__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @revert_changelist(i32, i8*, i64, i32, i32*, i32, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @revert(i32, i8*, i64, i32, i32, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @revert_partial(i32, i8*, i64, i32, i32, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
