; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-log.c___cvmx_log_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-log.c___cvmx_log_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_LOG_NUM_BUFFERS = common dso_local global i32 0, align 4
@cvmx_log_buffers = common dso_local global i32** null, align 8
@CVMX_LOG_BUFFER_SIZE = common dso_local global i32 0, align 4
@cvmx_log_buffer_head_ptr = common dso_local global i32* null, align 8
@cvmx_log_buffer_write_ptr = common dso_local global i32* null, align 8
@cvmx_log_buffer_end_ptr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__cvmx_log_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_log_initialize() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %24, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @CVMX_LOG_NUM_BUFFERS, align 4
  %5 = sub nsw i32 %4, 1
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = load i32**, i32*** @cvmx_log_buffers, align 8
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32*, i32** %8, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @CAST64(i32* %13)
  %15 = load i32**, i32*** @cvmx_log_buffers, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @CVMX_LOG_BUFFER_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %14, i32* %23, align 4
  br label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %2

27:                                               ; preds = %2
  %28 = call i32 @CAST64(i32* null)
  %29 = load i32**, i32*** @cvmx_log_buffers, align 8
  %30 = load i32, i32* @CVMX_LOG_NUM_BUFFERS, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @CVMX_LOG_BUFFER_SIZE, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %28, i32* %38, align 4
  %39 = load i32**, i32*** @cvmx_log_buffers, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32* %42, i32** @cvmx_log_buffer_head_ptr, align 8
  %43 = load i32**, i32*** @cvmx_log_buffers, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32* %46, i32** @cvmx_log_buffer_write_ptr, align 8
  %47 = load i32*, i32** @cvmx_log_buffer_write_ptr, align 8
  %48 = load i32, i32* @CVMX_LOG_BUFFER_SIZE, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = getelementptr inbounds i32, i32* %50, i64 -1
  store i32* %51, i32** @cvmx_log_buffer_end_ptr, align 8
  ret void
}

declare dso_local i32 @CAST64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
