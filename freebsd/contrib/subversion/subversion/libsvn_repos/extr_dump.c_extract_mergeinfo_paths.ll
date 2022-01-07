; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_extract_mergeinfo_paths.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_extract_mergeinfo_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extract_mergeinfo_paths_baton = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@normalized_unique = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64, i8*, i32*)* @extract_mergeinfo_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extract_mergeinfo_paths(i8* %0, i8* %1, i64 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.extract_mergeinfo_paths_baton*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.extract_mergeinfo_paths_baton*
  store %struct.extract_mergeinfo_paths_baton* %14, %struct.extract_mergeinfo_paths_baton** %11, align 8
  %15 = load %struct.extract_mergeinfo_paths_baton*, %struct.extract_mergeinfo_paths_baton** %11, align 8
  %16 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.extract_mergeinfo_paths_baton*, %struct.extract_mergeinfo_paths_baton** %11, align 8
  %23 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %22, i32 0, i32 0
  %24 = call i32 @svn_utf__normalize(i8** %12, i8* %20, i64 %21, %struct.TYPE_2__* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.extract_mergeinfo_paths_baton*, %struct.extract_mergeinfo_paths_baton** %11, align 8
  %27 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.extract_mergeinfo_paths_baton*, %struct.extract_mergeinfo_paths_baton** %11, align 8
  %30 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @apr_pstrdup(i32 %32, i8* %33)
  %35 = load i32, i32* @normalized_unique, align 4
  %36 = call i32 @svn_hash_sets(i32 %28, i32 %34, i32 %35)
  br label %52

37:                                               ; preds = %5
  %38 = load %struct.extract_mergeinfo_paths_baton*, %struct.extract_mergeinfo_paths_baton** %11, align 8
  %39 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.extract_mergeinfo_paths_baton*, %struct.extract_mergeinfo_paths_baton** %11, align 8
  %42 = getelementptr inbounds %struct.extract_mergeinfo_paths_baton, %struct.extract_mergeinfo_paths_baton* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @apr_pmemdup(i32 %44, i8* %45, i64 %47)
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* @normalized_unique, align 4
  %51 = call i32 @apr_hash_set(i32 %40, i32 %48, i64 %49, i32 %50)
  br label %52

52:                                               ; preds = %37, %19
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %53
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_utf__normalize(i8**, i8*, i64, %struct.TYPE_2__*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @apr_hash_set(i32, i32, i64, i32) #1

declare dso_local i32 @apr_pmemdup(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
