; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_svn_repos_begin_report3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_svn_repos_begin_report3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32, i8*, i32, i8*, i32*, i32, i8*, i8*, i64, i32, i8*, i8*, i8*, i32, i32, %struct.TYPE_5__* }

@svn_depth_exclude = common dso_local global i64 0, align 8
@SVN_ERR_REPOS_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Request depth 'exclude' not supported\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_begin_report3(i8** %0, i32 %1, %struct.TYPE_5__* %2, i8* %3, i8* %4, i8* %5, i8* %6, i64 %7, i8* %8, i8* %9, i32* %10, i8* %11, i32 %12, i8* %13, i32 %14, i32* %15) #0 {
  %17 = alloca i32*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca %struct.TYPE_6__*, align 8
  %35 = alloca i8*, align 8
  store i8** %0, i8*** %18, align 8
  store i32 %1, i32* %19, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %20, align 8
  store i8* %3, i8** %21, align 8
  store i8* %4, i8** %22, align 8
  store i8* %5, i8** %23, align 8
  store i8* %6, i8** %24, align 8
  store i64 %7, i64* %25, align 8
  store i8* %8, i8** %26, align 8
  store i8* %9, i8** %27, align 8
  store i32* %10, i32** %28, align 8
  store i8* %11, i8** %29, align 8
  store i32 %12, i32* %30, align 4
  store i8* %13, i8** %31, align 8
  store i32 %14, i32* %32, align 4
  store i32* %15, i32** %33, align 8
  %36 = load i64, i64* %25, align 8
  %37 = load i64, i64* @svn_depth_exclude, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %16
  %40 = load i32, i32* @SVN_ERR_REPOS_BAD_ARGS, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %42 = call i32* @svn_error_create(i32 %40, i32* null, i32 %41)
  store i32* %42, i32** %17, align 8
  br label %137

43:                                               ; preds = %16
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %33, align 8
  %48 = call i32 @svn_fs_get_uuid(i32 %46, i8** %35, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %33, align 8
  %51 = call %struct.TYPE_6__* @apr_palloc(i32* %50, i32 136)
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %34, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 18
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %54, align 8
  %55 = load i8*, i8** %21, align 8
  %56 = load i32*, i32** %33, align 8
  %57 = call i8* @svn_fspath__canonicalize(i8* %55, i32* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 14
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %33, align 8
  %61 = load i8*, i8** %22, align 8
  %62 = call i32 @apr_pstrdup(i32* %60, i8* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 17
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 16
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** %23, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %43
  %71 = load i8*, i8** %23, align 8
  %72 = load i32*, i32** %33, align 8
  %73 = call i8* @svn_fspath__canonicalize(i8* %71, i32* %72)
  br label %81

74:                                               ; preds = %43
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 14
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %22, align 8
  %79 = load i32*, i32** %33, align 8
  %80 = call i8* @svn_fspath__join(i8* %77, i8* %78, i32* %79)
  br label %81

81:                                               ; preds = %74, %70
  %82 = phi i8* [ %73, %70 ], [ %80, %74 ]
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 15
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %24, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 13
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %32, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 12
  store i32 %88, i32* %90, align 8
  %91 = load i64, i64* %25, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 11
  store i64 %91, i64* %93, align 8
  %94 = load i8*, i8** %26, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 10
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** %27, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 9
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %23, align 8
  %101 = icmp ne i8* %100, null
  %102 = zext i1 %101 to i32
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 8
  %105 = load i32*, i32** %28, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 7
  store i32* %105, i32** %107, align 8
  %108 = load i8*, i8** %29, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 6
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* %30, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = load i8*, i8** %31, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load i32*, i32** %33, align 8
  %118 = call i32 @apr_hash_make(i32* %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load i32*, i32** %33, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  store i32* %121, i32** %123, align 8
  %124 = load i32*, i32** %33, align 8
  %125 = call i32 @svn_spillbuf__reader_create(i32 1000, i32 1000000, i32* %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i8*, i8** %35, align 8
  %129 = load i32*, i32** %33, align 8
  %130 = call i32 @svn_string_create(i8* %128, i32* %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %134 = bitcast %struct.TYPE_6__* %133 to i8*
  %135 = load i8**, i8*** %18, align 8
  store i8* %134, i8** %135, align 8
  %136 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %136, i32** %17, align 8
  br label %137

137:                                              ; preds = %81, %39
  %138 = load i32*, i32** %17, align 8
  ret i32* %138
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_get_uuid(i32, i8**, i32*) #1

declare dso_local %struct.TYPE_6__* @apr_palloc(i32*, i32) #1

declare dso_local i8* @svn_fspath__canonicalize(i8*, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @svn_spillbuf__reader_create(i32, i32, i32*) #1

declare dso_local i32 @svn_string_create(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
