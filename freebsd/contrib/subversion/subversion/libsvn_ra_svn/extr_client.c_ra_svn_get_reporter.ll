; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_get_reporter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_get_reporter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32*, i32*, i32, %struct.TYPE_5__* }

@svn_depth_files = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_RA_SVN_CAP_DEPTH = common dso_local global i32 0, align 4
@ra_svn_reporter = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*, i32*, i8*, i8*, i32, i32**, i8**)* @ra_svn_get_reporter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_get_reporter(%struct.TYPE_5__* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32 %5, i32** %6, i8** %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32** %6, i32*** %15, align 8
  store i8** %7, i8*** %16, align 8
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @svn_depth_files, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @svn_depth_infinity, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SVN_RA_SVN_CAP_DEPTH, align 4
  %32 = call i32 @svn_ra_svn_has_capability(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %27
  %35 = load i32*, i32** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @svn_delta_depth_filter_editor(i32** %18, i8** %19, i32* %35, i8* %36, i32 %37, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %18, align 8
  store i32* %46, i32** %11, align 8
  %47 = load i8*, i8** %19, align 8
  store i8* %47, i8** %12, align 8
  br label %48

48:                                               ; preds = %34, %27, %23, %8
  %49 = load i32*, i32** %10, align 8
  %50 = call %struct.TYPE_6__* @apr_palloc(i32* %49, i32 40)
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %17, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load i32**, i32*** %15, align 8
  store i32* @ra_svn_reporter, i32** %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %70 = bitcast %struct.TYPE_6__* %69 to i8*
  %71 = load i8**, i8*** %16, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %72
}

declare dso_local i32 @svn_ra_svn_has_capability(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_delta_depth_filter_editor(i32**, i8**, i32*, i8*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
