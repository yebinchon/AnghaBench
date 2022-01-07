; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_Scheduler.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_Scheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@netoring = common dso_local global i32 0, align 4
@flushline = common dso_local global i64 0, align 8
@TELOPT_LINEMODE = common dso_local global i32 0, align 4
@TELOPT_BINARY = common dso_local global i32 0, align 4
@ttyoring = common dso_local global i32 0, align 4
@ttyiring = common dso_local global i32 0, align 4
@ISend = common dso_local global i32 0, align 4
@netiring = common dso_local global i32 0, align 4
@SYNCHing = common dso_local global i32 0, align 4
@scheduler_lockout_tty = common dso_local global i64 0, align 8
@TELOPT_SGA = common dso_local global i32 0, align 4
@kludgelinemode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Scheduler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call i32 @ring_full_count(i32* @netoring)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i64, i64* @flushline, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @TELOPT_LINEMODE, align 4
  %16 = call i64 @my_want_state_is_wont(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @TELOPT_BINARY, align 4
  %20 = call i64 @my_want_state_is_will(i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %14, %11
  %23 = phi i1 [ true, %14 ], [ true, %11 ], [ %21, %18 ]
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi i1 [ false, %1 ], [ %23, %22 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = call i32 @ring_full_count(i32* @ttyoring)
  store i32 %27, i32* %8, align 4
  %28 = call i32 @ring_empty_count(i32* @ttyiring)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @ISend, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = call i32 @ring_empty_count(i32* @netiring)
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi i1 [ false, %24 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @SYNCHing, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i64, i64* @scheduler_lockout_tty, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @process_rings(i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = call i32 @ring_full_count(i32* @ttyiring)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = call i32 (...) @telsnd()
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %44
  %62 = call i32 @ring_full_count(i32* @netiring)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = call i32 (...) @telrcv()
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ring_full_count(i32*) #1

declare dso_local i64 @my_want_state_is_wont(i32) #1

declare dso_local i64 @my_want_state_is_will(i32) #1

declare dso_local i32 @ring_empty_count(i32*) #1

declare dso_local i32 @process_rings(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @telsnd(...) #1

declare dso_local i32 @telrcv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
