; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_check_mergeinfo_normalization.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_check_mergeinfo_normalization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extract_mergeinfo_paths_baton = type { i8*, i8*, i32, i32, i32*, i32*, i32*, i32 }
%struct.verify_mergeinfo_normalization_baton = type { i8*, i8*, i32, i32, i32*, i32*, i32*, i32 }
%struct.filter_mergeinfo_paths_baton = type { i8*, i8*, i32, i32, i32*, i32*, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@extract_mergeinfo_paths = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@filter_mergeinfo_paths = common dso_local global i32 0, align 4
@verify_mergeinfo_normalization = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i8*, i32*)* @check_mergeinfo_normalization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_mergeinfo_normalization(i8* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.extract_mergeinfo_paths_baton, align 8
  %17 = alloca %struct.verify_mergeinfo_normalization_baton, align 8
  %18 = alloca %struct.filter_mergeinfo_paths_baton, align 8
  %19 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @svn_mergeinfo_parse(i32** %13, i8* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %12, align 8
  %25 = call i8* @apr_hash_make(i32* %24)
  %26 = bitcast i8* %25 to i32*
  %27 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %16, i32 0, i32 6
  store i32* %26, i32** %27, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %16, i32 0, i32 7
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %16, i32 0, i32 3
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @svn_membuf__create(i32* %30, i32 0, i32* %31)
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* @extract_mergeinfo_paths, align 4
  %35 = bitcast %struct.extract_mergeinfo_paths_baton* %16 to %struct.verify_mergeinfo_normalization_baton*
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @svn_iter_apr_hash(i32* null, i32* %33, i32 %34, %struct.verify_mergeinfo_normalization_baton* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %16, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %15, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %70

43:                                               ; preds = %6
  %44 = load i32*, i32** %12, align 8
  %45 = call i8* @apr_hash_make(i32* %44)
  %46 = bitcast i8* %45 to i32*
  %47 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %16, i32 0, i32 6
  store i32* %46, i32** %47, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %16, i32 0, i32 7
  store i32 %48, i32* %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @svn_mergeinfo_parse(i32** %19, i8* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %19, align 8
  %55 = load i32, i32* @extract_mergeinfo_paths, align 4
  %56 = bitcast %struct.extract_mergeinfo_paths_baton* %16 to %struct.verify_mergeinfo_normalization_baton*
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @svn_iter_apr_hash(i32* null, i32* %54, i32 %55, %struct.verify_mergeinfo_normalization_baton* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %16, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = getelementptr inbounds %struct.filter_mergeinfo_paths_baton, %struct.filter_mergeinfo_paths_baton* %18, i32 0, i32 5
  store i32* %62, i32** %63, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = load i32, i32* @filter_mergeinfo_paths, align 4
  %66 = bitcast %struct.filter_mergeinfo_paths_baton* %18 to %struct.verify_mergeinfo_normalization_baton*
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @svn_iter_apr_hash(i32* null, i32* %64, i32 %65, %struct.verify_mergeinfo_normalization_baton* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %74

70:                                               ; preds = %6
  %71 = load i32*, i32** %12, align 8
  %72 = call i8* @apr_hash_make(i32* %71)
  %73 = bitcast i8* %72 to i32*
  store i32* %73, i32** %14, align 8
  br label %74

74:                                               ; preds = %70, %43
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %17, i32 0, i32 0
  store i8* %75, i8** %76, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %17, i32 0, i32 4
  store i32* %77, i32** %78, align 8
  %79 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %16, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %17, i32 0, i32 3
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %10, align 4
  %83 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %17, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %17, i32 0, i32 1
  store i8* %84, i8** %85, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* @verify_mergeinfo_normalization, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @svn_iter_apr_hash(i32* null, i32* %86, i32 %87, %struct.verify_mergeinfo_normalization_baton* %17, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %91
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mergeinfo_parse(i32**, i8*, i32*) #1

declare dso_local i8* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_membuf__create(i32*, i32, i32*) #1

declare dso_local i32 @svn_iter_apr_hash(i32*, i32*, i32, %struct.verify_mergeinfo_normalization_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
