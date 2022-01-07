; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_recv_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_recv_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@use_async = common dso_local global i64 0, align 8
@rs = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@poll_timeout = common dso_local global i32 0, align 4
@buf = common dso_local global i64 0, align 8
@flags = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"rrecv\00", align 1
@verify = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @recv_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_xfer(i32 %0) #0 {
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
  %12 = load i32, i32* @POLLIN, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %9, %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %59, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %60

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
  br label %73

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
  %39 = load i32, i32* @flags, align 4
  %40 = call i32 @rs_recv(i32 %31, i64 %35, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %59

47:                                               ; preds = %30
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EWOULDBLOCK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EAGAIN, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %73

58:                                               ; preds = %51, %47
  br label %59

59:                                               ; preds = %58, %43
  br label %15

60:                                               ; preds = %15
  %61 = load i64, i64* @verify, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i64, i64* @buf, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @verify_buf(i64 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %60
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %69, %55, %27
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @do_poll(%struct.pollfd*, i32) #1

declare dso_local i32 @rs_recv(i32, i64, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @verify_buf(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
