; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_socket_finished_connecting_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_socket_finished_connecting_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_socket_finished_connecting_(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 4, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SOL_SOCKET, align 4
  %8 = load i32, i32* @SO_ERROR, align 4
  %9 = bitcast i32* %4 to i8*
  %10 = call i64 @getsockopt(i32 %6, i32 %7, i32 %8, i8* %9, i32* %5)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @EVUTIL_ERR_CONNECT_RETRIABLE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %22)
  store i32 -1, i32* %2, align 4
  br label %25

24:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21, %20, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @EVUTIL_ERR_CONNECT_RETRIABLE(i32) #1

declare dso_local i32 @EVUTIL_SET_SOCKET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
