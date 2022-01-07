; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_riostream.c_send_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_riostream.c_send_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@use_async = common dso_local global i64 0, align 8
@rs = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@poll_timeout = common dso_local global i32 0, align 4
@buf = common dso_local global i64 0, align 8
@flags = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"riowrite\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @send_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_xfer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pollfd, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @use_async, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @rs, align 4
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @POLLOUT, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %9, %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %60, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  %20 = load i64, i64* @use_async, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* @poll_timeout, align 4
  %24 = call i32 @do_poll(%struct.pollfd* %4, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %62

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* @rs, align 4
  %32 = load i64, i64* @buf, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @flags, align 4
  %41 = call i32 @riowrite(i32 %31, i64 %35, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %60

48:                                               ; preds = %30
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @EWOULDBLOCK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EAGAIN, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %62

59:                                               ; preds = %52, %48
  br label %60

60:                                               ; preds = %59, %44
  br label %15

61:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %56, %27
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @do_poll(%struct.pollfd*, i32) #1

declare dso_local i32 @riowrite(i32, i64, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
