; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_gets.c___gets_unsafe.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_gets.c___gets_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__gets_unsafe.warned = internal global i32 0, align 4
@__gets_unsafe.w = internal constant [53 x i8] c"warning: this program uses gets(), which is unsafe.\0A\00", align 16
@stdin = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__gets_unsafe(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @stdin, align 4
  %7 = call i32 @FLOCKFILE_CANCELSAFE(i32 %6)
  %8 = load i32, i32* @stdin, align 4
  %9 = call i32 @ORIENT(i32 %8, i32 -1)
  %10 = load i32, i32* @__gets_unsafe.warned, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @STDERR_FILENO, align 4
  %14 = call i32 @_write(i32 %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__gets_unsafe.w, i64 0, i64 0), i32 52)
  store i32 1, i32* @__gets_unsafe.warned, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i8*, i8** %2, align 8
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %36, %15
  %18 = load i32, i32* @stdin, align 4
  %19 = call i32 @__sgetc(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = icmp ne i32 %19, 10
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @EOF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* null, i8** %5, align 8
  br label %40

30:                                               ; preds = %25
  br label %37

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  store i8 %33, i8* %34, align 1
  br label %36

36:                                               ; preds = %31
  br label %17

37:                                               ; preds = %30, %17
  %38 = load i8*, i8** %4, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %2, align 8
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %37, %29
  %41 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %42 = load i8*, i8** %5, align 8
  ret i8* %42
}

declare dso_local i32 @FLOCKFILE_CANCELSAFE(i32) #1

declare dso_local i32 @ORIENT(i32, i32) #1

declare dso_local i32 @_write(i32, i8*, i32) #1

declare dso_local i32 @__sgetc(i32) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
