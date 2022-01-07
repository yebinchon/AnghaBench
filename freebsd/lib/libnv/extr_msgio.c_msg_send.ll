; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_msg_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_msg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.msghdr*)* @msg_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_send(i32 %0, %struct.msghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @PJDLOG_ASSERT(i32 %8)
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @fd_wait(i32 %11, i32 0)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %15 = call i32 @sendmsg(i32 %13, %struct.msghdr* %14, i32 0)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EINTR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %10

22:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %25

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %22
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @fd_wait(i32, i32) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
