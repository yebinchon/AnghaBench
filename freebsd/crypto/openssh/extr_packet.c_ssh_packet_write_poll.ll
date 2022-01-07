; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_write_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_write_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state* }
%struct.session_state = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_CONN_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_packet_write_poll(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.session_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %7 = load %struct.ssh*, %struct.ssh** %3, align 8
  %8 = getelementptr inbounds %struct.ssh, %struct.ssh* %7, i32 0, i32 0
  %9 = load %struct.session_state*, %struct.session_state** %8, align 8
  store %struct.session_state* %9, %struct.session_state** %4, align 8
  %10 = load %struct.session_state*, %struct.session_state** %4, align 8
  %11 = getelementptr inbounds %struct.session_state, %struct.session_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sshbuf_len(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %1
  %17 = load %struct.session_state*, %struct.session_state** %4, align 8
  %18 = getelementptr inbounds %struct.session_state, %struct.session_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.session_state*, %struct.session_state** %4, align 8
  %21 = getelementptr inbounds %struct.session_state, %struct.session_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sshbuf_ptr(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @write(i32 %19, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %43

28:                                               ; preds = %16
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINTR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EAGAIN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EWOULDBLOCK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32, %28
  store i32 0, i32* %2, align 4
  br label %59

41:                                               ; preds = %36
  %42 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %42, i32* %2, align 4
  br label %59

43:                                               ; preds = %16
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @SSH_ERR_CONN_CLOSED, align 4
  store i32 %47, i32* %2, align 4
  br label %59

48:                                               ; preds = %43
  %49 = load %struct.session_state*, %struct.session_state** %4, align 8
  %50 = getelementptr inbounds %struct.session_state, %struct.session_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @sshbuf_consume(i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %1
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %55, %46, %41, %40
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @sshbuf_len(i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @sshbuf_ptr(i32) #1

declare dso_local i32 @sshbuf_consume(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
