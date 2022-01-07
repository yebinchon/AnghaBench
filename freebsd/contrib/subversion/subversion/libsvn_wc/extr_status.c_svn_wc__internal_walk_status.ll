; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_svn_wc__internal_walk_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_svn_wc__internal_walk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.walk_status_baton = type { i8*, i32, i32*, i32*, i32, i32, i32* }
%struct.svn_wc__db_info_t = type { i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @svn_wc__internal_walk_status(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i8* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.walk_status_baton, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.svn_wc__db_info_t*, align 8
  %29 = alloca %struct.TYPE_16__*, align 8
  %30 = alloca i32*, align 8
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i8* %8, i8** %22, align 8
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %26, i32 0, i32 6
  store i32* %31, i32** %32, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %26, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* %19, align 4
  %36 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %26, i32 0, i32 5
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %26, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %26, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %26, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %12
  %44 = load i32*, i32** %25, align 8
  %45 = call %struct.TYPE_16__* @svn_wc_get_default_ignores(i32** %30, i32* null, i32* %44)
  %46 = call i32 @SVN_ERR(%struct.TYPE_16__* %45)
  %47 = load i32*, i32** %30, align 8
  store i32* %47, i32** %20, align 8
  br label %48

48:                                               ; preds = %43, %12
  %49 = load i32*, i32** %14, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = load i32, i32* @FALSE, align 4
  %52 = load i32*, i32** %25, align 8
  %53 = load i32*, i32** %25, align 8
  %54 = call %struct.TYPE_16__* @svn_wc__db_read_single_info(%struct.svn_wc__db_info_t** %28, i32* %49, i8* %50, i32 %51, i32* %52, i32* %53)
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %29, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %56 = icmp ne %struct.TYPE_16__* %55, null
  br i1 %56, label %57, label %80

57:                                               ; preds = %48
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %65 = call i32 @svn_error_clear(%struct.TYPE_16__* %64)
  store %struct.svn_wc__db_info_t* null, %struct.svn_wc__db_info_t** %28, align 8
  br label %69

66:                                               ; preds = %57
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %68 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %67)
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %13, align 8
  br label %173

69:                                               ; preds = %63
  %70 = load i32*, i32** %25, align 8
  %71 = call i32 @apr_hash_make(i32* %70)
  %72 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %26, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i32, i32* @TRUE, align 4
  %76 = load i32*, i32** %25, align 8
  %77 = load i32*, i32** %25, align 8
  %78 = call %struct.TYPE_16__* @svn_io_stat_dirent2(i32** %27, i8* %73, i32 %74, i32 %75, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(%struct.TYPE_16__* %78)
  br label %94

80:                                               ; preds = %48
  %81 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %26, i32 0, i32 1
  %82 = load i32*, i32** %14, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = load i32*, i32** %25, align 8
  %85 = load i32*, i32** %25, align 8
  %86 = call %struct.TYPE_16__* @svn_wc__db_externals_defined_below(i32* %81, i32* %82, i8* %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(%struct.TYPE_16__* %86)
  %88 = load i32*, i32** %14, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load i32*, i32** %25, align 8
  %91 = load i32*, i32** %25, align 8
  %92 = call %struct.TYPE_16__* @stat_wc_dirent_case_sensitive(i32** %27, i32* %88, i8* %89, i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(%struct.TYPE_16__* %92)
  br label %94

94:                                               ; preds = %80, %69
  %95 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %28, align 8
  %96 = icmp ne %struct.svn_wc__db_info_t* %95, null
  br i1 %96, label %97, label %136

97:                                               ; preds = %94
  %98 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %28, align 8
  %99 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %136

102:                                              ; preds = %97
  %103 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %28, align 8
  %104 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %102
  %109 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %28, align 8
  %110 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %108
  %115 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %28, align 8
  %116 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %114
  %121 = load i8*, i8** %15, align 8
  %122 = load i32, i32* @FALSE, align 4
  %123 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %28, align 8
  %124 = load i32*, i32** %27, align 8
  %125 = load i32*, i32** %20, align 8
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %21, align 4
  %130 = load i8*, i8** %22, align 8
  %131 = load i32, i32* %23, align 4
  %132 = load i8*, i8** %24, align 8
  %133 = load i32*, i32** %25, align 8
  %134 = call %struct.TYPE_16__* @get_dir_status(%struct.walk_status_baton* %26, i8* %121, i32 %122, i32* null, i32* null, i32* null, %struct.svn_wc__db_info_t* %123, i32* %124, i32* %125, i32 %126, i32 %127, i32 %128, i32 %129, i8* %130, i32 %131, i8* %132, i32* %133)
  %135 = call i32 @SVN_ERR(%struct.TYPE_16__* %134)
  br label %171

136:                                              ; preds = %114, %108, %102, %97, %94
  %137 = load i8*, i8** %15, align 8
  %138 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %28, align 8
  %139 = load i32*, i32** %27, align 8
  %140 = load i32*, i32** %20, align 8
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %21, align 4
  %143 = load i8*, i8** %22, align 8
  %144 = load i32, i32* %23, align 4
  %145 = load i8*, i8** %24, align 8
  %146 = load i32*, i32** %25, align 8
  %147 = call %struct.TYPE_16__* @get_child_status(%struct.walk_status_baton* %26, i8* %137, %struct.svn_wc__db_info_t* %138, i32* %139, i32* %140, i32 %141, i32 %142, i8* %143, i32 %144, i8* %145, i32* %146)
  store %struct.TYPE_16__* %147, %struct.TYPE_16__** %29, align 8
  %148 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %28, align 8
  %149 = icmp ne %struct.svn_wc__db_info_t* %148, null
  br i1 %149, label %168, label %150

150:                                              ; preds = %136
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %152 = icmp ne %struct.TYPE_16__* %151, null
  br i1 %152, label %153, label %168

153:                                              ; preds = %150
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %161 = call i32 @svn_error_clear(%struct.TYPE_16__* %160)
  %162 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %163 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %164 = load i8*, i8** %15, align 8
  %165 = load i32*, i32** %25, align 8
  %166 = call i32 @svn_dirent_local_style(i8* %164, i32* %165)
  %167 = call %struct.TYPE_16__* @svn_error_createf(i64 %162, i32* null, i32 %163, i32 %166)
  store %struct.TYPE_16__* %167, %struct.TYPE_16__** %13, align 8
  br label %173

168:                                              ; preds = %153, %150, %136
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %170 = call i32 @SVN_ERR(%struct.TYPE_16__* %169)
  br label %171

171:                                              ; preds = %168, %120
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %172, %struct.TYPE_16__** %13, align 8
  br label %173

173:                                              ; preds = %171, %159, %66
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  ret %struct.TYPE_16__* %174
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @svn_wc_get_default_ignores(i32**, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__db_read_single_info(%struct.svn_wc__db_info_t**, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_16__* @svn_io_stat_dirent2(i32**, i8*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__db_externals_defined_below(i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @stat_wc_dirent_case_sensitive(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @get_dir_status(%struct.walk_status_baton*, i8*, i32, i32*, i32*, i32*, %struct.svn_wc__db_info_t*, i32*, i32*, i32, i32, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @get_child_status(%struct.walk_status_baton*, i8*, %struct.svn_wc__db_info_t*, i32*, i32*, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_error_createf(i64, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
