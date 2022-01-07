; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_msg_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_msg_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@MSG_CMSG_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.msghdr*)* @msg_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_recv(i32 %0, %struct.msghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @PJDLOG_ASSERT(i32 %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @fd_wait(i32 %12, i32 1)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @recvmsg(i32 %14, %struct.msghdr* %15, i32 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EINTR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %11

24:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %27

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @fd_wait(i32, i32) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
