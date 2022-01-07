; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_makedir.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_makedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@guest = common dso_local global i64 0, align 8
@noguestmkd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Operation not permitted.\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Ran out of memory.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\22%s\22 directory created.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makedir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @LOGCMD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i64, i64* @guest, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i64, i64* @noguestmkd, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (i32, i8*, ...) @reply(i32 550, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %32

13:                                               ; preds = %8, %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @mkdir(i8* %14, i32 511)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @perror_reply(i32 550, i8* %18)
  br label %31

20:                                               ; preds = %13
  %21 = load i8*, i8** %2, align 8
  %22 = call i8* @doublequote(i8* %21)
  store i8* %22, i8** %3, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @fatalerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i32, i8*, ...) @reply(i32 257, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @free(i8* %29)
  br label %31

31:                                               ; preds = %26, %17
  br label %32

32:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @LOGCMD(i8*, i8*) #1

declare dso_local i32 @reply(i32, i8*, ...) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i8* @doublequote(i8*) #1

declare dso_local i32 @fatalerror(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
