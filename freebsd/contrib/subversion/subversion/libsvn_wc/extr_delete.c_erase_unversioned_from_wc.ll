; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_delete.c_erase_unversioned_from_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_delete.c_erase_unversioned_from_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_BAD_FILENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"'%s' does not exist\00", align 1
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unsupported node kind for path '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, i8*, i32*)* @erase_unversioned_from_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @erase_unversioned_from_wc(i8* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %11, align 8
  %17 = call i32* @svn_io_remove_file2(i8* %14, i32 %15, i32* %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %80

20:                                               ; preds = %5
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @svn_error_clear(i32* %21)
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32* @svn_io_remove_dir2(i8* %23, i32 %24, i32 %25, i8* %26, i32* %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %79

31:                                               ; preds = %20
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @svn_error_clear(i32* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32* @svn_io_check_path(i8* %34, i64* %13, i32* %35)
  %37 = call i32 @SVN_ERR(i32* %36)
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @svn_node_file, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i32* @svn_io_remove_file2(i8* %42, i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32* %45)
  br label %78

47:                                               ; preds = %31
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @svn_node_dir, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32* @svn_io_remove_dir2(i8* %52, i32 %53, i32 %54, i8* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32* %57)
  br label %77

59:                                               ; preds = %47
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @svn_node_none, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32, i32* @SVN_ERR_BAD_FILENAME, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** %7, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @svn_dirent_local_style(i8* %66, i32* %67)
  %69 = call i32* @svn_error_createf(i32 %64, i32* null, i32 %65, i32 %68)
  store i32* %69, i32** %6, align 8
  br label %82

70:                                               ; preds = %59
  %71 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %72 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i8*, i8** %7, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @svn_dirent_local_style(i8* %73, i32* %74)
  %76 = call i32* @svn_error_createf(i32 %71, i32* null, i32 %72, i32 %75)
  store i32* %76, i32** %6, align 8
  br label %82

77:                                               ; preds = %51
  br label %78

78:                                               ; preds = %77, %41
  br label %79

79:                                               ; preds = %78, %20
  br label %80

80:                                               ; preds = %79, %5
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %6, align 8
  br label %82

82:                                               ; preds = %80, %70, %63
  %83 = load i32*, i32** %6, align 8
  ret i32* %83
}

declare dso_local i32* @svn_io_remove_file2(i8*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_io_remove_dir2(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
