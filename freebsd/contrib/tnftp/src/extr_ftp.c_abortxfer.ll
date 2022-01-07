; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_ftp.c_abortxfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_ftp.c_abortxfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sigint_raised = common dso_local global i32 0, align 4
@mflag = common dso_local global i64 0, align 8
@abrtflag = common dso_local global i64 0, align 8
@direction = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"\0Areceive\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\0Asend\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"abortxfer: unknown direction `%s'\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c" aborted. Waiting for remote to finish abort.\0A\00", align 1
@ttyout = common dso_local global i32 0, align 4
@xferabort = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @abortxfer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [100 x i8], align 16
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @sigint_raised, align 4
  %5 = call i32 @alarmtimer(i32 0)
  store i64 0, i64* @mflag, align 8
  store i64 0, i64* @abrtflag, align 8
  %6 = load i32*, i32** @direction, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 114, label %9
    i32 115, label %12
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %11 = call i32 @strlcpy(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 100)
  br label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %14 = call i32 @strlcpy(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 100)
  br label %18

15:                                               ; preds = %1
  %16 = load i32*, i32** @direction, align 8
  %17 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %16)
  br label %18

18:                                               ; preds = %15, %12, %9
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %20 = call i64 @strlcat(i8* %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 100)
  store i64 %20, i64* %4, align 8
  %21 = load i32, i32* @ttyout, align 4
  %22 = call i32 @fileno(i32 %21)
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @write(i32 %22, i8* %23, i64 %24)
  %26 = load i32, i32* @xferabort, align 4
  %27 = call i32 @siglongjmp(i32 %26, i32 1)
  ret void
}

declare dso_local i32 @alarmtimer(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32*) #1

declare dso_local i64 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @siglongjmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
