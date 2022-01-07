; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf.c___printf_pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf.c___printf_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__printf_io = type { i32 }

@zeroes = common dso_local global i8* null, align 8
@blanks = common dso_local global i8* null, align 8
@PADSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__printf_pad(%struct.__printf_io* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.__printf_io*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.__printf_io* %0, %struct.__printf_io** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8*, i8** @zeroes, align 8
  store i8* %13, i8** %8, align 8
  br label %16

14:                                               ; preds = %3
  %15 = load i8*, i8** @blanks, align 8
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PADSIZE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @PADSIZE, align 4
  %28 = call i64 @__printf_puts(%struct.__printf_io* %25, i8* %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @PADSIZE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %20

36:                                               ; preds = %20
  %37 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @__printf_puts(%struct.__printf_io* %37, i8* %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %36, %16
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i64 @__printf_puts(%struct.__printf_io*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
