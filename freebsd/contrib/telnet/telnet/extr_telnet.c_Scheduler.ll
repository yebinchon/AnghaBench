; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_Scheduler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_Scheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@netoring = common dso_local global i32 0, align 4
@flushline = common dso_local global i64 0, align 8
@TELOPT_LINEMODE = common dso_local global i32 0, align 4
@TELOPT_BINARY = common dso_local global i32 0, align 4
@ttyoring = common dso_local global i32 0, align 4
@ttyiring = common dso_local global i32 0, align 4
@clienteof = common dso_local global i64 0, align 8
@ISend = common dso_local global i32 0, align 4
@netiring = common dso_local global i32 0, align 4
@SYNCHing = common dso_local global i32 0, align 4
@TELOPT_SGA = common dso_local global i32 0, align 4
@kludgelinemode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Scheduler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Scheduler(i32 %0) #0 {
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
  %28 = call i64 @ring_empty_count(i32* @ttyiring)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64, i64* @clienteof, align 8
  %32 = icmp eq i64 %31, 0
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi i1 [ false, %24 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @ISend, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = call i64 @ring_empty_count(i32* @netiring)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi i1 [ false, %33 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @SYNCHing, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %2, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @process_rings(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = call i32 @ring_full_count(i32* @ttyiring)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %41
  %61 = call i32 (...) @telsnd()
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %41
  %65 = call i32 @ring_full_count(i32* @netiring)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = call i32 (...) @telrcv()
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ring_full_count(i32*) #1

declare dso_local i64 @my_want_state_is_wont(i32) #1

declare dso_local i64 @my_want_state_is_will(i32) #1

declare dso_local i64 @ring_empty_count(i32*) #1

declare dso_local i32 @process_rings(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @telsnd(...) #1

declare dso_local i32 @telrcv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
