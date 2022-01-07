; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_decodeaddrtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_decodeaddrtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32*)* @decodeaddrtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @decodeaddrtype(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i8 45, i8* %3, align 1
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @AF(i32* %5)
  switch i32 %6, label %44 [
    i32 129, label %7
    i32 128, label %36
  ]

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @SRCADR(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, -268435456
  %12 = icmp eq i32 %11, -536870912
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %33

14:                                               ; preds = %7
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 255
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %31

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2130706433
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, -32
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 45, i32 117
  br label %29

29:                                               ; preds = %23, %22
  %30 = phi i32 [ 108, %22 ], [ %28, %23 ]
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi i32 [ 98, %18 ], [ %30, %29 ]
  br label %33

33:                                               ; preds = %31, %13
  %34 = phi i32 [ 109, %13 ], [ %32, %31 ]
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %3, align 1
  br label %45

36:                                               ; preds = %1
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @PSOCK_ADDR6(i32* %37)
  %39 = call i32 @IN6_IS_ADDR_MULTICAST(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i8 109, i8* %3, align 1
  br label %43

42:                                               ; preds = %36
  store i8 117, i8* %3, align 1
  br label %43

43:                                               ; preds = %42, %41
  br label %45

44:                                               ; preds = %1
  store i8 45, i8* %3, align 1
  br label %45

45:                                               ; preds = %44, %43, %33
  %46 = load i8, i8* %3, align 1
  ret i8 %46
}

declare dso_local i32 @AF(i32*) #1

declare dso_local i32 @SRCADR(i32*) #1

declare dso_local i32 @IN6_IS_ADDR_MULTICAST(i32) #1

declare dso_local i32 @PSOCK_ADDR6(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
