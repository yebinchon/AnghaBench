; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_parse_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_parse_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tx-delay\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"allwinner,tx-delay-ps\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"tx-delay-ps is not a multiple of 100\0A\00", align 1
@EDOM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"tx-delay out of range\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"rx-delay\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"allwinner,rx-delay-ps\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"rx-delay-ps is not within documented domain\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"rx-delay out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @awg_parse_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_parse_delay(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %86

17:                                               ; preds = %12
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ofw_bus_get_node(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @OF_getencprop(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %9, i32 4)
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %45

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @OF_getencprop(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32 4)
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = srem i32 %33, 100
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EDOM, align 4
  store i32 %39, i32* %4, align 4
  br label %86

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = sdiv i32 %41, 100
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %28
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 7
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @ERANGE, align 4
  store i32 %52, i32* %4, align 4
  br label %86

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @OF_getencprop(i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %9, i32 4)
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %77

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @OF_getencprop(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %9, i32 4)
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = srem i32 %65, 100
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i32, i32* @EDOM, align 4
  store i32 %71, i32* %4, align 4
  br label %86

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  %74 = sdiv i32 %73, 100
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %60
  br label %77

77:                                               ; preds = %76, %57
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 31
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %84 = load i32, i32* @ERANGE, align 4
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %81, %68, %49, %36, %15
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
