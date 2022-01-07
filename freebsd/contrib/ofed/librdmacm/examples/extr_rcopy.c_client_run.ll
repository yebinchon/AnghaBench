; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_client_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_client_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_hdr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@start = common dso_local global i32 0, align 4
@file_addr = common dso_local global i32 0, align 4
@bytes = common dso_local global i64 0, align 8
@CMD_WRITE = common dso_local global i32 0, align 4
@end = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @client_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.msg_hdr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = call i32 (...) @client_connect()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %1, align 4
  br label %58

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @client_open(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %46

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @client_start_write(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %43

23:                                               ; preds = %17
  %24 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @fflush(i32* null)
  %26 = call i32 @gettimeofday(i32* @start, i32* null)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @file_addr, align 4
  %29 = load i64, i64* @bytes, align 8
  %30 = call i64 @rsend(i32 %27, i32 %28, i64 %29, i32 0)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @bytes, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @CMD_WRITE, align 4
  %37 = call i32 @msg_get_resp(i32 %35, %struct.msg_hdr* %2, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %23
  %39 = load i64, i64* %5, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = call i32 @gettimeofday(i32* @end, i32* null)
  br label %43

43:                                               ; preds = %41, %22
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @client_close(i32 %44)
  br label %46

46:                                               ; preds = %43, %16
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SHUT_RDWR, align 4
  %49 = call i32 @rshutdown(i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @rclose(i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = call i32 (...) @show_perf()
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i32, i32* %3, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %56, %9
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i32 @client_connect(...) #1

declare dso_local i32 @client_open(i32) #1

declare dso_local i32 @client_start_write(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i64 @rsend(i32, i32, i64, i32) #1

declare dso_local i32 @msg_get_resp(i32, %struct.msg_hdr*, i32) #1

declare dso_local i32 @client_close(i32) #1

declare dso_local i32 @rshutdown(i32, i32) #1

declare dso_local i32 @rclose(i32) #1

declare dso_local i32 @show_perf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
