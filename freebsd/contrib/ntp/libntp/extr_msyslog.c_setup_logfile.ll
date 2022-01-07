; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_msyslog.c_setup_logfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_msyslog.c_setup_logfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@syslog_fname = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot open log file %s, %m\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot reopen log file %s, %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_logfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** @syslog_fname, align 8
  %4 = icmp eq i8* null, %3
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* null, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @change_logfile(i8* %9, i32 %10)
  %12 = icmp eq i32 -1, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @msyslog(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %13, %8
  br label %31

18:                                               ; preds = %5, %1
  %19 = load i8*, i8** @syslog_fname, align 8
  %20 = icmp eq i8* null, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %31

22:                                               ; preds = %18
  %23 = load i8*, i8** @syslog_fname, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @change_logfile(i8* %23, i32 %24)
  %26 = icmp eq i32 -1, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load i8*, i8** @syslog_fname, align 8
  %30 = call i32 @msyslog(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %17, %21, %27, %22
  ret void
}

declare dso_local i32 @change_logfile(i8*, i32) #1

declare dso_local i32 @msyslog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
