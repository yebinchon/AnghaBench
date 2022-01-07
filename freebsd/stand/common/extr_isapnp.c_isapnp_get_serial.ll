; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_isapnp.c_isapnp_get_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_isapnp.c_isapnp_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PNP_ID_LEN = common dso_local global i32 0, align 4
@_PNP_ADDRESS = common dso_local global i32 0, align 4
@SERIAL_ISOLATION = common dso_local global i32 0, align 4
@isapnp_readport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @isapnp_get_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isapnp_get_serial(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 106, i32* %6, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @_PNP_ID_LEN, align 4
  %9 = call i32 @bzero(i32* %7, i32 %8)
  %10 = load i32, i32* @_PNP_ADDRESS, align 4
  %11 = load i32, i32* @SERIAL_ISOLATION, align 4
  %12 = call i32 @outb(i32 %10, i32 %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %72, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 72
  br i1 %15, label %16, label %75

16:                                               ; preds = %13
  %17 = load i32, i32* @isapnp_readport, align 4
  %18 = call i32 @inb(i32 %17)
  %19 = icmp eq i32 %18, 85
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = call i32 @delay(i32 250)
  %22 = load i32, i32* @isapnp_readport, align 4
  %23 = call i32 @inb(i32 %22)
  %24 = icmp eq i32 %23, 170
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %25, %16
  %29 = phi i1 [ false, %16 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = call i32 @delay(i32 250)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i1 [ true, %28 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 64
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 1
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 1
  %48 = xor i32 %45, %47
  %49 = load i32, i32* %4, align 4
  %50 = xor i32 %48, %49
  %51 = shl i32 %50, 7
  %52 = and i32 %51, 255
  %53 = or i32 %44, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %42, %37
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sdiv i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 1
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 128, i32 0
  %66 = or i32 %61, %65
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sdiv i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %54
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %13

75:                                               ; preds = %13
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32*, i32** %2, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %81, %82
  br label %84

84:                                               ; preds = %78, %75
  %85 = phi i1 [ false, %75 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
