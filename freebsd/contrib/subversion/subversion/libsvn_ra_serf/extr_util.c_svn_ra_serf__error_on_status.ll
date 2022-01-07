; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_svn_ra_serf__error_on_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_svn_ra_serf__error_on_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SVN_ERR_RA_DAV_RELOCATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Repository moved permanently to '%s'\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Repository moved temporarily to '%s'\00", align 1
@SVN_ERR_RA_DAV_FORBIDDEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Access to '%s' forbidden\00", align 1
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"'%s' path not found\00", align 1
@SVN_ERR_RA_DAV_METHOD_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"HTTP method is not allowed on '%s'\00", align 1
@SVN_ERR_FS_CONFLICT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"'%s' conflicts\00", align 1
@SVN_ERR_RA_DAV_PRECONDITION_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Precondition on '%s' failed\00", align 1
@SVN_ERR_FS_NO_LOCK_TOKEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"'%s': no lock token available\00", align 1
@SVN_ERR_RA_DAV_REQUEST_FAILED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [203 x i8] c"DAV request failed: 411 Content length required. The server or an intermediate proxy does not accept chunked encoding. Try setting 'http-chunked-requests' to 'auto' or 'no' in your client configuration.\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Unexpected server error %d '%s' on '%s'\00", align 1
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [47 x i8] c"The requested feature is not supported by '%s'\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Unexpected HTTP status %d '%s' on '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__error_on_status(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = bitcast %struct.TYPE_3__* %5 to i64*
  store i64 %0, i64* %8, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %72 [
    i32 301, label %11
    i32 302, label %11
    i32 303, label %11
    i32 307, label %11
    i32 308, label %11
    i32 403, label %24
    i32 404, label %29
    i32 405, label %34
    i32 409, label %39
    i32 412, label %44
    i32 423, label %49
    i32 411, label %54
    i32 500, label %58
    i32 501, label %67
  ]

11:                                               ; preds = %3, %3, %3, %3, %3
  %12 = load i32, i32* @SVN_ERR_RA_DAV_RELOCATED, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 301
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %20

18:                                               ; preds = %11
  %19 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load i8*, i8** %7, align 8
  %23 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %12, i32* null, i32 %21, i8* %22)
  store i32* %23, i32** %4, align 8
  br label %91

24:                                               ; preds = %3
  %25 = load i32, i32* @SVN_ERR_RA_DAV_FORBIDDEN, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i8*, i8** %6, align 8
  %28 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %25, i32* null, i32 %26, i8* %27)
  store i32* %28, i32** %4, align 8
  br label %91

29:                                               ; preds = %3
  %30 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i8*, i8** %6, align 8
  %33 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %30, i32* null, i32 %31, i8* %32)
  store i32* %33, i32** %4, align 8
  br label %91

34:                                               ; preds = %3
  %35 = load i32, i32* @SVN_ERR_RA_DAV_METHOD_NOT_ALLOWED, align 4
  %36 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i8*, i8** %6, align 8
  %38 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %35, i32* null, i32 %36, i8* %37)
  store i32* %38, i32** %4, align 8
  br label %91

39:                                               ; preds = %3
  %40 = load i32, i32* @SVN_ERR_FS_CONFLICT, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %42 = load i8*, i8** %6, align 8
  %43 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %40, i32* null, i32 %41, i8* %42)
  store i32* %43, i32** %4, align 8
  br label %91

44:                                               ; preds = %3
  %45 = load i32, i32* @SVN_ERR_RA_DAV_PRECONDITION_FAILED, align 4
  %46 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i8*, i8** %6, align 8
  %48 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %45, i32* null, i32 %46, i8* %47)
  store i32* %48, i32** %4, align 8
  br label %91

49:                                               ; preds = %3
  %50 = load i32, i32* @SVN_ERR_FS_NO_LOCK_TOKEN, align 4
  %51 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %52 = load i8*, i8** %6, align 8
  %53 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %50, i32* null, i32 %51, i8* %52)
  store i32* %53, i32** %4, align 8
  br label %91

54:                                               ; preds = %3
  %55 = load i32, i32* @SVN_ERR_RA_DAV_REQUEST_FAILED, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.8, i64 0, i64 0))
  %57 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %55, i32* null, i32 %56)
  store i32* %57, i32** %4, align 8
  br label %91

58:                                               ; preds = %3
  %59 = load i32, i32* @SVN_ERR_RA_DAV_REQUEST_FAILED, align 4
  %60 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %59, i32* null, i32 %60, i32 %62, i32 %64, i8* %65)
  store i32* %66, i32** %4, align 8
  br label %91

67:                                               ; preds = %3
  %68 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %69 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  %70 = load i8*, i8** %6, align 8
  %71 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %68, i32* null, i32 %69, i8* %70)
  store i32* %71, i32** %4, align 8
  br label %91

72:                                               ; preds = %3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %74, 300
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %78, 199
  br i1 %79, label %80, label %89

80:                                               ; preds = %76, %72
  %81 = load i32, i32* @SVN_ERR_RA_DAV_REQUEST_FAILED, align 4
  %82 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %81, i32* null, i32 %82, i32 %84, i32 %86, i8* %87)
  store i32* %88, i32** %4, align 8
  br label %91

89:                                               ; preds = %76
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %90, i32** %4, align 8
  br label %91

91:                                               ; preds = %89, %80, %67, %58, %54, %49, %44, %39, %34, %29, %24, %20
  %92 = load i32*, i32** %4, align 8
  ret i32* %92
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
