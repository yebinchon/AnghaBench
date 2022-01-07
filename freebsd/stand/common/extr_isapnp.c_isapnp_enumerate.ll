; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_isapnp.c_isapnp_enumerate.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_isapnp.c_isapnp_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@archsw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@isapnp_readport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @isapnp_enumerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isapnp_enumerate() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 1), align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 0), align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  br label %48

8:                                                ; preds = %4
  %9 = load i32, i32* @isapnp_readport, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load i32, i32* @isapnp_readport, align 4
  %13 = icmp slt i32 %12, 515
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @isapnp_readport, align 4
  %16 = icmp sgt i32 %15, 1023
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @isapnp_readport, align 4
  %19 = and i32 %18, 3
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14, %11
  store i32 0, i32* @isapnp_readport, align 4
  br label %22

22:                                               ; preds = %21, %17, %8
  %23 = load i32, i32* @isapnp_readport, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %48

26:                                               ; preds = %22
  %27 = load i32, i32* @isapnp_readport, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i64 (...) @isapnp_isolation_protocol()
  br label %47

31:                                               ; preds = %26
  store i32 128, i32* %1, align 4
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 255
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, i32* %1, align 4
  %37 = shl i32 %36, 2
  %38 = or i32 %37, 3
  store i32 %38, i32* @isapnp_readport, align 4
  %39 = call i64 (...) @isapnp_isolation_protocol()
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 16
  store i32 %45, i32* %1, align 4
  br label %32

46:                                               ; preds = %41, %32
  br label %47

47:                                               ; preds = %46, %29
  br label %48

48:                                               ; preds = %7, %25, %47
  ret void
}

declare dso_local i64 @isapnp_isolation_protocol(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
