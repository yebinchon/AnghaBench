; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_capture.c_db_capture_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_capture.c_db_capture_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32 }

@db_capture_bufoff = common dso_local global i64 0, align 8
@textdump_block_buffer = common dso_local global i64 0, align 8
@DDB_CAPTURE_FILENAME = common dso_local global i32 0, align 4
@db_capture_bufpadding = common dso_local global i64 0, align 8
@db_capture_buf = common dso_local global i64 0, align 8
@TEXTDUMP_BLOCKSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_capture_dump(%struct.dumperinfo* %0) #0 {
  %2 = alloca %struct.dumperinfo*, align 8
  %3 = alloca i64, align 8
  store %struct.dumperinfo* %0, %struct.dumperinfo** %2, align 8
  %4 = load i64, i64* @db_capture_bufoff, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %33

7:                                                ; preds = %1
  %8 = call i32 (...) @db_capture_zeropad()
  %9 = load i64, i64* @textdump_block_buffer, align 8
  %10 = load i32, i32* @DDB_CAPTURE_FILENAME, align 4
  %11 = load i64, i64* @db_capture_bufoff, align 8
  %12 = call i32 @textdump_mkustar(i64 %9, i32 %10, i64 %11)
  %13 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %14 = load i64, i64* @textdump_block_buffer, align 8
  %15 = call i32 @textdump_writenextblock(%struct.dumperinfo* %13, i64 %14)
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %28, %7
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @db_capture_bufoff, align 8
  %19 = load i64, i64* @db_capture_bufpadding, align 8
  %20 = add nsw i64 %18, %19
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %24 = load i64, i64* @db_capture_buf, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @textdump_writenextblock(%struct.dumperinfo* %23, i64 %26)
  br label %28

28:                                               ; preds = %22
  %29 = load i64, i64* @TEXTDUMP_BLOCKSIZE, align 8
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %3, align 8
  br label %16

32:                                               ; preds = %16
  store i64 0, i64* @db_capture_bufoff, align 8
  store i64 0, i64* @db_capture_bufpadding, align 8
  br label %33

33:                                               ; preds = %32, %6
  ret void
}

declare dso_local i32 @db_capture_zeropad(...) #1

declare dso_local i32 @textdump_mkustar(i64, i32, i64) #1

declare dso_local i32 @textdump_writenextblock(%struct.dumperinfo*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
