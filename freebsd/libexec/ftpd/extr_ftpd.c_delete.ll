; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@guest = common dso_local global i64 0, align 8
@noguestmod = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Operation not permitted.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DELE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @LOGCMD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @lstat(i8* %6, %struct.stat* %3)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @perror_reply(i32 550, i8* %10)
  br label %43

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @S_ISDIR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @rmdir(i8* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @perror_reply(i32 550, i8* %22)
  br label %43

24:                                               ; preds = %17
  br label %41

25:                                               ; preds = %12
  %26 = load i64, i64* @guest, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i64, i64* @noguestmod, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @reply(i32 550, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %43

33:                                               ; preds = %28, %25
  %34 = load i8*, i8** %2, align 8
  %35 = call i64 @unlink(i8* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @perror_reply(i32 550, i8* %38)
  br label %43

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %24
  %42 = call i32 @ack(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37, %31, %21, %9
  ret void
}

declare dso_local i32 @LOGCMD(i8*, i8*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @reply(i32, i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @ack(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
