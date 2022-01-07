; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_11.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_11.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"EST\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fire\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"tz\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@test_syslog_open = common dso_local global i32 0, align 4
@test_syslog_send = common dso_local global i32 0, align 4
@test_syslog_close = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"test-program\00", align 1
@LOG_PERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"3.1.4\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@LOG_KERN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"animal-status\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"The {:animal} is {:state}\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"snake\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"loose\00", align 1
@LOG_MAIL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"animal-consumed\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"My {:animal} ate your {:pet}\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"hamster\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"animal-talk\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"{:count/%d} {:animal} said {:quote}\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"owl\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"\22e=m\\c[2]\22\00", align 1
@LOG_LOCAL4 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"ID47\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"{e:iut/%u}An {:event-source} {:event-id/%u} log entry\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"application\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @xo_parse_args(i32 %9, i8** %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %103

15:                                               ; preds = %2
  store i32 1, i32* %4, align 4
  br label %16

16:                                               ; preds = %59, %15
  %17 = load i8**, i8*** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %62

23:                                               ; preds = %16
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @xo_streq(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %58

32:                                               ; preds = %23
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @xo_streq(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %57

41:                                               ; preds = %32
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @xo_streq(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %8, align 8
  br label %56

56:                                               ; preds = %49, %41
  br label %57

57:                                               ; preds = %56, %40
  br label %58

58:                                               ; preds = %57, %31
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %16

62:                                               ; preds = %16
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %63, i32 1)
  %65 = call i32 (...) @tzset()
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @test_syslog_open, align 4
  %70 = load i32, i32* @test_syslog_send, align 4
  %71 = load i32, i32* @test_syslog_close, align 4
  %72 = call i32 @xo_set_syslog_handler(i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = call i32 @xo_set_unit_test_mode(i32 1)
  %78 = load i32, i32* @LOG_PERROR, align 4
  %79 = call i32 @xo_open_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %78, i32 0)
  br label %80

80:                                               ; preds = %76, %73
  %81 = call i32 @xo_set_version(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %82 = call i32 @xo_set_syslog_enterprise_id(i32 42)
  %83 = call i32 @xo_open_container_h(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %84 = load i32, i32* @LOG_INFO, align 4
  %85 = load i32, i32* @LOG_KERN, align 4
  %86 = or i32 %84, %85
  %87 = call i32 (i32, i8*, i8*, ...) @xo_syslog(i32 %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %88 = load i32, i32* @LOG_INFO, align 4
  %89 = load i32, i32* @LOG_MAIL, align 4
  %90 = or i32 %88, %89
  %91 = call i32 (i32, i8*, i8*, ...) @xo_syslog(i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %92 = load i32, i32* @LOG_NOTICE, align 4
  %93 = load i32, i32* @LOG_DAEMON, align 4
  %94 = or i32 %92, %93
  %95 = call i32 (i32, i8*, i8*, ...) @xo_syslog(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %96 = call i32 @xo_set_syslog_enterprise_id(i32 32473)
  %97 = load i32, i32* @LOG_LOCAL4, align 4
  %98 = load i32, i32* @LOG_NOTICE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 (i32, i8*, i8*, ...) @xo_syslog(i32 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 1011)
  %101 = call i32 @xo_close_container_h(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %102 = call i32 (...) @xo_finish()
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %80, %14
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @xo_parse_args(i32, i8**) #1

declare dso_local i64 @xo_streq(i8*, i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @tzset(...) #1

declare dso_local i32 @xo_set_syslog_handler(i32, i32, i32) #1

declare dso_local i32 @xo_set_unit_test_mode(i32) #1

declare dso_local i32 @xo_open_log(i8*, i32, i32) #1

declare dso_local i32 @xo_set_version(i8*) #1

declare dso_local i32 @xo_set_syslog_enterprise_id(i32) #1

declare dso_local i32 @xo_open_container_h(i32*, i8*) #1

declare dso_local i32 @xo_syslog(i32, i8*, i8*, ...) #1

declare dso_local i32 @xo_close_container_h(i32*, i8*) #1

declare dso_local i32 @xo_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
