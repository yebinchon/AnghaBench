; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_delete_subtree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_delete_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i32 }

@RESTRUCTURE_DELETE = common dso_local global i64 0, align 8
@RESTRUCTURE_ADD = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32)* @delete_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @delete_subtree(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @apr_hash_pool_get(i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.TYPE_5__* @svn_hash_gets(i32* %16, i8* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @VERIFY(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RESTRUCTURE_ADD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @svn_hash_sets(i32* %40, i8* %41, %struct.TYPE_5__* null)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  br label %47

43:                                               ; preds = %34, %21
  %44 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %69

48:                                               ; preds = %3
  %49 = load i32*, i32** %7, align 8
  %50 = call %struct.TYPE_5__* @apr_pcalloc(i32* %49, i32 32)
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %9, align 8
  %51 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* @TRUE, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i8* @apr_pstrdup(i32* %64, i8* %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = call i32 @svn_hash_sets(i32* %63, i8* %66, %struct.TYPE_5__* %67)
  br label %69

69:                                               ; preds = %48, %47
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32* @apr_hash_first(i32* %70, i32* %71)
  store i32* %72, i32** %10, align 8
  br label %73

73:                                               ; preds = %95, %69
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load i32*, i32** %10, align 8
  %78 = call i8* @apr_hash_this_key(i32* %77)
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = call i8* @svn_relpath_skip_ancestor(i8* %79, i8* %80)
  store i8* %81, i8** %12, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %76
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32*, i32** %4, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @svn_hash_sets(i32* %91, i8* %92, %struct.TYPE_5__* null)
  br label %94

94:                                               ; preds = %90, %84, %76
  br label %95

95:                                               ; preds = %94
  %96 = load i32*, i32** %10, align 8
  %97 = call i32* @apr_hash_next(i32* %96)
  store i32* %97, i32** %10, align 8
  br label %73

98:                                               ; preds = %73
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %99
}

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local %struct.TYPE_5__* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
