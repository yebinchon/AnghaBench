; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_netof.c_netof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_netof.c_netof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@netof.netofbuf = internal global [8 x i32] zeroinitializer, align 16
@netof.next_netofbuf = internal global i32 0, align 4
@IN_CLASSC_NET = common dso_local global i32 0, align 4
@IN_CLASSB_NET = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @netof(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @netof.next_netofbuf, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @netof.netofbuf, i64 0, i64 %6
  store i32* %7, i32** %4, align 8
  %8 = load i32, i32* @netof.next_netofbuf, align 4
  %9 = add nsw i32 %8, 1
  %10 = call i32 @COUNTOF(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @netof.netofbuf, i64 0, i64 0))
  %11 = srem i32 %9, %10
  store i32 %11, i32* @netof.next_netofbuf, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @memcpy(i32* %12, i32* %13, i32 4)
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @IS_IPV4(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @SRCADR(i32* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @IN_CLASSC(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @IN_CLASSC_NET, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %18
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @IN_CLASSB(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @IN_CLASSB_NET, align 4
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @SET_ADDR4(i32* %38, i32 %39)
  br label %51

41:                                               ; preds = %1
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @IS_IPV6(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @NSRCADR6(i32* %46)
  %48 = getelementptr inbounds i32, i32* %47, i64 8
  %49 = call i32 @zero_mem(i32* %48, i32 8)
  br label %50

50:                                               ; preds = %45, %41
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i32 @COUNTOF(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @IS_IPV4(i32*) #1

declare dso_local i32 @SRCADR(i32*) #1

declare dso_local i64 @IN_CLASSC(i32) #1

declare dso_local i64 @IN_CLASSB(i32) #1

declare dso_local i32 @SET_ADDR4(i32*, i32) #1

declare dso_local i64 @IS_IPV6(i32*) #1

declare dso_local i32 @zero_mem(i32*, i32) #1

declare dso_local i32* @NSRCADR6(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
