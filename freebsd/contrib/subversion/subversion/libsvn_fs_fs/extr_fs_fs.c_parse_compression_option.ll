; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_parse_compression_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_parse_compression_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@compression_type_none = common dso_local global i32 0, align 4
@SVN_DELTA_COMPRESSION_LEVEL_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@compression_type_lz4 = common dso_local global i32 0, align 4
@SVN_DELTA_COMPRESSION_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@compression_type_zlib = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_BAD_CONFIG_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Invalid 'compression' value '%s' in the config\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*)* @parse_compression_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_compression_option(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @compression_type_none, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_NONE, align 4
  store i32 %18, i32* %9, align 4
  br label %67

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @compression_type_lz4, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, align 4
  store i32 %25, i32* %9, align 4
  br label %66

26:                                               ; preds = %19
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  store i8* %32, i8** %11, align 8
  %33 = load i32, i32* @compression_type_zlib, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, align 4
  store i32 %39, i32* %9, align 4
  br label %62

40:                                               ; preds = %30
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @svn_cstring_atoi(i32* %9, i8* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 9
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %45
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %53
  br label %61

59:                                               ; preds = %40
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %58
  br label %62

62:                                               ; preds = %61, %38
  br label %65

63:                                               ; preds = %26
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %62
  br label %66

66:                                               ; preds = %65, %23
  br label %67

67:                                               ; preds = %66, %16
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @SVN_ERR_BAD_CONFIG_VALUE, align 4
  %72 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i8*, i8** %7, align 8
  %74 = call i32* @svn_error_createf(i32 %71, i32* null, i32 %72, i8* %73)
  store i32* %74, i32** %4, align 8
  br label %81

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %80, i32** %4, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32*, i32** %4, align 8
  ret i32* %82
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoi(i32*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
