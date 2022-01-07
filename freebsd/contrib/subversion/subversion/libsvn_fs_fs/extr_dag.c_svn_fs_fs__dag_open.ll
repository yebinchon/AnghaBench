; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Attempted to open node with an illegal name '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__dag_open(i32** %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @dir_entry_id_from_node(i32** %12, i32* %13, i8* %14, i32* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i32*, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32**, i32*** %7, align 8
  store i32* null, i32** %22, align 8
  %23 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %23, i32** %6, align 8
  br label %39

24:                                               ; preds = %5
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @svn_path_is_single_path_component(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i32* @svn_error_createf(i32 %29, i32* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32* %31, i32** %6, align 8
  br label %39

32:                                               ; preds = %24
  %33 = load i32**, i32*** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @svn_fs_fs__dag_get_fs(i32* %34)
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @svn_fs_fs__dag_get_node(i32** %33, i32 %35, i32* %36, i32* %37)
  store i32* %38, i32** %6, align 8
  br label %39

39:                                               ; preds = %32, %28, %21
  %40 = load i32*, i32** %6, align 8
  ret i32* %40
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dir_entry_id_from_node(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*) #1

declare dso_local i32* @svn_fs_fs__dag_get_node(i32**, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_fs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
