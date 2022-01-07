; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xmodem.c_xmodem_init_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xmodem.c_xmodem_init_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i32 }

@blknum = common dso_local global i32 0, align 4
@crcflag = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"xmodem_init_xfer: Got unexpected character %c (0%o)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Got a CANCEL from the target.\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"xmodem_init_xfer:  Too many unexpected characters.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmodem_init_xfer(%struct.serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.serial* %0, %struct.serial** %3, align 8
  store i32 1, i32* @blknum, align 4
  store i32 0, i32* @crcflag, align 4
  %6 = call i32 (...) @crcinit()
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 10
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load %struct.serial*, %struct.serial** %3, align 8
  %12 = call i32 @readchar(%struct.serial* %11, i32 6)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %16 [
    i32 67, label %14
    i32 128, label %15
    i32 129, label %21
  ]

14:                                               ; preds = %10
  store i32 1, i32* @crcflag, align 4
  br label %15

15:                                               ; preds = %10, %14
  store i32 0, i32* %2, align 4
  br label %29

16:                                               ; preds = %10
  %17 = load i32, i32* @gdb_stderr, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %17, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %24

21:                                               ; preds = %10
  %22 = load i32, i32* @gdb_stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %7

27:                                               ; preds = %7
  %28 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @crcinit(...) #1

declare dso_local i32 @readchar(%struct.serial*, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
