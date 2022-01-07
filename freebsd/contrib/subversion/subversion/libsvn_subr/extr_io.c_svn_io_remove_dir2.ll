; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_remove_dir2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_remove_dir2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Can't remove '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @svn_io_remove_dir2(i8* %0, i64 %1, %struct.TYPE_18__* (i8*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__* (i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_18__* (i8*)* %2, %struct.TYPE_18__* (i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_18__* (i8*)*, %struct.TYPE_18__* (i8*)** %9, align 8
  %20 = icmp ne %struct.TYPE_18__* (i8*)* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.TYPE_18__* (i8*)*, %struct.TYPE_18__* (i8*)** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call %struct.TYPE_18__* %22(i8* %23)
  %25 = call i32 @SVN_ERR(%struct.TYPE_18__* %24)
  br label %26

26:                                               ; preds = %21, %5
  %27 = load i32*, i32** %11, align 8
  %28 = call i32* @svn_pool_create(i32* %27)
  store i32* %28, i32** %13, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call %struct.TYPE_18__* @svn_io_get_dirents3(i32** %14, i8* %29, i32 %30, i32* %31, i32* %32)
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %12, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %35 = icmp ne %struct.TYPE_18__* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %26
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @APR_STATUS_IS_ENOENT(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @SVN__APR_STATUS_IS_ENOTDIR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45, %39
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %53 = call i32 @svn_error_clear(%struct.TYPE_18__* %52)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %54, %struct.TYPE_18__** %6, align 8
  br label %123

55:                                               ; preds = %45, %36
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %57 = call %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__* %56)
  store %struct.TYPE_18__* %57, %struct.TYPE_18__** %6, align 8
  br label %123

58:                                               ; preds = %26
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32* @apr_hash_first(i32* %59, i32* %60)
  store i32* %61, i32** %15, align 8
  br label %62

62:                                               ; preds = %114, %58
  %63 = load i32*, i32** %15, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %117

65:                                               ; preds = %62
  %66 = load i32*, i32** %15, align 8
  %67 = call i8* @apr_hash_this_key(i32* %66)
  store i8* %67, i8** %16, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call %struct.TYPE_17__* @apr_hash_this_val(i32* %68)
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %17, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i8* @svn_dirent_join(i8* %70, i8* %71, i32* %72)
  store i8* %73, i8** %18, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @svn_node_dir, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %65
  %80 = load i8*, i8** %18, align 8
  %81 = load i64, i64* @FALSE, align 8
  %82 = load %struct.TYPE_18__* (i8*)*, %struct.TYPE_18__* (i8*)** %9, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call %struct.TYPE_18__* @svn_io_remove_dir2(i8* %80, i64 %81, %struct.TYPE_18__* (i8*)* %82, i8* %83, i32* %84)
  %86 = call i32 @SVN_ERR(%struct.TYPE_18__* %85)
  br label %113

87:                                               ; preds = %65
  %88 = load %struct.TYPE_18__* (i8*)*, %struct.TYPE_18__* (i8*)** %9, align 8
  %89 = icmp ne %struct.TYPE_18__* (i8*)* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.TYPE_18__* (i8*)*, %struct.TYPE_18__* (i8*)** %9, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call %struct.TYPE_18__* %91(i8* %92)
  %94 = call i32 @SVN_ERR(%struct.TYPE_18__* %93)
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i8*, i8** %18, align 8
  %97 = load i64, i64* @FALSE, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = call %struct.TYPE_18__* @svn_io_remove_file2(i8* %96, i64 %97, i32* %98)
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %12, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = icmp ne %struct.TYPE_18__* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %107 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %108 = load i8*, i8** %18, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @svn_dirent_local_style(i8* %108, i32* %109)
  %111 = call %struct.TYPE_18__* @svn_error_createf(i32 %105, %struct.TYPE_18__* %106, i32 %107, i32 %110)
  store %struct.TYPE_18__* %111, %struct.TYPE_18__** %6, align 8
  br label %123

112:                                              ; preds = %95
  br label %113

113:                                              ; preds = %112, %79
  br label %114

114:                                              ; preds = %113
  %115 = load i32*, i32** %15, align 8
  %116 = call i32* @apr_hash_next(i32* %115)
  store i32* %116, i32** %15, align 8
  br label %62

117:                                              ; preds = %62
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @svn_pool_destroy(i32* %118)
  %120 = load i8*, i8** %7, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call %struct.TYPE_18__* @svn_io_dir_remove_nonrecursive(i8* %120, i32* %121)
  store %struct.TYPE_18__* %122, %struct.TYPE_18__** %6, align 8
  br label %123

123:                                              ; preds = %117, %102, %55, %51
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  ret %struct.TYPE_18__* %124
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_18__*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_18__* @svn_io_get_dirents3(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i64 @SVN__APR_STATUS_IS_ENOTDIR(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_17__* @apr_hash_this_val(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_io_remove_file2(i8*, i64, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_error_createf(i32, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_18__* @svn_io_dir_remove_nonrecursive(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
