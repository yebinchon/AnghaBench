; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_questions.c_svn_wc__internal_file_modified_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_questions.c_svn_wc__internal_file_modified_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64 }

@svn_node_file = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@SVN_INVALID_FILESIZE = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_ACCESS_DENIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @svn_wc__internal_file_modified_p(i64* %0, i32* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call %struct.TYPE_16__* @svn_wc__db_read_info(i64* %14, i64* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %16, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %17, i64* %18, i32* null, i32* null, i32* null, i64* %19, i64* %20, i32* null, i32* null, i32* null, i32* %24, i8* %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(%struct.TYPE_16__* %28)
  %30 = load i32*, i32** %16, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %5
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* @svn_node_file, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @svn_wc__db_status_normal, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @svn_wc__db_status_added, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %32, %5
  %45 = load i64, i64* @TRUE, align 8
  %46 = load i64*, i64** %7, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %6, align 8
  br label %155

48:                                               ; preds = %40, %36
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* @FALSE, align 8
  %51 = load i64, i64* @TRUE, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call %struct.TYPE_16__* @svn_io_stat_dirent2(%struct.TYPE_15__** %21, i8* %49, i64 %50, i64 %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(%struct.TYPE_16__* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @svn_node_file, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load i64, i64* @FALSE, align 8
  %63 = load i64*, i64** %7, align 8
  store i64 %62, i64* %63, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %6, align 8
  br label %155

65:                                               ; preds = %48
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* @SVN_INVALID_FILESIZE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %17, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %91

79:                                               ; preds = %72, %68
  %80 = load i64, i64* %18, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %91

86:                                               ; preds = %79
  %87 = load i64, i64* @FALSE, align 8
  %88 = load i64*, i64** %7, align 8
  store i64 %87, i64* %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %6, align 8
  br label %155

90:                                               ; preds = %65
  br label %91

91:                                               ; preds = %90, %85, %78
  %92 = load i32*, i32** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call %struct.TYPE_16__* @svn_wc__db_pristine_read(i32** %12, i64* %13, i32* %92, i8* %93, i32* %94, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(%struct.TYPE_16__* %97)
  %99 = load i64*, i64** %7, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = call %struct.TYPE_16__* @compare_and_verify(i64* %99, i32* %100, i8* %101, i64 %104, i32* %105, i64 %106, i64 %107, i64 %108, i64 %109, i32* %110)
  store %struct.TYPE_16__* %111, %struct.TYPE_16__** %22, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %113 = icmp ne %struct.TYPE_16__* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %91
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @APR_STATUS_IS_EACCES(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @SVN_ERR_WC_PATH_ACCESS_DENIED, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %123 = call %struct.TYPE_16__* @svn_error_create(i32 %121, %struct.TYPE_16__* %122, i32* null)
  store %struct.TYPE_16__* %123, %struct.TYPE_16__** %6, align 8
  br label %155

124:                                              ; preds = %114, %91
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %126 = call i32 @SVN_ERR(%struct.TYPE_16__* %125)
  br label %127

127:                                              ; preds = %124
  %128 = load i64*, i64** %7, align 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %153, label %131

131:                                              ; preds = %127
  %132 = load i32*, i32** %8, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load i64, i64* @FALSE, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = call %struct.TYPE_16__* @svn_wc__db_wclock_owns_lock(i64* %23, i32* %132, i8* %133, i64 %134, i32* %135)
  %137 = call i32 @SVN_ERR(%struct.TYPE_16__* %136)
  %138 = load i64, i64* %23, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %131
  %141 = load i32*, i32** %8, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = call %struct.TYPE_16__* @svn_wc__db_global_record_fileinfo(i32* %141, i8* %142, i64 %145, i64 %148, i32* %149)
  %151 = call i32 @SVN_ERR(%struct.TYPE_16__* %150)
  br label %152

152:                                              ; preds = %140, %131
  br label %153

153:                                              ; preds = %152, %127
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %154, %struct.TYPE_16__** %6, align 8
  br label %155

155:                                              ; preds = %153, %120, %86, %61, %44
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %156
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_io_stat_dirent2(%struct.TYPE_15__**, i8*, i64, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__db_pristine_read(i32**, i64*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @compare_and_verify(i64*, i32*, i8*, i64, i32*, i64, i64, i64, i64, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EACCES(i32) #1

declare dso_local %struct.TYPE_16__* @svn_error_create(i32, %struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__db_wclock_owns_lock(i64*, i32*, i8*, i64, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__db_global_record_fileinfo(i32*, i8*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
