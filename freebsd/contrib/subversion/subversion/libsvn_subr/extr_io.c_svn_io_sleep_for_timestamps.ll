; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_sleep_for_timestamps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_sleep_for_timestamps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_SLEEP_ENV_VAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@APR_USEC_PER_SEC = common dso_local global i32 0, align 4
@APR_FINFO_MTIME = common dso_local global i32 0, align 4
@APR_FINFO_LINK = common dso_local global i32 0, align 4
@SVN_HI_RES_SLEEP_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_io_sleep_for_timestamps(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @SVN_SLEEP_ENV_VAR, align 4
  %11 = call i8* @getenv(i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @apr_strnatcasecmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %71

19:                                               ; preds = %14, %2
  %20 = call i64 (...) @apr_time_now()
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @apr_time_sec(i64 %21)
  %23 = add nsw i64 %22, 1
  %24 = load i32, i32* @APR_USEC_PER_SEC, align 4
  %25 = sdiv i32 %24, 50
  %26 = call i64 @apr_time_make(i64 %23, i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %19
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @APR_FINFO_MTIME, align 4
  %32 = load i32, i32* @APR_FINFO_LINK, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @svn_io_stat(%struct.TYPE_3__* %9, i8* %30, i32 %33, i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @svn_error_clear(i32* %39)
  br label %52

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @APR_USEC_PER_SEC, align 4
  %45 = srem i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @apr_time_from_msec(i32 10)
  %50 = add nsw i64 %48, %49
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %38
  %53 = call i64 (...) @apr_time_now()
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %52, %19
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %71

59:                                               ; preds = %54
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = sub nsw i64 %60, %61
  %63 = icmp slt i64 %62, 1000
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @apr_sleep(i64 1000)
  br label %71

66:                                               ; preds = %59
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %5, align 8
  %69 = sub nsw i64 %67, %68
  %70 = call i32 @apr_sleep(i64 %69)
  br label %71

71:                                               ; preds = %18, %58, %66, %64
  ret void
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i64 @apr_strnatcasecmp(i8*, i8*) #1

declare dso_local i64 @apr_time_now(...) #1

declare dso_local i64 @apr_time_make(i64, i32) #1

declare dso_local i64 @apr_time_sec(i64) #1

declare dso_local i32* @svn_io_stat(%struct.TYPE_3__*, i8*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i64 @apr_time_from_msec(i32) #1

declare dso_local i32 @apr_sleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
