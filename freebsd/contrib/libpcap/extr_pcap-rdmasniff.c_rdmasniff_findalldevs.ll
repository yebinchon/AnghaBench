; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_findalldevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_findalldevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"RDMA sniffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdmasniff_findalldevs(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ibv_device**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = call %struct.ibv_device** @ibv_get_device_list(i32* %7)
  store %struct.ibv_device** %10, %struct.ibv_device*** %6, align 8
  %11 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %12 = icmp ne %struct.ibv_device** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %44

17:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %24, i64 %26
  %28 = load %struct.ibv_device*, %struct.ibv_device** %27, align 8
  %29 = getelementptr inbounds %struct.ibv_device, %struct.ibv_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @add_dev(i32* %23, i32 %30, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  store i32 -1, i32* %9, align 4
  br label %40

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %18

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %42 = call i32 @ibv_free_device_list(%struct.ibv_device** %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ibv_device** @ibv_get_device_list(i32*) #1

declare dso_local i32 @add_dev(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @ibv_free_device_list(%struct.ibv_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
