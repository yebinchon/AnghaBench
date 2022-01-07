; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_hotcopy_structure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_hotcopy_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.hotcopy_ctx_t = type { i32, i64, i32, i32, i32 (i32)* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_REPOS__DB_DIR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_12__* null, align 8
@SVN_REPOS__LOCK_DIR = common dso_local global i32 0, align 4
@SVN_REPOS__FORMAT = common dso_local global i32 0, align 4
@APR_DIR = common dso_local global i64 0, align 8
@SVN_ERR_DIR_NOT_EMPTY = common dso_local global i64 0, align 8
@APR_REG = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@APR_LNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i8*, i8*, %struct.TYPE_13__*, i32*)* @hotcopy_structure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @hotcopy_structure(i8* %0, i8* %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hotcopy_ctx_t*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.hotcopy_ctx_t*
  store %struct.hotcopy_ctx_t* %15, %struct.hotcopy_ctx_t** %10, align 8
  %16 = load %struct.hotcopy_ctx_t*, %struct.hotcopy_ctx_t** %10, align 8
  %17 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %16, i32 0, i32 4
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = icmp ne i32 (i32)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load %struct.hotcopy_ctx_t*, %struct.hotcopy_ctx_t** %10, align 8
  %22 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %21, i32 0, i32 4
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.hotcopy_ctx_t*, %struct.hotcopy_ctx_t** %10, align 8
  %25 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %23(i32 %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  br label %29

29:                                               ; preds = %20, %4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = load %struct.hotcopy_ctx_t*, %struct.hotcopy_ctx_t** %10, align 8
  %33 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %75

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.hotcopy_ctx_t*, %struct.hotcopy_ctx_t** %10, align 8
  %40 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  store i8* %44, i8** %11, align 8
  %45 = load i32, i32* @SVN_REPOS__DB_DIR, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @svn_dirent_get_longest_ancestor(i32 %45, i8* %46, i32* %47)
  %49 = load i32, i32* @SVN_REPOS__DB_DIR, align 4
  %50 = call i64 @svn_path_compare_paths(i32 %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %5, align 8
  br label %136

54:                                               ; preds = %37
  %55 = load i32, i32* @SVN_REPOS__LOCK_DIR, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @svn_dirent_get_longest_ancestor(i32 %55, i8* %56, i32* %57)
  %59 = load i32, i32* @SVN_REPOS__LOCK_DIR, align 4
  %60 = call i64 @svn_path_compare_paths(i32 %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %5, align 8
  br label %136

64:                                               ; preds = %54
  %65 = load i32, i32* @SVN_REPOS__FORMAT, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @svn_dirent_get_longest_ancestor(i32 %65, i8* %66, i32* %67)
  %69 = load i32, i32* @SVN_REPOS__FORMAT, align 4
  %70 = call i64 @svn_path_compare_paths(i32 %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %5, align 8
  br label %136

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %36
  %76 = load %struct.hotcopy_ctx_t*, %struct.hotcopy_ctx_t** %10, align 8
  %77 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i8* @svn_dirent_join(i32 %78, i8* %79, i32* %80)
  store i8* %81, i8** %12, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @APR_DIR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %75
  %88 = load i8*, i8** %12, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call %struct.TYPE_12__* @create_repos_dir(i8* %88, i32* %89)
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %13, align 8
  %91 = load %struct.hotcopy_ctx_t*, %struct.hotcopy_ctx_t** %10, align 8
  %92 = getelementptr inbounds %struct.hotcopy_ctx_t, %struct.hotcopy_ctx_t* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %87
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %97 = icmp ne %struct.TYPE_12__* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SVN_ERR_DIR_NOT_EMPTY, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %106 = call i32 @svn_error_clear(%struct.TYPE_12__* %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %13, align 8
  br label %108

108:                                              ; preds = %104, %98, %95, %87
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %110 = call %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__* %109)
  store %struct.TYPE_12__* %110, %struct.TYPE_12__** %5, align 8
  br label %136

111:                                              ; preds = %75
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @APR_REG, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i8*, i8** %7, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* @TRUE, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = call %struct.TYPE_12__* @svn_io_copy_file(i8* %118, i8* %119, i32 %120, i32* %121)
  store %struct.TYPE_12__* %122, %struct.TYPE_12__** %5, align 8
  br label %136

123:                                              ; preds = %111
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @APR_LNK, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i8*, i8** %7, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call %struct.TYPE_12__* @svn_io_copy_link(i8* %130, i8* %131, i32* %132)
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %5, align 8
  br label %136

134:                                              ; preds = %123
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %135, %struct.TYPE_12__** %5, align 8
  br label %136

136:                                              ; preds = %134, %129, %117, %108, %72, %62, %52
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %137
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @svn_path_compare_paths(i32, i32) #1

declare dso_local i32 @svn_dirent_get_longest_ancestor(i32, i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @create_repos_dir(i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @svn_io_copy_file(i8*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_io_copy_link(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
