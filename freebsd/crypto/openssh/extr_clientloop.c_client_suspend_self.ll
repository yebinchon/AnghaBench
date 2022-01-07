; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_suspend_self.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_suspend_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.sshbuf = type { i32 }

@vwrite = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REQUEST_TTY_FORCE = common dso_local global i64 0, align 8
@SIGTSTP = common dso_local global i32 0, align 4
@received_window_change_signal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sshbuf*, %struct.sshbuf*, %struct.sshbuf*)* @client_suspend_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_suspend_self(%struct.sshbuf* %0, %struct.sshbuf* %1, %struct.sshbuf* %2) #0 {
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca %struct.sshbuf*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %5, align 8
  store %struct.sshbuf* %2, %struct.sshbuf** %6, align 8
  %7 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %8 = call i64 @sshbuf_len(%struct.sshbuf* %7)
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* @vwrite, align 4
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @fileno(i32 %12)
  %14 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %15 = call i32 @sshbuf_mutable_ptr(%struct.sshbuf* %14)
  %16 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %17 = call i64 @sshbuf_len(%struct.sshbuf* %16)
  %18 = call i32 @atomicio(i32 %11, i32 %13, i32 %15, i64 %17)
  br label %19

19:                                               ; preds = %10, %3
  %20 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %21 = call i64 @sshbuf_len(%struct.sshbuf* %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* @vwrite, align 4
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fileno(i32 %25)
  %27 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %28 = call i32 @sshbuf_mutable_ptr(%struct.sshbuf* %27)
  %29 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %30 = call i64 @sshbuf_len(%struct.sshbuf* %29)
  %31 = call i32 @atomicio(i32 %24, i32 %26, i32 %28, i64 %30)
  br label %32

32:                                               ; preds = %23, %19
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %34 = load i64, i64* @REQUEST_TTY_FORCE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @leave_raw_mode(i32 %36)
  %38 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %39 = call i32 @sshbuf_reset(%struct.sshbuf* %38)
  %40 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %41 = call i32 @sshbuf_reset(%struct.sshbuf* %40)
  %42 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %43 = call i32 @sshbuf_reset(%struct.sshbuf* %42)
  %44 = call i32 (...) @getpid()
  %45 = load i32, i32* @SIGTSTP, align 4
  %46 = call i32 @kill(i32 %44, i32 %45)
  store i32 1, i32* @received_window_change_signal, align 4
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %48 = load i64, i64* @REQUEST_TTY_FORCE, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @enter_raw_mode(i32 %50)
  ret void
}

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @atomicio(i32, i32, i32, i64) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @sshbuf_mutable_ptr(%struct.sshbuf*) #1

declare dso_local i32 @leave_raw_mode(i32) #1

declare dso_local i32 @sshbuf_reset(%struct.sshbuf*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @enter_raw_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
