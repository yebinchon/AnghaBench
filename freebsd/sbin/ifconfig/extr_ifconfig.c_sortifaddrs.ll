; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_sortifaddrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_sortifaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { %struct.ifaddrs* }
%struct.ifa_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifaddrs* (%struct.ifaddrs*, i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)*, %struct.ifa_queue*)* @sortifaddrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifaddrs* @sortifaddrs(%struct.ifaddrs* %0, i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)* %1, %struct.ifa_queue* %2) #0 {
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifaddrs*, align 8
  %6 = alloca i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)*, align 8
  %7 = alloca %struct.ifa_queue*, align 8
  %8 = alloca %struct.ifaddrs*, align 8
  %9 = alloca %struct.ifaddrs*, align 8
  %10 = alloca %struct.ifaddrs*, align 8
  %11 = alloca %struct.ifaddrs*, align 8
  %12 = alloca %struct.ifaddrs*, align 8
  %13 = alloca %struct.ifaddrs*, align 8
  store %struct.ifaddrs* %0, %struct.ifaddrs** %5, align 8
  store i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)* %1, i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)** %6, align 8
  store %struct.ifa_queue* %2, %struct.ifa_queue** %7, align 8
  %14 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  store %struct.ifaddrs* %14, %struct.ifaddrs** %8, align 8
  %15 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  store %struct.ifaddrs* %15, %struct.ifaddrs** %9, align 8
  %16 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  store %struct.ifaddrs* %16, %struct.ifaddrs** %10, align 8
  store %struct.ifaddrs* null, %struct.ifaddrs** %11, align 8
  store %struct.ifaddrs* null, %struct.ifaddrs** %12, align 8
  store %struct.ifaddrs* null, %struct.ifaddrs** %13, align 8
  %17 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %18 = icmp ne %struct.ifaddrs* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %21 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %20, i32 0, i32 0
  %22 = load %struct.ifaddrs*, %struct.ifaddrs** %21, align 8
  %23 = icmp ne %struct.ifaddrs* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  store %struct.ifaddrs* %25, %struct.ifaddrs** %4, align 8
  br label %114

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %37, %26
  %28 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %29 = icmp ne %struct.ifaddrs* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %32 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %31, i32 0, i32 0
  %33 = load %struct.ifaddrs*, %struct.ifaddrs** %32, align 8
  %34 = icmp ne %struct.ifaddrs* %33, null
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ %34, %30 ]
  br i1 %36, label %37, label %47

37:                                               ; preds = %35
  %38 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  store %struct.ifaddrs* %38, %struct.ifaddrs** %10, align 8
  %39 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %40 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %39, i32 0, i32 0
  %41 = load %struct.ifaddrs*, %struct.ifaddrs** %40, align 8
  store %struct.ifaddrs* %41, %struct.ifaddrs** %8, align 8
  %42 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %43 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %42, i32 0, i32 0
  %44 = load %struct.ifaddrs*, %struct.ifaddrs** %43, align 8
  %45 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %44, i32 0, i32 0
  %46 = load %struct.ifaddrs*, %struct.ifaddrs** %45, align 8
  store %struct.ifaddrs* %46, %struct.ifaddrs** %9, align 8
  br label %27

47:                                               ; preds = %35
  %48 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %49 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %48, i32 0, i32 0
  store %struct.ifaddrs* null, %struct.ifaddrs** %49, align 8
  %50 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %51 = load i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)*, i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)** %6, align 8
  %52 = load %struct.ifa_queue*, %struct.ifa_queue** %7, align 8
  %53 = call %struct.ifaddrs* @sortifaddrs(%struct.ifaddrs* %50, i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)* %51, %struct.ifa_queue* %52)
  store %struct.ifaddrs* %53, %struct.ifaddrs** %5, align 8
  %54 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %55 = load i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)*, i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)** %6, align 8
  %56 = load %struct.ifa_queue*, %struct.ifa_queue** %7, align 8
  %57 = call %struct.ifaddrs* @sortifaddrs(%struct.ifaddrs* %54, i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)* %55, %struct.ifa_queue* %56)
  store %struct.ifaddrs* %57, %struct.ifaddrs** %8, align 8
  br label %58

58:                                               ; preds = %110, %47
  %59 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %60 = icmp ne %struct.ifaddrs* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %63 = icmp ne %struct.ifaddrs* %62, null
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ true, %58 ], [ %63, %61 ]
  br i1 %65, label %66, label %112

66:                                               ; preds = %64
  %67 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %68 = icmp ne %struct.ifaddrs* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  store %struct.ifaddrs* %70, %struct.ifaddrs** %12, align 8
  %71 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %72 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %71, i32 0, i32 0
  %73 = load %struct.ifaddrs*, %struct.ifaddrs** %72, align 8
  store %struct.ifaddrs* %73, %struct.ifaddrs** %5, align 8
  br label %101

74:                                               ; preds = %66
  %75 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %76 = icmp ne %struct.ifaddrs* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  store %struct.ifaddrs* %78, %struct.ifaddrs** %12, align 8
  %79 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %80 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %79, i32 0, i32 0
  %81 = load %struct.ifaddrs*, %struct.ifaddrs** %80, align 8
  store %struct.ifaddrs* %81, %struct.ifaddrs** %8, align 8
  br label %100

82:                                               ; preds = %74
  %83 = load i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)*, i32 (%struct.ifaddrs*, %struct.ifaddrs*, %struct.ifa_queue*)** %6, align 8
  %84 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %85 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %86 = load %struct.ifa_queue*, %struct.ifa_queue** %7, align 8
  %87 = call i32 %83(%struct.ifaddrs* %84, %struct.ifaddrs* %85, %struct.ifa_queue* %86)
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  store %struct.ifaddrs* %90, %struct.ifaddrs** %12, align 8
  %91 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %92 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %91, i32 0, i32 0
  %93 = load %struct.ifaddrs*, %struct.ifaddrs** %92, align 8
  store %struct.ifaddrs* %93, %struct.ifaddrs** %5, align 8
  br label %99

94:                                               ; preds = %82
  %95 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  store %struct.ifaddrs* %95, %struct.ifaddrs** %12, align 8
  %96 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %97 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %96, i32 0, i32 0
  %98 = load %struct.ifaddrs*, %struct.ifaddrs** %97, align 8
  store %struct.ifaddrs* %98, %struct.ifaddrs** %8, align 8
  br label %99

99:                                               ; preds = %94, %89
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100, %69
  %102 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %103 = icmp ne %struct.ifaddrs* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  store %struct.ifaddrs* %105, %struct.ifaddrs** %11, align 8
  br label %110

106:                                              ; preds = %101
  %107 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %108 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %109 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %108, i32 0, i32 0
  store %struct.ifaddrs* %107, %struct.ifaddrs** %109, align 8
  br label %110

110:                                              ; preds = %106, %104
  %111 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  store %struct.ifaddrs* %111, %struct.ifaddrs** %13, align 8
  br label %58

112:                                              ; preds = %64
  %113 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  store %struct.ifaddrs* %113, %struct.ifaddrs** %4, align 8
  br label %114

114:                                              ; preds = %112, %24
  %115 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  ret %struct.ifaddrs* %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
