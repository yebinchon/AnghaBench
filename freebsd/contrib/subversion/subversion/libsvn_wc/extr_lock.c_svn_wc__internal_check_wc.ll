; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc__internal_check_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc__internal_check_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }

@SVN_ERR_WC_MISSING = common dso_local global i64 0, align 8
@SVN_ERR_WC_UNSUPPORTED_FORMAT = common dso_local global i64 0, align 8
@SVN_ERR_WC_UPGRADE_REQUIRED = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@APR_ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"'%s' does not exist\00", align 1
@SVN_WC__WC_NG_VERSION = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_12__* null, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @svn_wc__internal_check_wc(i32* %0, i32* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call %struct.TYPE_12__* @svn_wc__db_temp_get_format(i32* %17, i32* %18, i8* %19, i32* %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %12, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %64

24:                                               ; preds = %5
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SVN_ERR_WC_MISSING, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SVN_ERR_WC_UNSUPPORTED_FORMAT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SVN_ERR_WC_UPGRADE_REQUIRED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = call %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__* %43)
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %6, align 8
  br label %122

45:                                               ; preds = %36, %30, %24
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %47 = call i32 @svn_error_clear(%struct.TYPE_12__* %46)
  %48 = load i32*, i32** %7, align 8
  store i32 0, i32* %48, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call %struct.TYPE_12__* @svn_io_check_path(i8* %49, i64* %13, i32* %50)
  %52 = call i32 @SVN_ERR(%struct.TYPE_12__* %51)
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @svn_node_none, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load i32, i32* @APR_ENOENT, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %59 = load i8*, i8** %9, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @svn_dirent_local_style(i8* %59, i32* %60)
  %62 = call %struct.TYPE_12__* @svn_error_createf(i32 %57, i32* null, i32 %58, i32 %61)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %6, align 8
  br label %122

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %5
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SVN_WC__WC_NG_VERSION, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %120

69:                                               ; preds = %64
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call %struct.TYPE_12__* @svn_io_check_path(i8* %73, i64* %16, i32* %74)
  %76 = call i32 @SVN_ERR(%struct.TYPE_12__* %75)
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* @svn_node_dir, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32*, i32** %7, align 8
  store i32 0, i32* %81, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %6, align 8
  br label %122

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32*, i32** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call %struct.TYPE_12__* @svn_wc__db_read_info(i32* %14, i64* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %85, i8* %86, i32* %87, i32* %88)
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %12, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %91 = icmp ne %struct.TYPE_12__* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %84
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %100 = call i32 @svn_error_clear(%struct.TYPE_12__* %99)
  %101 = load i32*, i32** %7, align 8
  store i32 0, i32* %101, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %6, align 8
  br label %122

103:                                              ; preds = %92, %84
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %105 = call i32 @SVN_ERR(%struct.TYPE_12__* %104)
  br label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* @svn_node_dir, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32*, i32** %7, align 8
  store i32 0, i32* %111, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %6, align 8
  br label %122

113:                                              ; preds = %106
  %114 = load i32, i32* %14, align 4
  switch i32 %114, label %118 [
    i32 129, label %115
    i32 128, label %115
    i32 130, label %115
  ]

115:                                              ; preds = %113, %113, %113
  %116 = load i32*, i32** %7, align 8
  store i32 0, i32* %116, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %117, %struct.TYPE_12__** %6, align 8
  br label %122

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119, %64
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %6, align 8
  br label %122

122:                                              ; preds = %120, %115, %110, %98, %80, %56, %42
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  ret %struct.TYPE_12__* %123
}

declare dso_local %struct.TYPE_12__* @svn_wc__db_temp_get_format(i32*, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_12__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_wc__db_read_info(i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
