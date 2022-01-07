; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_svn_repos_hotcopy3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_svn_repos_hotcopy3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.fs_hotcopy_notify_baton_t = type { i8*, i64 }
%struct.hotcopy_ctx_t = type { i8*, i8*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Hotcopy source and destination are equal\00", align 1
@FALSE = common dso_local global i32 0, align 4
@hotcopy_structure = common dso_local global i32 0, align 4
@SVN_ERR_DIR_NOT_EMPTY = common dso_local global i64 0, align 8
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@fs_hotcopy_notify = common dso_local global i32* null, align 8
@SVN_REPOS__FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @svn_repos_hotcopy3(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4, i8* %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.fs_hotcopy_notify_baton_t, align 8
  %22 = alloca %struct.hotcopy_ctx_t, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  %26 = alloca %struct.TYPE_16__*, align 8
  %27 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32*, i32** %19, align 8
  %30 = call i32 @svn_dirent_get_absolute(i8** %23, i8* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i8*, i8** %12, align 8
  %33 = load i32*, i32** %19, align 8
  %34 = call i32 @svn_dirent_get_absolute(i8** %24, i8* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i8*, i8** %23, align 8
  %37 = load i8*, i8** %24, align 8
  %38 = call i64 @strcmp(i8* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %9
  %41 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %42 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %43 = call %struct.TYPE_17__* @svn_error_create(i32 %41, i32* null, i32 %42)
  store %struct.TYPE_17__* %43, %struct.TYPE_17__** %10, align 8
  br label %176

44:                                               ; preds = %9
  %45 = load i8*, i8** %23, align 8
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32*, i32** %19, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = call i32 @get_repos(%struct.TYPE_16__** %25, i8* %45, i32 %46, i32 %47, i32 %48, i32* null, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** %19, align 8
  %56 = call i32 @lock_db_logs_file(%struct.TYPE_16__* %53, i32 %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i8*, i8** %24, align 8
  %59 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %22, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %23, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %22, i32 0, i32 4
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* %14, align 4
  %64 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %22, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %17, align 4
  %66 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %22, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load i8*, i8** %18, align 8
  %68 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %22, i32 0, i32 1
  store i8* %67, i8** %68, align 8
  %69 = load i8*, i8** %23, align 8
  %70 = load i32, i32* @hotcopy_structure, align 4
  %71 = load i32*, i32** %19, align 8
  %72 = call i32 @svn_io_dir_walk2(i8* %69, i32 0, i32 %70, %struct.hotcopy_ctx_t* %22, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i8*, i8** %24, align 8
  %75 = load i32*, i32** %19, align 8
  %76 = call %struct.TYPE_16__* @create_svn_repos_t(i8* %74, i32* %75)
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %26, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %88 = load i32*, i32** %19, align 8
  %89 = call %struct.TYPE_17__* @create_locks(%struct.TYPE_16__* %87, i32* %88)
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %27, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %91 = icmp ne %struct.TYPE_17__* %90, null
  br i1 %91, label %92, label %108

92:                                               ; preds = %44
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SVN_ERR_DIR_NOT_EMPTY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %103 = call i32 @svn_error_clear(%struct.TYPE_17__* %102)
  br label %107

104:                                              ; preds = %95, %92
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %106 = call %struct.TYPE_17__* @svn_error_trace(%struct.TYPE_17__* %105)
  store %struct.TYPE_17__* %106, %struct.TYPE_17__** %10, align 8
  br label %176

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %44
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @APR_OS_DEFAULT, align 4
  %113 = load i32*, i32** %19, align 8
  %114 = call %struct.TYPE_17__* @svn_io_dir_make_sgid(i32 %111, i32 %112, i32* %113)
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %27, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %116 = icmp ne %struct.TYPE_17__* %115, null
  br i1 %116, label %117, label %133

117:                                              ; preds = %108
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @APR_STATUS_IS_EEXIST(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %128 = call i32 @svn_error_clear(%struct.TYPE_17__* %127)
  br label %132

129:                                              ; preds = %120, %117
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %131 = call %struct.TYPE_17__* @svn_error_trace(%struct.TYPE_17__* %130)
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %10, align 8
  br label %176

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132, %108
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %135 = load i32, i32* @TRUE, align 4
  %136 = load i32, i32* @FALSE, align 4
  %137 = load i32*, i32** %19, align 8
  %138 = call i32 @lock_repos(%struct.TYPE_16__* %134, i32 %135, i32 %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  %140 = load i64, i64* %15, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = load i32*, i32** @fs_hotcopy_notify, align 8
  br label %145

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32* [ %143, %142 ], [ null, %144 ]
  store i32* %146, i32** %20, align 8
  %147 = load i64, i64* %15, align 8
  %148 = getelementptr inbounds %struct.fs_hotcopy_notify_baton_t, %struct.fs_hotcopy_notify_baton_t* %21, i32 0, i32 1
  store i64 %147, i64* %148, align 8
  %149 = load i8*, i8** %16, align 8
  %150 = getelementptr inbounds %struct.fs_hotcopy_notify_baton_t, %struct.fs_hotcopy_notify_baton_t* %21, i32 0, i32 0
  store i8* %149, i8** %150, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32*, i32** %20, align 8
  %160 = load i32, i32* %17, align 4
  %161 = load i8*, i8** %18, align 8
  %162 = load i32*, i32** %19, align 8
  %163 = call i32 @svn_fs_hotcopy3(i32 %153, i32 %156, i32 %157, i32 %158, i32* %159, %struct.fs_hotcopy_notify_baton_t* %21, i32 %160, i8* %161, i32* %162)
  %164 = call i32 @SVN_ERR(i32 %163)
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SVN_REPOS__FORMAT, align 4
  %169 = load i32*, i32** %19, align 8
  %170 = call i32 @svn_dirent_join(i32 %167, i32 %168, i32* %169)
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %19, align 8
  %175 = call %struct.TYPE_17__* @svn_io_write_version_file(i32 %170, i32 %173, i32* %174)
  store %struct.TYPE_17__* %175, %struct.TYPE_17__** %10, align 8
  br label %176

176:                                              ; preds = %145, %129, %104, %40
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  ret %struct.TYPE_17__* %177
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_17__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @get_repos(%struct.TYPE_16__**, i8*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @lock_db_logs_file(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_io_dir_walk2(i8*, i32, i32, %struct.hotcopy_ctx_t*, i32*) #1

declare dso_local %struct.TYPE_16__* @create_svn_repos_t(i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @create_locks(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @svn_error_trace(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @svn_io_dir_make_sgid(i32, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EEXIST(i64) #1

declare dso_local i32 @lock_repos(%struct.TYPE_16__*, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_hotcopy3(i32, i32, i32, i32, i32*, %struct.fs_hotcopy_notify_baton_t*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_io_write_version_file(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
