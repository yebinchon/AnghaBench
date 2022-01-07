; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_randomize_and_send_udp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_randomize_and_send_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.outside_network* }
%struct.outside_network = type { %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.timeval = type { i32, i32 }
%struct.sockaddr = type { i32 }

@comm_udp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pending*, i32*, i32)* @randomize_and_send_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randomize_and_send_udp(%struct.pending* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pending*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.outside_network*, align 8
  store %struct.pending* %0, %struct.pending** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pending*, %struct.pending** %5, align 8
  %11 = getelementptr inbounds %struct.pending, %struct.pending* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.outside_network*, %struct.outside_network** %13, align 8
  store %struct.outside_network* %14, %struct.outside_network** %9, align 8
  %15 = load %struct.outside_network*, %struct.outside_network** %9, align 8
  %16 = load %struct.pending*, %struct.pending** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @select_id(%struct.outside_network* %15, %struct.pending* %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

21:                                               ; preds = %3
  %22 = load %struct.pending*, %struct.pending** %5, align 8
  %23 = getelementptr inbounds %struct.pending, %struct.pending* %22, i32 0, i32 1
  %24 = load %struct.pending*, %struct.pending** %5, align 8
  %25 = getelementptr inbounds %struct.pending, %struct.pending* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @addr_is_ip6(i32* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load %struct.outside_network*, %struct.outside_network** %9, align 8
  %31 = load %struct.pending*, %struct.pending** %5, align 8
  %32 = load %struct.outside_network*, %struct.outside_network** %9, align 8
  %33 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.outside_network*, %struct.outside_network** %9, align 8
  %36 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @select_ifport(%struct.outside_network* %30, %struct.pending* %31, i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %103

41:                                               ; preds = %29
  br label %55

42:                                               ; preds = %21
  %43 = load %struct.outside_network*, %struct.outside_network** %9, align 8
  %44 = load %struct.pending*, %struct.pending** %5, align 8
  %45 = load %struct.outside_network*, %struct.outside_network** %9, align 8
  %46 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.outside_network*, %struct.outside_network** %9, align 8
  %49 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @select_ifport(%struct.outside_network* %43, %struct.pending* %44, i32 %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %103

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.pending*, %struct.pending** %5, align 8
  %57 = getelementptr inbounds %struct.pending, %struct.pending* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.pending*, %struct.pending** %5, align 8
  %62 = getelementptr inbounds %struct.pending, %struct.pending* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %60, %55
  %68 = phi i1 [ false, %55 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @log_assert(i32 %69)
  %71 = load %struct.pending*, %struct.pending** %5, align 8
  %72 = getelementptr inbounds %struct.pending, %struct.pending* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.pending*, %struct.pending** %5, align 8
  %78 = getelementptr inbounds %struct.pending, %struct.pending* %77, i32 0, i32 1
  %79 = bitcast i32* %78 to %struct.sockaddr*
  %80 = load %struct.pending*, %struct.pending** %5, align 8
  %81 = getelementptr inbounds %struct.pending, %struct.pending* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @comm_point_send_udp_msg(i64 %75, i32* %76, %struct.sockaddr* %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %67
  %86 = load %struct.outside_network*, %struct.outside_network** %9, align 8
  %87 = load %struct.pending*, %struct.pending** %5, align 8
  %88 = getelementptr inbounds %struct.pending, %struct.pending* %87, i32 0, i32 3
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = call i32 @portcomm_loweruse(%struct.outside_network* %86, %struct.TYPE_5__* %89)
  store i32 0, i32* %4, align 4
  br label %103

91:                                               ; preds = %67
  %92 = load i32, i32* %7, align 4
  %93 = sdiv i32 %92, 1000
  %94 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = srem i32 %95, 1000
  %97 = mul nsw i32 %96, 1000
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = load %struct.pending*, %struct.pending** %5, align 8
  %100 = getelementptr inbounds %struct.pending, %struct.pending* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @comm_timer_set(i32 %101, %struct.timeval* %8)
  store i32 1, i32* %4, align 4
  br label %103

103:                                              ; preds = %91, %85, %53, %40, %20
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @select_id(%struct.outside_network*, %struct.pending*, i32*) #1

declare dso_local i64 @addr_is_ip6(i32*, i32) #1

declare dso_local i32 @select_ifport(%struct.outside_network*, %struct.pending*, i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @comm_point_send_udp_msg(i64, i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @portcomm_loweruse(%struct.outside_network*, %struct.TYPE_5__*) #1

declare dso_local i32 @comm_timer_set(i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
