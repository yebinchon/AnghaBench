; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_object_pool.c_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_object_pool.c_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_12__*, %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_12__*, %struct.TYPE_13__*, i8*, i32*, i32*)* @insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @insert(i8** %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_14__* @apr_hash_get(i32 %16, i32 %19, i32 %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %13, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %25 = icmp ne %struct.TYPE_14__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @svn_pool_destroy(i32* %27)
  br label %86

29:                                               ; preds = %6
  %30 = load i32*, i32** %11, align 8
  %31 = call %struct.TYPE_14__* @apr_pcalloc(i32* %30, i32 32)
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %13, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @svn_membuf__create(%struct.TYPE_15__* %42, i32 %45, i32* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(i32 %57, i32 %60, i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %77 = call i32 @apr_hash_set(i32 %67, i32 %71, i32 %75, %struct.TYPE_14__* %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = call i32 @svn_atomic_inc(i32* %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = call i32 @svn_atomic_inc(i32* %84)
  br label %86

86:                                               ; preds = %29, %26
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8**, i8*** %7, align 8
  store i8* %89, i8** %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @add_object_ref(%struct.TYPE_14__* %91, i32* %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = call i32 @svn_atomic_read(i32* %95)
  %97 = mul nsw i32 %96, 2
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @apr_hash_count(i32 %100)
  %102 = add nsw i32 %101, 2
  %103 = icmp sgt i32 %97, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %86
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %106 = call i32 @remove_unused_objects(%struct.TYPE_12__* %105)
  br label %107

107:                                              ; preds = %104, %86
  %108 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %108
}

declare dso_local %struct.TYPE_14__* @apr_hash_get(i32, i32, i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_14__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_membuf__create(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @apr_hash_set(i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @svn_atomic_inc(i32*) #1

declare dso_local i32 @add_object_ref(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_atomic_read(i32*) #1

declare dso_local i32 @apr_hash_count(i32) #1

declare dso_local i32 @remove_unused_objects(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
