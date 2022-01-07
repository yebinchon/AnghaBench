; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_path_split_if_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_path_split_if_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@APR_FINFO_TYPE = common dso_local global i32 0, align 4
@APR_REG = common dso_local global i64 0, align 8
@APR_DIR = common dso_local global i64 0, align 8
@SVN_EMPTY_PATH = common dso_local global i8* null, align 8
@SVN_ERR_BAD_FILENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"'%s' is neither a file nor a directory name\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @svn_path_split_if_file(i8* %0, i8** %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @svn_path_is_canonical(i8* %12, i32* %13)
  %15 = call i32 @SVN_ERR_ASSERT(i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @APR_FINFO_TYPE, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call %struct.TYPE_9__* @svn_io_stat(%struct.TYPE_10__* %10, i8* %16, i32 %17, i32* %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %11, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @APR_STATUS_IS_ENOENT(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %5, align 8
  br label %66

30:                                               ; preds = %22, %4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @APR_REG, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %33, %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %40 = call i32 @svn_error_clear(%struct.TYPE_9__* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = load i8**, i8*** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @svn_path_split(i8* %41, i8** %42, i8** %43, i32* %44)
  br label %64

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @APR_DIR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i8**, i8*** %7, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** @SVN_EMPTY_PATH, align 8
  %55 = load i8**, i8*** %8, align 8
  store i8* %54, i8** %55, align 8
  br label %63

56:                                               ; preds = %46
  %57 = load i32, i32* @SVN_ERR_BAD_FILENAME, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %59 = load i8*, i8** %6, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @svn_path_local_style(i8* %59, i32* %60)
  %62 = call %struct.TYPE_9__* @svn_error_createf(i32 %57, i32* null, i32 %58, i32 %61)
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %5, align 8
  br label %66

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %38
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %5, align 8
  br label %66

66:                                               ; preds = %64, %56, %28
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %67
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_path_is_canonical(i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_io_stat(%struct.TYPE_10__*, i8*, i32, i32*) #1

declare dso_local i32 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local i32 @svn_path_split(i8*, i8**, i8**, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_path_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
