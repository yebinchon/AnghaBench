; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_coder.c_coder_passthru.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_coder.c_coder_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@strm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@user_abort = common dso_local global i64 0, align 8
@in_buf = common dso_local global i32 0, align 4
@IO_BUFFER_SIZE = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @coder_passthru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coder_passthru(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @strm, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = load i64, i64* @user_abort, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %34

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @strm, i32 0, i32 0), align 8
  %14 = call i64 @io_write(i32* %12, i32* @in_buf, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %34

17:                                               ; preds = %11
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @strm, i32 0, i32 0), align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @strm, i32 0, i32 1), align 8
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @strm, i32 0, i32 1), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @strm, i32 0, i32 1), align 8
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @strm, i32 0, i32 2), align 4
  %24 = call i32 (...) @message_progress_update()
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @IO_BUFFER_SIZE, align 4
  %27 = call i64 @io_read(i32* %25, i32* @in_buf, i32 %26)
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @strm, i32 0, i32 0), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @strm, i32 0, i32 0), align 8
  %29 = load i64, i64* @SIZE_MAX, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %34

32:                                               ; preds = %17
  br label %4

33:                                               ; preds = %4
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %31, %16, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @io_write(i32*, i32*, i64) #1

declare dso_local i32 @message_progress_update(...) #1

declare dso_local i64 @io_read(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
