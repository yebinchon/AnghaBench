; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_svn_fs_x__read_rep_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_svn_fs_x__read_rep_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_6__ = type { i8*, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@REP_DELTA = common dso_local global i32 0, align 4
@svn_fs_x__rep_self_delta = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_x__rep_delta = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Malformed representation header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__read_rep_header(%struct.TYPE_7__** %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %33 = load i32, i32* @REP_DELTA, align 4
  %34 = call i64 @strcmp(i8* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load i32, i32* @svn_fs_x__rep_self_delta, align 4
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %41, i32** %5, align 8
  br label %94

42:                                               ; preds = %4
  %43 = load i32, i32* @svn_fs_x__rep_delta, align 4
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %12, align 8
  %50 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12)
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* @REP_DELTA, align 4
  %56 = call i64 @strcmp(i8* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %42
  br label %90

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = call i32 @parse_revnum(i32* %62, i8** %12)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %90

69:                                               ; preds = %59
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @svn_cstring_atoi64(i64* %13, i8* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i64 %73, i64* %76, align 8
  %77 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12)
  store i8* %77, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %69
  br label %90

81:                                               ; preds = %69
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @svn_cstring_atoi64(i64* %13, i8* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i64, i64* %13, align 8
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %89, i32** %5, align 8
  br label %94

90:                                               ; preds = %80, %68, %58
  %91 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %92 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %93 = call i32* @svn_error_createf(i32 %91, i32* null, i32 %92)
  store i32* %93, i32** %5, align 8
  br label %94

94:                                               ; preds = %90, %81, %36
  %95 = load i32*, i32** %5, align 8
  ret i32* %95
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
