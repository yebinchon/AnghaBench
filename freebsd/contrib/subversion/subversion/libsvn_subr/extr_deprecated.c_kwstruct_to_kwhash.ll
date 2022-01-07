; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_kwstruct_to_kwhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_kwstruct_to_kwhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@SVN_KEYWORD_REVISION_LONG = common dso_local global i32 0, align 4
@SVN_KEYWORD_REVISION_MEDIUM = common dso_local global i32 0, align 4
@SVN_KEYWORD_REVISION_SHORT = common dso_local global i32 0, align 4
@SVN_KEYWORD_DATE_LONG = common dso_local global i32 0, align 4
@SVN_KEYWORD_DATE_SHORT = common dso_local global i32 0, align 4
@SVN_KEYWORD_AUTHOR_LONG = common dso_local global i32 0, align 4
@SVN_KEYWORD_AUTHOR_SHORT = common dso_local global i32 0, align 4
@SVN_KEYWORD_URL_LONG = common dso_local global i32 0, align 4
@SVN_KEYWORD_URL_SHORT = common dso_local global i32 0, align 4
@SVN_KEYWORD_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @kwstruct_to_kwhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @kwstruct_to_kwhash(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32* null, i32** %3, align 8
  br label %104

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @apr_hash_make(i32* %11)
  store i32* %12, i32** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %10
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @SVN_KEYWORD_REVISION_LONG, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @svn_hash_sets(i32* %18, i32 %19, i64 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @SVN_KEYWORD_REVISION_MEDIUM, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @svn_hash_sets(i32* %24, i32 %25, i64 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @SVN_KEYWORD_REVISION_SHORT, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @svn_hash_sets(i32* %30, i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %17, %10
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @SVN_KEYWORD_DATE_LONG, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @svn_hash_sets(i32* %42, i32 %43, i64 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @SVN_KEYWORD_DATE_SHORT, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @svn_hash_sets(i32* %48, i32 %49, i64 %52)
  br label %54

54:                                               ; preds = %41, %36
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @SVN_KEYWORD_AUTHOR_LONG, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @svn_hash_sets(i32* %60, i32 %61, i64 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @SVN_KEYWORD_AUTHOR_SHORT, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @svn_hash_sets(i32* %66, i32 %67, i64 %70)
  br label %72

72:                                               ; preds = %59, %54
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @SVN_KEYWORD_URL_LONG, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @svn_hash_sets(i32* %78, i32 %79, i64 %82)
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @SVN_KEYWORD_URL_SHORT, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @svn_hash_sets(i32* %84, i32 %85, i64 %88)
  br label %90

90:                                               ; preds = %77, %72
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @SVN_KEYWORD_ID, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @svn_hash_sets(i32* %96, i32 %97, i64 %100)
  br label %102

102:                                              ; preds = %95, %90
  %103 = load i32*, i32** %6, align 8
  store i32* %103, i32** %3, align 8
  br label %104

104:                                              ; preds = %102, %9
  %105 = load i32*, i32** %3, align 8
  ret i32* %105
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
