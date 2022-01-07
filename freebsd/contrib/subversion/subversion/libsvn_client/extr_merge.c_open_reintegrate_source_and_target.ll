; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_open_reintegrate_source_and_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_open_reintegrate_source_and_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_UNRELATED_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"Can't reintegrate into '%s' because it is locally added and therefore not related to the merge source\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32**, i32**, %struct.TYPE_5__**, i8*, i32*, i8*, i32*, i32*, i32*)* @open_reintegrate_source_and_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_reintegrate_source_and_target(i32** %0, i32** %1, i32** %2, %struct.TYPE_5__** %3, i8* %4, i32* %5, i8* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_5__**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_5__*, align 8
  store i32** %0, i32*** %12, align 8
  store i32** %1, i32*** %13, align 8
  store i32** %2, i32*** %14, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32* %5, i32** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %24 = load i8*, i8** %18, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32*, i32** %19, align 8
  %29 = load i32*, i32** %21, align 8
  %30 = load i32*, i32** %21, align 8
  %31 = call i32 @open_target_wc(%struct.TYPE_5__** %23, i8* %24, i32 %25, i32 %26, i32 %27, i32* %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %10
  %39 = load i32, i32* @SVN_ERR_CLIENT_UNRELATED_RESOURCES, align 4
  %40 = call i32 @_(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32*, i32** %21, align 8
  %45 = call i32 @svn_dirent_local_style(i8* %43, i32* %44)
  %46 = call i32* @svn_error_createf(i32 %39, i32* null, i32 %40, i32 %45)
  store i32* %46, i32** %11, align 8
  br label %89

47:                                               ; preds = %10
  %48 = load i32**, i32*** %14, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32*, i32** %19, align 8
  %57 = load i32*, i32** %20, align 8
  %58 = load i32*, i32** %21, align 8
  %59 = call i32 @svn_client_open_ra_session2(i32** %48, i32 %52, i8* %55, i32* %56, i32* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32**, i32*** %12, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = load i32*, i32** %20, align 8
  %67 = call i32 @svn_client__ra_session_from_path2(i32** %61, i32** %22, i8* %62, i32* null, i32* %63, i32* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %22, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = load i32*, i32** %21, align 8
  %72 = call i32 @svn_dirent_local_style(i8* %70, i32* %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = call i32 @svn_dirent_local_style(i8* %77, i32* %78)
  %80 = load i32, i32* @TRUE, align 4
  %81 = load i32*, i32** %21, align 8
  %82 = call i32 @check_same_repos(i32* %69, i32 %72, %struct.TYPE_6__* %74, i32 %79, i32 %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** %22, align 8
  %85 = load i32**, i32*** %13, align 8
  store i32* %84, i32** %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %87, align 8
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %88, i32** %11, align 8
  br label %89

89:                                               ; preds = %47, %38
  %90 = load i32*, i32** %11, align 8
  ret i32* %90
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_target_wc(%struct.TYPE_5__**, i8*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_client_open_ra_session2(i32**, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, i32**, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @check_same_repos(i32*, i32, %struct.TYPE_6__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
