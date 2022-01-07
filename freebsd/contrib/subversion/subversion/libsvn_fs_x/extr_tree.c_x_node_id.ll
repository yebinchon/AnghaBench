; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_node_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_node_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_4__*, i8*, i32*)* @x_node_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x_node_id(i32** %0, %struct.TYPE_4__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28, %16
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @svn_fs_x__init_rev_root(i32* %9, i32 %37)
  br label %52

39:                                               ; preds = %28, %22, %4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @svn_pool_create(i32* %40)
  store i32* %41, i32** %10, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @svn_fs_x__get_temp_dag_node(i32** %11, %struct.TYPE_4__* %42, i8* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = call i32* @svn_fs_x__dag_get_id(i32* %47)
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @svn_pool_destroy(i32* %50)
  br label %52

52:                                               ; preds = %39, %34
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @svn_fs_x__id_create_context(i32 %55, i32* %56)
  %58 = load i32*, i32** %8, align 8
  %59 = call i32* @svn_fs_x__id_create(i32 %57, i32* %9, i32* %58)
  %60 = load i32**, i32*** %5, align 8
  store i32* %59, i32** %60, align 8
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local i32 @svn_fs_x__init_rev_root(i32*, i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_temp_dag_node(i32**, %struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32* @svn_fs_x__dag_get_id(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_fs_x__id_create(i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__id_create_context(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
