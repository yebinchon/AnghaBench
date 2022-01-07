; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_lock.c_check_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_lock.c_check_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.lock_baton = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_FS_OUT_OF_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Path '%s' doesn't exist in HEAD revision\00", align 1
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No such revision %ld\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Lock failed: newer version of '%s' exists\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, %struct.TYPE_3__*, %struct.lock_baton*, i32*, i64, i32*)* @check_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_lock(i32** %0, i8* %1, %struct.TYPE_3__* %2, %struct.lock_baton* %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.lock_baton*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store i32** %0, i32*** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %11, align 8
  store %struct.lock_baton* %3, %struct.lock_baton** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32*, i32** @SVN_NO_ERROR, align 8
  %20 = load i32**, i32*** %9, align 8
  store i32* %19, i32** %20, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = call i32 @svn_fs_fs__check_path(i64* %16, i32* %21, i8* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i64, i64* %16, align 8
  %27 = load i64, i64* @svn_node_dir, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %7
  %30 = load %struct.lock_baton*, %struct.lock_baton** %12, align 8
  %31 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call i32* @SVN_FS__ERR_NOT_FILE(i32 %32, i8* %33)
  %35 = load i32**, i32*** %9, align 8
  store i32* %34, i32** %35, align 8
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %36, i32** %8, align 8
  br label %140

37:                                               ; preds = %7
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* @svn_node_none, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @SVN_IS_VALID_REVNUM(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* @SVN_ERR_FS_OUT_OF_DATE, align 4
  %49 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** %10, align 8
  %51 = call i32* @svn_error_createf(i32 %48, i32* null, i32 %49, i8* %50)
  %52 = load i32**, i32*** %9, align 8
  store i32* %51, i32** %52, align 8
  br label %59

53:                                               ; preds = %41
  %54 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %55 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %56 = load i8*, i8** %10, align 8
  %57 = call i32* @svn_error_createf(i32 %54, i32* null, i32 %55, i8* %56)
  %58 = load i32**, i32*** %9, align 8
  store i32* %57, i32** %58, align 8
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %60, i32** %8, align 8
  br label %140

61:                                               ; preds = %37
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @SVN_IS_VALID_REVNUM(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %113

67:                                               ; preds = %61
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %75 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32* @svn_error_createf(i32 %74, i32* null, i32 %75, i8* %79)
  %81 = load i32**, i32*** %9, align 8
  store i32* %80, i32** %81, align 8
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %8, align 8
  br label %140

83:                                               ; preds = %67
  %84 = load i32*, i32** %13, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @svn_fs_fs__node_created_rev(i64* %18, i32* %84, i8* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i64, i64* %18, align 8
  %90 = call i64 @SVN_IS_VALID_REVNUM(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %83
  %93 = load i32, i32* @SVN_ERR_FS_OUT_OF_DATE, align 4
  %94 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %95 = load i8*, i8** %10, align 8
  %96 = call i32* @svn_error_createf(i32 %93, i32* null, i32 %94, i8* %95)
  %97 = load i32**, i32*** %9, align 8
  store i32* %96, i32** %97, align 8
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %8, align 8
  br label %140

99:                                               ; preds = %83
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %18, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load i32, i32* @SVN_ERR_FS_OUT_OF_DATE, align 4
  %107 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i8*, i8** %10, align 8
  %109 = call i32* @svn_error_createf(i32 %106, i32* null, i32 %107, i8* %108)
  %110 = load i32**, i32*** %9, align 8
  store i32* %109, i32** %110, align 8
  %111 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %111, i32** %8, align 8
  br label %140

112:                                              ; preds = %99
  br label %113

113:                                              ; preds = %112, %61
  %114 = load %struct.lock_baton*, %struct.lock_baton** %12, align 8
  %115 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* @TRUE, align 4
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 @get_lock_helper(i32 %116, i32** %17, i8* %117, i32 %118, i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load i32*, i32** %17, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %138

124:                                              ; preds = %113
  %125 = load %struct.lock_baton*, %struct.lock_baton** %12, align 8
  %126 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %124
  %130 = load %struct.lock_baton*, %struct.lock_baton** %12, align 8
  %131 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %17, align 8
  %134 = call i32* @SVN_FS__ERR_PATH_ALREADY_LOCKED(i32 %132, i32* %133)
  %135 = load i32**, i32*** %9, align 8
  store i32* %134, i32** %135, align 8
  %136 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %136, i32** %8, align 8
  br label %140

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %113
  %139 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %139, i32** %8, align 8
  br label %140

140:                                              ; preds = %138, %129, %105, %92, %73, %59, %29
  %141 = load i32*, i32** %8, align 8
  ret i32* %141
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32* @SVN_FS__ERR_NOT_FILE(i32, i8*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_fs__node_created_rev(i64*, i32*, i8*, i32*) #1

declare dso_local i32 @get_lock_helper(i32, i32**, i8*, i32, i32*) #1

declare dso_local i32* @SVN_FS__ERR_PATH_ALREADY_LOCKED(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
