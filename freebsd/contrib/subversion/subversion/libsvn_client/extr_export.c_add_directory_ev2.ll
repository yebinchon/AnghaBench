; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_add_directory_ev2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_add_directory_ev2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32 (i32, %struct.TYPE_4__*, i32*)*, i32, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@svn_node_none = common dso_local global i64 0, align 8
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"'%s' exists and is not a directory\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_OBSTRUCTED_UPDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"'%s' already exists\00", align 1
@SVN_PROP_EXTERNALS = common dso_local global i32 0, align 4
@svn_wc_notify_update_add = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i32, i32*)* @add_directory_ev2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_directory_ev2(i8* %0, i8* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.edit_baton*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.edit_baton*
  store %struct.edit_baton* %20, %struct.edit_baton** %14, align 8
  %21 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %22 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i8* @svn_dirent_join(i32 %23, i8* %24, i32* %25)
  store i8* %26, i8** %16, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @svn_io_check_path(i8* %27, i64* %15, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* @svn_node_none, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %6
  %35 = load i8*, i8** %16, align 8
  %36 = load i32, i32* @APR_OS_DEFAULT, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @svn_io_dir_make(i8* %35, i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  br label %69

40:                                               ; preds = %6
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* @svn_node_file, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* @SVN_ERR_WC_NOT_WORKING_COPY, align 4
  %46 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %47 = load i8*, i8** %16, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @svn_dirent_local_style(i8* %47, i32* %48)
  %50 = call i32* @svn_error_createf(i32 %45, i32* null, i32 %46, i32 %49)
  store i32* %50, i32** %7, align 8
  br label %106

51:                                               ; preds = %40
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* @svn_node_dir, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %57 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* @SVN_ERR_WC_OBSTRUCTED_UPDATE, align 4
  %62 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i8*, i8** %16, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @svn_dirent_local_style(i8* %63, i32* %64)
  %66 = call i32* @svn_error_createf(i32 %61, i32* null, i32 %62, i32 %65)
  store i32* %66, i32** %7, align 8
  br label %106

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %34
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* @SVN_PROP_EXTERNALS, align 4
  %72 = call i32* @svn_hash_gets(i32* %70, i32 %71)
  store i32* %72, i32** %17, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %76 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = call i32 @add_externals(i32 %77, i8* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %82

82:                                               ; preds = %74, %69
  %83 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %84 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %83, i32 0, i32 1
  %85 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %84, align 8
  %86 = icmp ne i32 (i32, %struct.TYPE_4__*, i32*)* %85, null
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load i8*, i8** %16, align 8
  %89 = load i32, i32* @svn_wc_notify_update_add, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = call %struct.TYPE_4__* @svn_wc_create_notify(i8* %88, i32 %89, i32* %90)
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %18, align 8
  %92 = load i64, i64* @svn_node_dir, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %96 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %95, i32 0, i32 1
  %97 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %96, align 8
  %98 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %99 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 %97(i32 %100, %struct.TYPE_4__* %101, i32* %102)
  br label %104

104:                                              ; preds = %87, %82
  %105 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %105, i32** %7, align 8
  br label %106

106:                                              ; preds = %104, %60, %44
  %107 = load i32*, i32** %7, align 8
  ret i32* %107
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @add_externals(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_4__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
