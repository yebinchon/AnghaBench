; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs.c_svn_fs_x__init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs.c_svn_fs_x__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32* }
%struct.TYPE_5__ = type { i64 }

@svn_fs_x__init.checklist = internal constant [4 x %struct.TYPE_6__] [%struct.TYPE_6__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32* inttoptr (i64 128 to i32*) }, %struct.TYPE_6__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32* inttoptr (i64 130 to i32*) }, %struct.TYPE_6__ { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32* inttoptr (i64 129 to i32*) }, %struct.TYPE_6__ zeroinitializer], align 16
@.str = private unnamed_addr constant [9 x i8] c"svn_subr\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"svn_delta\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"svn_fs_util\00", align 1
@SVN_VER_MAJOR = common dso_local global i64 0, align 8
@SVN_ERR_VERSION_MISMATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Unsupported FS loader version (%d) for fsx\00", align 1
@svn_ver_equal = common dso_local global i32 0, align 4
@library_vtable = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__init(%struct.TYPE_5__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SVN_VER_MAJOR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* @SVN_ERR_VERSION_MISMATCH, align 4
  %15 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32* @svn_error_createf(i32 %14, i32* null, i32 %15, i64 %18)
  store i32* %19, i32** %4, align 8
  br label %30

20:                                               ; preds = %3
  %21 = call i32 (...) @x_version()
  %22 = load i32, i32* @svn_ver_equal, align 4
  %23 = call i32 @svn_ver_check_list2(i32 %21, %struct.TYPE_6__* getelementptr inbounds ([4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* @svn_fs_x__init.checklist, i64 0, i64 0), i32 %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @svn_fs_x__batch_fsync_init(i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32**, i32*** %6, align 8
  store i32* @library_vtable, i32** %28, align 8
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %29, i32** %4, align 8
  br label %30

30:                                               ; preds = %20, %13
  %31 = load i32*, i32** %4, align 8
  ret i32* %31
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ver_check_list2(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @x_version(...) #1

declare dso_local i32 @svn_fs_x__batch_fsync_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
