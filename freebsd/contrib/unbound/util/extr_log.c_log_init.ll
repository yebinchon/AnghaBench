; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_log.c_log_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_log.c_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@key_created = common dso_local global i32 0, align 4
@logkey = common dso_local global i32 0, align 4
@log_lock = common dso_local global i32 0, align 4
@logfile = common dso_local global i32* null, align 8
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"switching log to %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not open logfile %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i64 0, align 8
@LOG_DAEMON = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@ident = common dso_local global i32 0, align 4
@logging_to_syslog = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_init(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @key_created, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  store i32 1, i32* @key_created, align 4
  %12 = call i32 @ub_thread_key_create(i32* @logkey, i32* null)
  %13 = call i32 @lock_quick_init(i32* @log_lock)
  br label %14

14:                                               ; preds = %11, %3
  %15 = call i32 @lock_quick_lock(i32* @log_lock)
  %16 = load i32*, i32** @logfile, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = call i32 @lock_quick_unlock(i32* @log_lock)
  %20 = load i32, i32* @VERB_QUERY, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %38

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8
  br label %36

35:                                               ; preds = %27, %24
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i8* [ %34, %33 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %35 ]
  br label %38

38:                                               ; preds = %36, %23
  %39 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %23 ], [ %37, %36 ]
  %40 = call i32 @verbose(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = call i32 @lock_quick_lock(i32* @log_lock)
  br label %42

42:                                               ; preds = %38, %14
  %43 = load i32*, i32** @logfile, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32*, i32** @logfile, align 8
  %47 = load i32*, i32** @stderr, align 8
  %48 = icmp ne i32* %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32*, i32** @logfile, align 8
  store i32* %50, i32** %8, align 8
  store i32* null, i32** @logfile, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @fclose(i32* %51)
  br label %53

53:                                               ; preds = %49, %45, %42
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56, %53
  %62 = load i32*, i32** @stderr, align 8
  store i32* %62, i32** @logfile, align 8
  %63 = call i32 @lock_quick_unlock(i32* @log_lock)
  br label %104

64:                                               ; preds = %56
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load i8*, i8** %4, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = call i64 @strncmp(i8* %74, i8* %75, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = load i8*, i8** %4, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %4, align 8
  br label %86

86:                                               ; preds = %80, %73, %67, %64
  %87 = load i8*, i8** %4, align 8
  %88 = call i32* @fopen(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %88, i32** %7, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = call i32 @lock_quick_unlock(i32* @log_lock)
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 @strerror(i32 %94)
  %96 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %93, i32 %95)
  br label %104

97:                                               ; preds = %86
  %98 = load i32*, i32** %7, align 8
  %99 = load i64, i64* @_IOLBF, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @setvbuf(i32* %98, i32* null, i32 %100, i32 0)
  %102 = load i32*, i32** %7, align 8
  store i32* %102, i32** @logfile, align 8
  %103 = call i32 @lock_quick_unlock(i32* @log_lock)
  br label %104

104:                                              ; preds = %97, %91, %61
  ret void
}

declare dso_local i32 @ub_thread_key_create(i32*, i32*) #1

declare dso_local i32 @lock_quick_init(i32*) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @log_err(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
