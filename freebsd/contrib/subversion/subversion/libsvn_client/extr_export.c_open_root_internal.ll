; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_open_root_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_open_root_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@svn_node_none = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"'%s' exists and is not a directory\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_OBSTRUCTED_UPDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"'%s' already exists\00", align 1
@svn_wc_notify_update_add = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32 (i8*, %struct.TYPE_6__*, i32*)*, i8*, i32*)* @open_root_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_root_internal(i8* %0, i32 %1, i32 (i8*, %struct.TYPE_6__*, i32*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, %struct.TYPE_6__*, i32*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 (i8*, %struct.TYPE_6__*, i32*)* %2, i32 (i8*, %struct.TYPE_6__*, i32*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = call i32 @svn_io_check_path(i8* %14, i64* %12, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @svn_node_none, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @svn_io_make_dir_recursively(i8* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  br label %53

26:                                               ; preds = %5
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @svn_node_file, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* @SVN_ERR_WC_NOT_WORKING_COPY, align 4
  %32 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %7, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @svn_dirent_local_style(i8* %33, i32* %34)
  %36 = call i32* @svn_error_createf(i32 %31, i32* null, i32 %32, i32 %35)
  store i32* %36, i32** %6, align 8
  br label %71

37:                                               ; preds = %26
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @svn_node_dir, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* @SVN_ERR_WC_OBSTRUCTED_UPDATE, align 4
  %46 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** %7, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @svn_dirent_local_style(i8* %47, i32* %48)
  %50 = call i32* @svn_error_createf(i32 %45, i32* null, i32 %46, i32 %49)
  store i32* %50, i32** %6, align 8
  br label %71

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %21
  %54 = load i32 (i8*, %struct.TYPE_6__*, i32*)*, i32 (i8*, %struct.TYPE_6__*, i32*)** %9, align 8
  %55 = icmp ne i32 (i8*, %struct.TYPE_6__*, i32*)* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* @svn_wc_notify_update_add, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = call %struct.TYPE_6__* @svn_wc_create_notify(i8* %57, i32 %58, i32* %59)
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %13, align 8
  %61 = load i64, i64* @svn_node_dir, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32 (i8*, %struct.TYPE_6__*, i32*)*, i32 (i8*, %struct.TYPE_6__*, i32*)** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 %64(i8* %65, %struct.TYPE_6__* %66, i32* %67)
  br label %69

69:                                               ; preds = %56, %53
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %6, align 8
  br label %71

71:                                               ; preds = %69, %44, %30
  %72 = load i32*, i32** %6, align 8
  ret i32* %72
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_io_make_dir_recursively(i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
