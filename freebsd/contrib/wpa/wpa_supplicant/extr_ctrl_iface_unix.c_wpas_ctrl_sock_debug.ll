; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_ctrl_sock_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_ctrl_sock_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@TIOCOUTQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"CTRL-DEBUG: %s: sock=%d sndbuf=%d outq=%d send_len=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i64)* @wpas_ctrl_sock_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_ctrl_sock_debug(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @MSG_MSGDUMP, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i64, i64* %8, align 8
  %15 = icmp uge i64 %14, 5
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @os_strncmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @MSG_EXCESSIVE, align 4
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %20, %16, %4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SOL_SOCKET, align 4
  %25 = load i32, i32* @SO_SNDBUF, align 4
  %26 = call i64 @getsockopt(i32 %23, i32 %24, i32 %25, i32* %10, i32* %9)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TIOCOUTQ, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, i32* %11)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -1, i32* %11, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %38, i32 %39, i32 %40, i32 %42)
  ret void
}

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
