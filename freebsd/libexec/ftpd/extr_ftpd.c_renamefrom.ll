; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_renamefrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_renamefrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@guest = common dso_local global i64 0, align 8
@noguestmod = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Operation not permitted.\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"File exists, ready for destination name.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @renamefrom(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i64, i64* @guest, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i64, i64* @noguestmod, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @reply(i32 550, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %22

12:                                               ; preds = %7, %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @lstat(i8* %13, %struct.stat* %4)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @perror_reply(i32 550, i8* %17)
  store i8* null, i8** %2, align 8
  br label %22

19:                                               ; preds = %12
  %20 = call i32 @reply(i32 350, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %2, align 8
  br label %22

22:                                               ; preds = %19, %16, %10
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

declare dso_local i32 @reply(i32, i8*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
