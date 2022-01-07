; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_client_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_client_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }
%struct.pollfd = type { i32, i32 }

@rs = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"rrecv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.message*, i64, i32)* @client_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_recv(%struct.message* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.message*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pollfd, align 4
  %9 = alloca i32, align 4
  store %struct.message* %0, %struct.message** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i32, i32* @rs, align 4
  %14 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @POLLIN, align 4
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rs_poll(%struct.pollfd* %8, i32 1, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %3
  %25 = load i32, i32* @rs, align 4
  %26 = load %struct.message*, %struct.message** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @flags, align 4
  %29 = load i32, i32* @MSG_DONTWAIT, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @rs_recv(i32 %25, %struct.message* %26, i64 %27, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EWOULDBLOCK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EAGAIN, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38, %34, %24
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %21
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @rs_poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @rs_recv(i32, %struct.message*, i64, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
