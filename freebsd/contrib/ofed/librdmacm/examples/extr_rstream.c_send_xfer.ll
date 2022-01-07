; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_send_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_send_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@verify = common dso_local global i64 0, align 8
@buf = common dso_local global i64 0, align 8
@use_async = common dso_local global i64 0, align 8
@rs = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@poll_timeout = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"rsend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @send_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_xfer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pollfd, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @verify, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i64, i64* @buf, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @format_buf(i64 %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i64, i64* @use_async, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @rs, align 4
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @POLLOUT, align 4
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %13
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %66, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %22
  %27 = load i64, i64* @use_async, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* @poll_timeout, align 4
  %31 = call i32 @do_poll(%struct.pollfd* %4, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %68

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* @rs, align 4
  %39 = load i64, i64* @buf, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* @flags, align 4
  %47 = call i32 @rs_send(i32 %38, i64 %42, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %66

54:                                               ; preds = %37
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EWOULDBLOCK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EAGAIN, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %68

65:                                               ; preds = %58, %54
  br label %66

66:                                               ; preds = %65, %50
  br label %22

67:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %62, %34
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @format_buf(i64, i32) #1

declare dso_local i32 @do_poll(%struct.pollfd*, i32) #1

declare dso_local i32 @rs_send(i32, i64, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
