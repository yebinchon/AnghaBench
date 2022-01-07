; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_makedir.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_makedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@guest = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"MKD command successful.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makedir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @LOGCMD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = load i64, i64* @guest, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @filename_check(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %27

12:                                               ; preds = %7, %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @mkdir(i8* %13, i32 511)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @perror_reply(i32 550, i8* %17)
  br label %27

19:                                               ; preds = %12
  %20 = load i64, i64* @guest, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @chmod(i8* %23, i32 448)
  br label %25

25:                                               ; preds = %22, %19
  %26 = call i32 @reply(i32 257, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %11, %25, %16
  ret void
}

declare dso_local i32 @LOGCMD(i8*, i8*) #1

declare dso_local i64 @filename_check(i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i32 @reply(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
