; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_..libsvn_rawrapper_template.h_compat_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_..libsvn_rawrapper_template.h_compat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.TYPE_8__*, i8**, i8*, %struct.TYPE_10__*, i8*, i32*, i32*, i32*, i32*)* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32*, i32*, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32, i32 }

@VTBL = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@SVN_ERR_RA_SESSION_URL_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"Session URL '%s' does not match requested  URL '%s', and redirection was disallowed.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, %struct.TYPE_9__*, i8*, i32*, i32*)* @compat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @compat_open(i8** %0, i8* %1, %struct.TYPE_9__* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i8*, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = call i32* @svn_pool_create(i32* %18)
  store i32* %19, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = call i8* @apr_pcalloc(i32* %20, i32 48)
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %15, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = call i8* @apr_pcalloc(i32* %23, i32 16)
  %25 = bitcast i8* %24 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %16, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store %struct.TYPE_11__* @VTBL, %struct.TYPE_11__** %27, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 6
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load i32 (%struct.TYPE_8__*, i8**, i8*, %struct.TYPE_10__*, i8*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_8__*, i8**, i8*, %struct.TYPE_10__*, i8*, i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @VTBL, i32 0, i32 0), align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = icmp ne %struct.TYPE_9__* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %6
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  br label %77

76:                                               ; preds = %6
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i32* [ %75, %72 ], [ null, %76 ]
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 %65(%struct.TYPE_8__* %66, i8** %17, i8* %67, %struct.TYPE_10__* %68, i8* %69, i32* %78, i32* %79, i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = call i64 @strcmp(i8* %84, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %77
  %89 = load i32*, i32** %14, align 8
  %90 = call i32 @svn_pool_destroy(i32* %89)
  %91 = load i32, i32* @SVN_ERR_RA_SESSION_URL_MISMATCH, align 4
  %92 = call i32 @_(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %93 = load i8*, i8** %17, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i32* @svn_error_createf(i32 %91, i32* null, i32 %92, i8* %93, i8* %94)
  store i32* %95, i32** %7, align 8
  br label %101

96:                                               ; preds = %77
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %98 = bitcast %struct.TYPE_8__* %97 to i8*
  %99 = load i8**, i8*** %8, align 8
  store i8* %98, i8** %99, align 8
  %100 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %100, i32** %7, align 8
  br label %101

101:                                              ; preds = %96, %88
  %102 = load i32*, i32** %7, align 8
  ret i32* %102
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
