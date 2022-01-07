; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_is_switched.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_is_switched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*, i32*)* @db_is_switched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @db_is_switched(i32* %0, i32* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @read_info(i64* %12, i32* %26, i32* null, i8** %14, i64* %13, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %27, i8* %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %5
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40, %36, %5
  %45 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %46 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load i32*, i32** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @path_for_error_message(i32* %47, i8* %48, i32* %49)
  %51 = call i32* @svn_error_createf(i32 %45, i32* null, i32 %46, i32 %50)
  store i32* %51, i32** %6, align 8
  br label %98

52:                                               ; preds = %40
  %53 = load i8*, i8** %14, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @FALSE, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %6, align 8
  br label %98

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %6, align 8
  br label %98

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @svn_relpath_split(i8** %16, i8** %15, i8* %70, i32* %71)
  %73 = load i32*, i32** %9, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @svn_wc__db_base_get_info_internal(i32* null, i32* null, i32* null, i8** %18, i64* %17, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %73, i8* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %17, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i32, i32* @TRUE, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  br label %96

85:                                               ; preds = %69
  %86 = load i8*, i8** %18, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i8* @svn_relpath_join(i8* %86, i8* %87, i32* %88)
  store i8* %89, i8** %19, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = call i64 @strcmp(i8* %90, i8* %91)
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %85, %82
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %97, i32** %6, align 8
  br label %98

98:                                               ; preds = %96, %67, %61, %44
  %99 = load i32*, i32** %6, align 8
  ret i32* %99
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_info(i64*, i32*, i32*, i8**, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(i32*, i8*, i32*) #1

declare dso_local i32 @svn_relpath_split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info_internal(i32*, i32*, i32*, i8**, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
