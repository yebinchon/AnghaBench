; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_svn_cache__create_inprocess.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_svn_cache__create_inprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@inprocess_cache_vtable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SVN_X_DOES_NOT_MARK_THE_SPOT\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cache__create_inprocess(%struct.TYPE_6__** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  %21 = load i32*, i32** %18, align 8
  %22 = call i8* @apr_pcalloc(i32* %21, i32 24)
  %23 = bitcast i8* %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %19, align 8
  %24 = load i32*, i32** %18, align 8
  %25 = call i8* @apr_pcalloc(i32* %24, i32 56)
  %26 = bitcast i8* %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %20, align 8
  %27 = load i32*, i32** %18, align 8
  %28 = load i8*, i8** %17, align 8
  %29 = call i32 @apr_pstrdup(i32* %27, i8* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %9
  %36 = load i32, i32* %13, align 4
  %37 = icmp sge i32 %36, 1
  br label %38

38:                                               ; preds = %35, %9
  %39 = phi i1 [ true, %9 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @SVN_ERR_ASSERT(i32 %40)
  %42 = load i32*, i32** %18, align 8
  %43 = call i32 @apr_hash_make(i32* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %14, align 4
  %56 = icmp sge i32 %55, 1
  %57 = zext i1 %56 to i32
  %58 = call i32 @SVN_ERR_ASSERT(i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %15, align 4
  %66 = icmp sge i32 %65, 1
  %67 = zext i1 %66 to i32
  %68 = call i32 @SVN_ERR_ASSERT(i32 %67)
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %18, align 8
  %73 = call i8* @apr_pcalloc(i32* %72, i32 16)
  %74 = bitcast i8* %73 to %struct.TYPE_5__*
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 6
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 6
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 5
  %93 = load i32, i32* %16, align 4
  %94 = load i32*, i32** %18, align 8
  %95 = call i32 @svn_mutex__init(i32* %92, i32 %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i32*, i32** %18, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  store i32* @inprocess_cache_vtable, i32** %101, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %104, align 8
  %105 = call i32 @getenv(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %113 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %113, align 8
  %114 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %114
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mutex__init(i32*, i32, i32*) #1

declare dso_local i32 @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
