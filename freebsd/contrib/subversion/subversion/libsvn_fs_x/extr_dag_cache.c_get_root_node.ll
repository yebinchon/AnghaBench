; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_get_root_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_get_root_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.get_root_node.path = private unnamed_addr constant %struct.TYPE_12__ { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i32 0 }, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_15__*, i32, i32*)* @get_root_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_root_node(i32** %0, %struct.TYPE_15__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %9, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %10, align 8
  %19 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_12__* @__const.get_root_node.path to i8*), i64 16, i1 false)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = call i32 @auto_clear_dag_cache(%struct.TYPE_17__* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.TYPE_16__* @cache_lookup(%struct.TYPE_17__* %26, i32 %27, %struct.TYPE_12__* %12)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %11, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @svn_fs_x__dag_root(i32** %35, %struct.TYPE_14__* %36, i32 %37, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %46

46:                                               ; preds = %33, %4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32**, i32*** %5, align 8
  store i32* %49, i32** %50, align 8
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @auto_clear_dag_cache(%struct.TYPE_17__*) #2

declare dso_local %struct.TYPE_16__* @cache_lookup(%struct.TYPE_17__*, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_fs_x__dag_root(i32**, %struct.TYPE_14__*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
