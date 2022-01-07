; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_utility.c_ttloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_utility.c_ttloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TD_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"td: ttloop\0D\0A\00", align 1
@nfrontp = common dso_local global i64 0, align 8
@nbackp = common dso_local global i64 0, align 8
@net = common dso_local global i32 0, align 4
@netibuf = common dso_local global i32 0, align 4
@ncc = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ttloop:  read: %m\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ttloop:  peer died: %m\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"td: ttloop read %d chars\0D\0A\00", align 1
@netip = common dso_local global i32 0, align 4
@ptyobuf = common dso_local global i32 0, align 4
@pbackp = common dso_local global i32 0, align 4
@pfrontp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttloop() #0 {
  %1 = load i32, i32* @TD_REPORT, align 4
  %2 = call i32 (i8*, ...) @output_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @DIAG(i32 %1, i32 %2)
  %4 = load i64, i64* @nfrontp, align 8
  %5 = load i64, i64* @nbackp, align 8
  %6 = sub nsw i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @netflush()
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* @net, align 4
  %12 = load i32, i32* @netibuf, align 4
  %13 = call i64 @read(i32 %11, i32 %12, i32 4)
  store i64 %13, i64* @ncc, align 8
  %14 = load i64, i64* @ncc, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @LOG_INFO, align 4
  %18 = call i32 @syslog(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %10
  %21 = load i64, i64* @ncc, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @LOG_INFO, align 4
  %25 = call i32 @syslog(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @TD_REPORT, align 4
  %30 = load i64, i64* @ncc, align 8
  %31 = call i32 (i8*, ...) @output_data(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %30)
  %32 = call i32 @DIAG(i32 %29, i32 %31)
  %33 = load i32, i32* @netibuf, align 4
  store i32 %33, i32* @netip, align 4
  %34 = call i32 (...) @telrcv()
  %35 = load i64, i64* @ncc, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @ptyobuf, align 4
  store i32 %38, i32* @pbackp, align 4
  store i32 %38, i32* @pfrontp, align 4
  %39 = call i32 (...) @telrcv()
  br label %40

40:                                               ; preds = %37, %28
  ret void
}

declare dso_local i32 @DIAG(i32, i32) #1

declare dso_local i32 @output_data(i8*, ...) #1

declare dso_local i32 @netflush(...) #1

declare dso_local i64 @read(i32, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @telrcv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
