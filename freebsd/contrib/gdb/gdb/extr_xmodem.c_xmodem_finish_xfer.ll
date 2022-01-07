; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xmodem.c_xmodem_finish_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xmodem.c_xmodem_finish_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\04\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"xmodem_finish_xfer: Transfer aborted by receiver.\00", align 1
@gdb_stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"xmodem_send_packet: Got unexpected character %c (0%o)\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"xmodem_finish_xfer:  Excessive retries.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmodem_finish_xfer(%struct.serial* %0) #0 {
  %2 = alloca %struct.serial*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.serial* %0, %struct.serial** %2, align 8
  store i32 10, i32* %3, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = load %struct.serial*, %struct.serial** %2, align 8
  %10 = call i32 @serial_write(%struct.serial* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %11 = load %struct.serial*, %struct.serial** %2, align 8
  %12 = call i32 @readchar(%struct.serial* %11, i32 3)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %18 [
    i32 130, label %14
    i32 128, label %15
    i32 129, label %16
  ]

14:                                               ; preds = %8
  br label %28

15:                                               ; preds = %8
  br label %23

16:                                               ; preds = %8
  %17 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %8, %16
  %19 = load i32, i32* @gdb_stderr, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @fprintf_unfiltered(i32 %19, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %3, align 4
  br label %5

26:                                               ; preds = %5
  %27 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32 @serial_write(%struct.serial*, i8*, i32) #1

declare dso_local i32 @readchar(%struct.serial*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
