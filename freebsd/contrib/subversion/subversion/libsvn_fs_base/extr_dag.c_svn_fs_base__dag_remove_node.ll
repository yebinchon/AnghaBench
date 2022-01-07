; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_remove_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_remove_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i64, i64 }

@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Attempted removal of immutable node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__dag_remove_node(i32* %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @svn_fs_base__dag_get_node(i32** %12, i32* %14, i32* %15, i32* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i32*, i32** %12, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @svn_fs_base__dag_check_mutable(i32* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = call i32* @svn_error_createf(i32 %25, i32* null, i32 %26)
  store i32* %27, i32** %6, align 8
  br label %90

28:                                               ; preds = %5
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_3__** %13, i32* %29, i32* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @svn_fs_base__delete_rep_if_mutable(i32* %40, i64 %43, i8* %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  br label %49

49:                                               ; preds = %39, %28
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @svn_fs_base__delete_rep_if_mutable(i32* %55, i64 %58, i8* %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %64

64:                                               ; preds = %54, %49
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @svn_fs_base__delete_rep_if_mutable(i32* %70, i64 %73, i8* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %79

79:                                               ; preds = %69, %64
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  %86 = zext i1 %85 to i32
  %87 = load i32*, i32** %10, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32* @svn_fs_base__delete_node_revision(i32* %80, i32* %81, i32 %86, i32* %87, i32* %88)
  store i32* %89, i32** %6, align 8
  br label %90

90:                                               ; preds = %79, %24
  %91 = load i32*, i32** %6, align 8
  ret i32* %91
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__dag_get_node(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__dag_check_mutable(i32*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_3__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__delete_rep_if_mutable(i32*, i64, i8*, i32*, i32*) #1

declare dso_local i32* @svn_fs_base__delete_node_revision(i32*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
