; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_has_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_has_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__dag_has_props(i32* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %11 = call i32 @get_node_revision(%struct.TYPE_9__** %8, %struct.TYPE_10__* %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %4, align 8
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = call i64 @svn_fs_fs__id_txn_used(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @svn_fs_fs__get_proplist(i32** %9, i32 %31, %struct.TYPE_9__* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @apr_hash_count(i32* %39)
  %41 = icmp slt i64 0, %40
  %42 = zext i1 %41 to i32
  br label %45

43:                                               ; preds = %28
  %44 = load i32, i32* @FALSE, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi i32 [ %42, %38 ], [ %44, %43 ]
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %57

48:                                               ; preds = %21
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 4
  %55 = zext i1 %54 to i32
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %45
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %58, i32** %4, align 8
  br label %59

59:                                               ; preds = %57, %17
  %60 = load i32*, i32** %4, align 8
  ret i32* %60
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_node_revision(%struct.TYPE_9__**, %struct.TYPE_10__*) #1

declare dso_local i64 @svn_fs_fs__id_txn_used(i32*) #1

declare dso_local i32 @svn_fs_fs__get_proplist(i32**, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
