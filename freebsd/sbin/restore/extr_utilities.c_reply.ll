; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s? [yn] \00", align 1
@terminal = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reply(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i32, i32* @stderr, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fflush(i32 %9)
  %11 = load i32, i32* @terminal, align 4
  %12 = call signext i8 @getc(i32 %11)
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %30, %5
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 10
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* @terminal, align 4
  %19 = call signext i8 @getc(i32 %18)
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 10
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @EOF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @FAIL, align 4
  store i32 %29, i32* %2, align 4
  br label %47

30:                                               ; preds = %24
  br label %14

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 121
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 110
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %5, label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 121
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @GOOD, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @FAIL, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43, %28
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local signext i8 @getc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
