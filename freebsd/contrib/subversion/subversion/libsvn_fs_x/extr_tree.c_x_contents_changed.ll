; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_contents_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_contents_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@SVN_ERR_FS_GENERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Cannot compare file contents between two different filesystems\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"'%s' is not a file\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_6__*, i8*, %struct.TYPE_6__*, i8*, i32, i32*)* @x_contents_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x_contents_changed(i32* %0, %struct.TYPE_6__* %1, i8* %2, %struct.TYPE_6__* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load i32*, i32** %15, align 8
  %20 = call i32* @svn_pool_create(i32* %19)
  store i32* %20, i32** %18, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %7
  %29 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %31 = call i32* @svn_error_create(i32 %29, i32* null, i32 %30)
  store i32* %31, i32** %8, align 8
  br label %74

32:                                               ; preds = %7
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i32*, i32** %18, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = call i32 @svn_fs_x__get_dag_node(i32** %16, %struct.TYPE_6__* %33, i8* %34, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %16, align 8
  %40 = call i64 @svn_fs_x__dag_node_kind(i32* %39)
  %41 = load i64, i64* @svn_node_file, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i8*, i8** %11, align 8
  %47 = call i32* @svn_error_createf(i32 %44, i32* null, i32 %45, i8* %46)
  store i32* %47, i32** %8, align 8
  br label %74

48:                                               ; preds = %32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = call i32 @svn_fs_x__get_temp_dag_node(i32** %17, %struct.TYPE_6__* %49, i8* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %17, align 8
  %55 = call i64 @svn_fs_x__dag_node_kind(i32* %54)
  %56 = load i64, i64* @svn_node_file, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %60 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i8*, i8** %13, align 8
  %62 = call i32* @svn_error_createf(i32 %59, i32* null, i32 %60, i8* %61)
  store i32* %62, i32** %8, align 8
  br label %74

63:                                               ; preds = %48
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %18, align 8
  %69 = call i32 @svn_fs_x__dag_things_different(i32* null, i32* %64, i32* %65, i32* %66, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** %18, align 8
  %72 = call i32 @svn_pool_destroy(i32* %71)
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %73, i32** %8, align 8
  br label %74

74:                                               ; preds = %63, %58, %43, %28
  %75 = load i32*, i32** %8, align 8
  ret i32* %75
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_dag_node(i32**, %struct.TYPE_6__*, i8*, i32*, i32*) #1

declare dso_local i64 @svn_fs_x__dag_node_kind(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @svn_fs_x__get_temp_dag_node(i32**, %struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_things_different(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
