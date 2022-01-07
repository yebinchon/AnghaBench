; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_isapnp.c_isapnp_get_resource_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_isapnp.c_isapnp_get_resource_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PNP_ADDRESS = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@isapnp_readport = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"PnP device failed to report resource data\0A\00", align 1
@RESOURCE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @isapnp_get_resource_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isapnp_get_resource_info(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %51, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = load i32, i32* @_PNP_ADDRESS, align 4
  %15 = load i32, i32* @STATUS, align 4
  %16 = call i32 @outb(i32 %14, i32 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %28, %13
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 100
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* @isapnp_readport, align 4
  %22 = call i32 @inb(i32 %21)
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %31

26:                                               ; preds = %20
  %27 = call i32 @delay(i32 1)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %17

31:                                               ; preds = %25, %17
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 100
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %55

36:                                               ; preds = %31
  %37 = load i32, i32* @_PNP_ADDRESS, align 4
  %38 = load i32, i32* @RESOURCE_DATA, align 4
  %39 = call i32 @outb(i32 %37, i32 %38)
  %40 = load i32, i32* @isapnp_readport, align 4
  %41 = call i32 @inb(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %9

54:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %34
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
