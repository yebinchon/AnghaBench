; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_relegate_dir_external.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_relegate_dir_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_WC_LEFT_LOCAL_MOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c".OLD\00", align 1
@svn_io_file_del_none = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i64 0, align 8
@svn_wc_notify_left_local_modifications = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i32*, i8*, i8*, i32, i8*, i32 (i8*, %struct.TYPE_15__*, i32*)*, i8*, i32*)* @relegate_dir_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @relegate_dir_external(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 (i8*, %struct.TYPE_15__*, i32*)* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32 (i8*, %struct.TYPE_15__*, i32*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 (i8*, %struct.TYPE_15__*, i32*)* %5, i32 (i8*, %struct.TYPE_15__*, i32*)** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %17, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32*, i32** %16, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = call i32 @svn_wc__acquire_write_lock(i32* null, i32* %23, i8* %24, i32 %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = call %struct.TYPE_16__* @svn_wc__external_remove(i32* %30, i8* %31, i8* %32, i32 %33, i32 %34, i8* %35, i32* %36)
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %17, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %40, label %113

40:                                               ; preds = %8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SVN_ERR_WC_LEFT_LOCAL_MOD, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %113

46:                                               ; preds = %40
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %48 = call i32 @svn_error_clear(%struct.TYPE_16__* %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %17, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = call i32 @svn_dirent_split(i8** %18, i8** %19, i8* %50, i32* %51)
  %53 = load i8*, i8** %18, align 8
  %54 = load i8*, i8** %19, align 8
  %55 = load i32, i32* @svn_io_file_del_none, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @svn_io_open_uniquely_named(i32* null, i8** %20, i8* %53, i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i8*, i8** %20, align 8
  %61 = load i32, i32* @TRUE, align 4
  %62 = load i32*, i32** %16, align 8
  %63 = call %struct.TYPE_16__* @svn_io_remove_file2(i8* %60, i32 %61, i32* %62)
  %64 = call i32 @svn_error_clear(%struct.TYPE_16__* %63)
  %65 = load i32*, i32** %9, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %20, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = call %struct.TYPE_16__* @svn_wc__rename_wc(i32* %65, i8* %66, i8* %67, i32* %68)
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %17, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %71 = icmp ne %struct.TYPE_16__* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %46
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %80 = call i32 @svn_error_clear(%struct.TYPE_16__* %79)
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %20, align 8
  %83 = load i32, i32* @FALSE, align 4
  %84 = load i32*, i32** %16, align 8
  %85 = call %struct.TYPE_16__* @svn_io_file_rename2(i8* %81, i8* %82, i32 %83, i32* %84)
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %17, align 8
  br label %86

86:                                               ; preds = %78, %72, %46
  %87 = load i32 (i8*, %struct.TYPE_15__*, i32*)*, i32 (i8*, %struct.TYPE_15__*, i32*)** %14, align 8
  %88 = icmp ne i32 (i8*, %struct.TYPE_15__*, i32*)* %87, null
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %91 = icmp ne %struct.TYPE_16__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i8*, i8** %11, align 8
  br label %96

94:                                               ; preds = %89
  %95 = load i8*, i8** %20, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i8* [ %93, %92 ], [ %95, %94 ]
  %98 = load i32, i32* @svn_wc_notify_left_local_modifications, align 4
  %99 = load i32*, i32** %16, align 8
  %100 = call %struct.TYPE_15__* @svn_wc_create_notify(i8* %97, i32 %98, i32* %99)
  store %struct.TYPE_15__* %100, %struct.TYPE_15__** %21, align 8
  %101 = load i32, i32* @svn_node_dir, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  store %struct.TYPE_16__* %104, %struct.TYPE_16__** %106, align 8
  %107 = load i32 (i8*, %struct.TYPE_15__*, i32*)*, i32 (i8*, %struct.TYPE_15__*, i32*)** %14, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 %107(i8* %108, %struct.TYPE_15__* %109, i32* %110)
  br label %112

112:                                              ; preds = %96, %86
  br label %113

113:                                              ; preds = %112, %40, %8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %115 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %114)
  ret %struct.TYPE_16__* %115
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__acquire_write_lock(i32*, i32*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__external_remove(i32*, i8*, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @svn_io_open_uniquely_named(i32*, i8**, i8*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_io_remove_file2(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__rename_wc(i32*, i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_io_file_rename2(i8*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
