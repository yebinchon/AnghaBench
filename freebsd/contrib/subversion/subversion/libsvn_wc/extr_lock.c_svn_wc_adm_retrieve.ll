; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc_adm_retrieve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc_adm_retrieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@svn_node_unknown = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_17__* null, align 8
@SVN_ERR_WC_NOT_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to check path existence for '%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Expected '%s' to be a directory but found a file\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Can't retrieve an access baton for non-directory '%s'\00", align 1
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Directory '%s' is missing\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Working copy '%s' is not locked\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @svn_wc_adm_retrieve(%struct.TYPE_16__** %0, %struct.TYPE_16__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__**, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__** %0, %struct.TYPE_16__*** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* @svn_node_unknown, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @svn_dirent_get_absolute(i8** %10, i8* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @strcmp(i32 %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %27, align 8
  br label %36

28:                                               ; preds = %4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call %struct.TYPE_16__* @svn_wc__adm_retrieve_internal2(i32 %31, i8* %32, i32* %33)
  %35 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %35, align 8
  br label %36

36:                                               ; preds = %28, %25
  %37 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %5, align 8
  br label %145

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call %struct.TYPE_17__* @svn_io_check_path(i8* %43, i64* %12, i32* %44)
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %13, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %47 = icmp ne %struct.TYPE_17__* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i32, i32* @SVN_ERR_WC_NOT_LOCKED, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %51 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @svn_dirent_local_style(i8* %52, i32* %53)
  %55 = call %struct.TYPE_17__* @svn_error_createf(i32 %49, %struct.TYPE_17__* %50, i32 %51, i32 %54)
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %5, align 8
  br label %145

56:                                               ; preds = %42
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = icmp ne %struct.TYPE_16__* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = call i32 @svn_wc__adm_get_db(%struct.TYPE_16__* %60)
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* @TRUE, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call %struct.TYPE_17__* @svn_wc__db_read_kind(i64* %11, i32 %61, i8* %62, i32 %63, i32 %64, i32 %65, i32* %66)
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %13, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %69 = icmp ne %struct.TYPE_17__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load i64, i64* @svn_node_unknown, align 8
  store i64 %71, i64* %11, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %73 = call i32 @svn_error_clear(%struct.TYPE_17__* %72)
  br label %74

74:                                               ; preds = %70, %59
  br label %75

75:                                               ; preds = %74, %56
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @svn_node_dir, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @svn_node_file, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32, i32* @SVN_ERR_WC_NOT_WORKING_COPY, align 4
  %85 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i8*, i8** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @svn_dirent_local_style(i8* %86, i32* %87)
  %89 = call %struct.TYPE_17__* @svn_error_createf(i32 %84, %struct.TYPE_17__* null, i32 %85, i32 %88)
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %13, align 8
  %90 = load i32, i32* @SVN_ERR_WC_NOT_LOCKED, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.TYPE_17__* @svn_error_create(i32 %90, %struct.TYPE_17__* %91, i32 %94)
  store %struct.TYPE_17__* %95, %struct.TYPE_17__** %5, align 8
  br label %145

96:                                               ; preds = %79, %75
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @svn_node_dir, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* @svn_node_unknown, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load i32, i32* @SVN_ERR_WC_NOT_WORKING_COPY, align 4
  %106 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i8*, i8** %8, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @svn_dirent_local_style(i8* %107, i32* %108)
  %110 = call %struct.TYPE_17__* @svn_error_createf(i32 %105, %struct.TYPE_17__* null, i32 %106, i32 %109)
  store %struct.TYPE_17__* %110, %struct.TYPE_17__** %13, align 8
  %111 = load i32, i32* @SVN_ERR_WC_NOT_LOCKED, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.TYPE_17__* @svn_error_create(i32 %111, %struct.TYPE_17__* %112, i32 %115)
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %5, align 8
  br label %145

117:                                              ; preds = %100, %96
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* @svn_node_unknown, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* @svn_node_none, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %121, %117
  %126 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %127 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i8*, i8** %8, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @svn_dirent_local_style(i8* %128, i32* %129)
  %131 = call %struct.TYPE_17__* @svn_error_createf(i32 %126, %struct.TYPE_17__* null, i32 %127, i32 %130)
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %13, align 8
  %132 = load i32, i32* @SVN_ERR_WC_NOT_LOCKED, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.TYPE_17__* @svn_error_create(i32 %132, %struct.TYPE_17__* %133, i32 %136)
  store %struct.TYPE_17__* %137, %struct.TYPE_17__** %5, align 8
  br label %145

138:                                              ; preds = %121
  %139 = load i32, i32* @SVN_ERR_WC_NOT_LOCKED, align 4
  %140 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i8*, i8** %8, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @svn_dirent_local_style(i8* %141, i32* %142)
  %144 = call %struct.TYPE_17__* @svn_error_createf(i32 %139, %struct.TYPE_17__* null, i32 %140, i32 %143)
  store %struct.TYPE_17__* %144, %struct.TYPE_17__** %5, align 8
  br label %145

145:                                              ; preds = %138, %125, %104, %83, %48, %40
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %146
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__adm_retrieve_internal2(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_error_createf(i32, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__db_read_kind(i64*, i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__adm_get_db(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @svn_error_create(i32, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
