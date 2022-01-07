; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_process_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_process_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Connection closed by %.100s port %d\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Read error from remote host %.100s port %d: %.100s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, i32*, i32)* @process_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_input(%struct.ssh* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16384 x i8], align 16
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @FD_ISSET(i32 %10, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds [16384 x i8], [16384 x i8]* %9, i64 0, i64 0
  %17 = call i32 @read(i32 %15, i8* %16, i32 16384)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.ssh*, %struct.ssh** %5, align 8
  %22 = call i32 @ssh_remote_ipaddr(%struct.ssh* %21)
  %23 = load %struct.ssh*, %struct.ssh** %5, align 8
  %24 = call i32 @ssh_remote_port(%struct.ssh* %23)
  %25 = call i32 (i8*, i32, i32, ...) @verbose(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  store i32 -1, i32* %4, align 4
  br label %58

26:                                               ; preds = %14
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EINTR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EAGAIN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EWOULDBLOCK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.ssh*, %struct.ssh** %5, align 8
  %43 = call i32 @ssh_remote_ipaddr(%struct.ssh* %42)
  %44 = load %struct.ssh*, %struct.ssh** %5, align 8
  %45 = call i32 @ssh_remote_port(%struct.ssh* %44)
  %46 = load i64, i64* @errno, align 8
  %47 = call i32 @strerror(i64 %46)
  %48 = call i32 (i8*, i32, i32, ...) @verbose(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %45, i32 %47)
  %49 = call i32 @cleanup_exit(i32 255)
  br label %50

50:                                               ; preds = %41, %37, %33, %29
  br label %55

51:                                               ; preds = %26
  %52 = getelementptr inbounds [16384 x i8], [16384 x i8]* %9, i64 0, i64 0
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @packet_process_incoming(i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %50
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %3
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @verbose(i8*, i32, i32, ...) #1

declare dso_local i32 @ssh_remote_ipaddr(%struct.ssh*) #1

declare dso_local i32 @ssh_remote_port(%struct.ssh*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @cleanup_exit(i32) #1

declare dso_local i32 @packet_process_incoming(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
