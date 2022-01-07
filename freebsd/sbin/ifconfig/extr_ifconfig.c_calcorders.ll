; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_calcorders.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_calcorders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { %struct.ifaddrs*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ifa_queue = type { i32 }
%struct.ifa_order_elt = type { i32*, %struct.ifaddrs*, i32 }

@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifaddrs*, %struct.ifa_queue*)* @calcorders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calcorders(%struct.ifaddrs* %0, %struct.ifa_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifa_queue*, align 8
  %6 = alloca %struct.ifaddrs*, align 8
  %7 = alloca %struct.ifa_order_elt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifaddrs* %0, %struct.ifaddrs** %4, align 8
  store %struct.ifa_queue* %1, %struct.ifa_queue** %5, align 8
  store %struct.ifaddrs* null, %struct.ifaddrs** %6, align 8
  store %struct.ifa_order_elt* null, %struct.ifa_order_elt** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %79, %2
  %12 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %13 = icmp ne %struct.ifaddrs* %12, null
  br i1 %13, label %14, label %84

14:                                               ; preds = %11
  %15 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %16 = icmp eq %struct.ifaddrs* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %19 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %22 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @strcmp(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %17, %14
  %27 = call %struct.ifa_order_elt* @calloc(i32 1, i32 24)
  store %struct.ifa_order_elt* %27, %struct.ifa_order_elt** %7, align 8
  %28 = load %struct.ifa_order_elt*, %struct.ifa_order_elt** %7, align 8
  %29 = icmp eq %struct.ifa_order_elt* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %85

31:                                               ; preds = %26
  %32 = load %struct.ifa_queue*, %struct.ifa_queue** %5, align 8
  %33 = load %struct.ifa_order_elt*, %struct.ifa_order_elt** %7, align 8
  %34 = load i32, i32* @link, align 4
  %35 = call i32 @TAILQ_INSERT_TAIL(%struct.ifa_queue* %32, %struct.ifa_order_elt* %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = load %struct.ifa_order_elt*, %struct.ifa_order_elt** %7, align 8
  %39 = getelementptr inbounds %struct.ifa_order_elt, %struct.ifa_order_elt* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %41 = load %struct.ifa_order_elt*, %struct.ifa_order_elt** %7, align 8
  %42 = getelementptr inbounds %struct.ifa_order_elt, %struct.ifa_order_elt* %41, i32 0, i32 1
  store %struct.ifaddrs* %40, %struct.ifaddrs** %42, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %31, %17
  %44 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %45 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %79

48:                                               ; preds = %43
  %49 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %50 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.ifa_order_elt*, %struct.ifa_order_elt** %7, align 8
  %56 = getelementptr inbounds %struct.ifa_order_elt, %struct.ifa_order_elt* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @ORDERS_SIZE(i32* %57)
  %59 = icmp ult i32 %54, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %48
  %61 = load %struct.ifa_order_elt*, %struct.ifa_order_elt** %7, align 8
  %62 = getelementptr inbounds %struct.ifa_order_elt, %struct.ifa_order_elt* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load %struct.ifa_order_elt*, %struct.ifa_order_elt** %7, align 8
  %73 = getelementptr inbounds %struct.ifa_order_elt, %struct.ifa_order_elt* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %69, %60, %48
  br label %79

79:                                               ; preds = %78, %43
  %80 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  store %struct.ifaddrs* %80, %struct.ifaddrs** %6, align 8
  %81 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %82 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %81, i32 0, i32 0
  %83 = load %struct.ifaddrs*, %struct.ifaddrs** %82, align 8
  store %struct.ifaddrs* %83, %struct.ifaddrs** %4, align 8
  br label %11

84:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %30
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.ifa_order_elt* @calloc(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.ifa_queue*, %struct.ifa_order_elt*, i32) #1

declare dso_local i32 @ORDERS_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
