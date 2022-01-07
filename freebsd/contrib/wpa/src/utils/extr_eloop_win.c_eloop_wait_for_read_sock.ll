; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_wait_for_read_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_wait_for_read_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WSA_INVALID_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"WSACreateEvent() failed: %d\0A\00", align 1
@FD_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"WSAEventSelect() failed: %d\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eloop_wait_for_read_sock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i64 (...) @WSACreateEvent()
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @WSA_INVALID_EVENT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 (...) @WSAGetLastError()
  %10 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @FD_READ, align 4
  %15 = call i32 @WSAEventSelect(i32 %12, i64 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = call i32 (...) @WSAGetLastError()
  %19 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @WSACloseEvent(i64 %20)
  br label %31

22:                                               ; preds = %11
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* @INFINITE, align 4
  %25 = call i32 @WaitForSingleObject(i64 %23, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @WSAEventSelect(i32 %26, i64 %27, i32 0)
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @WSACloseEvent(i64 %29)
  br label %31

31:                                               ; preds = %22, %17, %8
  ret void
}

declare dso_local i64 @WSACreateEvent(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @WSAEventSelect(i32, i64, i32) #1

declare dso_local i32 @WSACloseEvent(i64) #1

declare dso_local i32 @WaitForSingleObject(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
