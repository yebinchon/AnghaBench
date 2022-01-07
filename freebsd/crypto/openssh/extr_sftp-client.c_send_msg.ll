; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_send_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i64, i32, i32 }
%struct.sshbuf = type { i32 }
%struct.iovec = type { i32, i32* }

@SFTP_MAX_MSG_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Outbound message too long %zu\00", align 1
@writev = common dso_local global i32 0, align 4
@sftpio = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't send packet: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sftp_conn*, %struct.sshbuf*)* @send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_msg(%struct.sftp_conn* %0, %struct.sshbuf* %1) #0 {
  %3 = alloca %struct.sftp_conn*, align 8
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca [2 x %struct.iovec], align 16
  store %struct.sftp_conn* %0, %struct.sftp_conn** %3, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %4, align 8
  %7 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %8 = call i32 @sshbuf_len(%struct.sshbuf* %7)
  %9 = load i32, i32* @SFTP_MAX_MSG_LENGTH, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %13 = call i32 @sshbuf_len(%struct.sshbuf* %12)
  %14 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %17 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %18 = call i32 @sshbuf_len(%struct.sshbuf* %17)
  %19 = call i32 @put_u32(i32* %16, i32 %18)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 0
  store i32 16, i32* %24, align 16
  %25 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %26 = call i64 @sshbuf_ptr(%struct.sshbuf* %25)
  %27 = inttoptr i64 %26 to i32*
  %28 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 1
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %31 = call i32 @sshbuf_len(%struct.sshbuf* %30)
  %32 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 1
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 16
  %34 = load i32, i32* @writev, align 4
  %35 = load %struct.sftp_conn*, %struct.sftp_conn** %3, align 8
  %36 = getelementptr inbounds %struct.sftp_conn, %struct.sftp_conn* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %39 = load %struct.sftp_conn*, %struct.sftp_conn** %3, align 8
  %40 = getelementptr inbounds %struct.sftp_conn, %struct.sftp_conn* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %15
  %44 = load i32*, i32** @sftpio, align 8
  br label %46

45:                                               ; preds = %15
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32* [ %44, %43 ], [ null, %45 ]
  %48 = load %struct.sftp_conn*, %struct.sftp_conn** %3, align 8
  %49 = getelementptr inbounds %struct.sftp_conn, %struct.sftp_conn* %48, i32 0, i32 1
  %50 = call i32 @atomiciov6(i32 %34, i32 %37, %struct.iovec* %38, i32 2, i32* %47, i32* %49)
  %51 = sext i32 %50 to i64
  %52 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %53 = call i32 @sshbuf_len(%struct.sshbuf* %52)
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 16
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %46
  %62 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %63 = call i32 @sshbuf_reset(%struct.sshbuf* %62)
  ret void
}

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @put_u32(i32*, i32) #1

declare dso_local i64 @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @atomiciov6(i32, i32, %struct.iovec*, i32, i32*, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sshbuf_reset(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
