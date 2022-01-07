; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_svn_fs_fs__read_rep_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_svn_fs_fs__read_rep_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_6__ = type { i8*, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@REP_PLAIN = common dso_local global i32 0, align 4
@svn_fs_fs__rep_plain = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@REP_DELTA = common dso_local global i32 0, align 4
@svn_fs_fs__rep_self_delta = common dso_local global i32 0, align 4
@svn_fs_fs__rep_delta = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Malformed representation header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__read_rep_header(%struct.TYPE_7__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @svn_stream_readline(i32* %16, %struct.TYPE_6__** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call %struct.TYPE_7__* @apr_pcalloc(i32* %20, i32 32)
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  store i64 %26, i64* %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @REP_PLAIN, align 4
  %34 = call i64 @strcmp(i8* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load i32, i32* @svn_fs_fs__rep_plain, align 4
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %41, i32** %5, align 8
  br label %107

42:                                               ; preds = %4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @REP_DELTA, align 4
  %47 = call i64 @strcmp(i8* %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @svn_fs_fs__rep_self_delta, align 4
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %5, align 8
  br label %107

55:                                               ; preds = %42
  %56 = load i32, i32* @svn_fs_fs__rep_delta, align 4
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %12, align 8
  %63 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* @REP_DELTA, align 4
  %69 = call i64 @strcmp(i8* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %55
  br label %103

72:                                               ; preds = %66
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = call i32 @parse_revnum(i32* %75, i8** %12)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12)
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  br label %103

82:                                               ; preds = %72
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @svn_cstring_atoi64(i64* %13, i8* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  %90 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12)
  store i8* %90, i8** %11, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %82
  br label %103

94:                                               ; preds = %82
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @svn_cstring_atoi64(i64* %13, i8* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i64, i64* %13, align 8
  %99 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %102, i32** %5, align 8
  br label %107

103:                                              ; preds = %93, %81, %71
  %104 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %105 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %106 = call i32* @svn_error_createf(i32 %104, i32* null, i32 %105)
  store i32* %106, i32** %5, align 8
  br label %107

107:                                              ; preds = %103, %94, %49, %36
  %108 = load i32*, i32** %5, align 8
  ret i32* %108
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_readline(i32*, %struct.TYPE_6__**, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @apr_pcalloc(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @svn_cstring_tokenize(i8*, i8**) #1

declare dso_local i32 @parse_revnum(i32*, i8**) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
