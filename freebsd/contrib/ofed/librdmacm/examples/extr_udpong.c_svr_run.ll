; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_svr_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_svr_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_addrlen = common dso_local global i32 0, align 4
@g_msg = common dso_local global i32 0, align 4
@g_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @svr_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svr_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @svr_bind()
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  store i32 4, i32* @g_addrlen, align 4
  %10 = call i64 @svr_recv(i32* @g_msg, i32 4, i32* @g_addr, i32* @g_addrlen)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i64, i64* %2, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %1, align 4
  br label %22

16:                                               ; preds = %9
  %17 = load i64, i64* %2, align 8
  %18 = load i32, i32* @g_addrlen, align 4
  %19 = call i32 @svr_process(i32* @g_msg, i64 %17, i32* @g_addr, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %5

20:                                               ; preds = %5
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %13
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @svr_bind(...) #1

declare dso_local i64 @svr_recv(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svr_process(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
