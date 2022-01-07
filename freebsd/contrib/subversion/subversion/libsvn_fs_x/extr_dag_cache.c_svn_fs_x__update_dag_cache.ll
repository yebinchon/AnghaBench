; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_svn_fs_x__update_dag_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_svn_fs_x__update_dag_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_fs_x__update_dag_cache(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.TYPE_13__* @svn_fs_x__dag_get_fs(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @svn_fs_x__dag_get_created_path(i32* %12)
  store i8* %13, i8** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = call i32 @auto_clear_dag_cache(%struct.TYPE_10__* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call %struct.TYPE_12__* @svn_fs_x__dag_get_id(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @normalize_path(i32* %7, i8* %24)
  %26 = call %struct.TYPE_11__* @cache_lookup(%struct.TYPE_10__* %19, i32 %23, i32 %25)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %6, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @svn_fs_x__dag_dup(i32* %27, i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local %struct.TYPE_13__* @svn_fs_x__dag_get_fs(i32*) #1

declare dso_local i8* @svn_fs_x__dag_get_created_path(i32*) #1

declare dso_local i32 @auto_clear_dag_cache(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @cache_lookup(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @svn_fs_x__dag_get_id(i32*) #1

declare dso_local i32 @normalize_path(i32*, i8*) #1

declare dso_local i32 @svn_fs_x__dag_dup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
