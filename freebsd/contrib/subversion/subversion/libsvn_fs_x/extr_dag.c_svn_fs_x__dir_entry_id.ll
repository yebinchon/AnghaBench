; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dir_entry_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dir_entry_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Can't get entries of non-directory\00", align 1
@SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Attempted to open node with an illegal name '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__dir_entry_id(i32* %0, %struct.TYPE_9__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @svn_node_dir, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %22 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = call i32* @svn_error_create(i32 %21, i32* null, i32 %22)
  store i32* %23, i32** %5, align 8
  br label %56

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @svn_path_is_single_path_component(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32* @svn_error_createf(i32 %29, i32* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32* %31, i32** %5, align 8
  br label %56

32:                                               ; preds = %24
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @svn_fs_x__rep_contents_dir_entry(%struct.TYPE_8__** %10, i32 %35, %struct.TYPE_7__* %36, i8* %37, i32* %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %54

51:                                               ; preds = %32
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @svn_fs_x__id_reset(i32* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %5, align 8
  br label %56

56:                                               ; preds = %54, %28, %20
  %57 = load i32*, i32** %5, align 8
  ret i32* %57
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__rep_contents_dir_entry(%struct.TYPE_8__**, i32, %struct.TYPE_7__*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__id_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
