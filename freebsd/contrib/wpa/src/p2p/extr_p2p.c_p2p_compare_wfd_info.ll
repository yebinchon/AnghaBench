; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_compare_wfd_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_compare_wfd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.p2p_message = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2p_device*, %struct.p2p_message*)* @p2p_compare_wfd_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_compare_wfd_info(%struct.p2p_device* %0, %struct.p2p_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_device*, align 8
  %5 = alloca %struct.p2p_message*, align 8
  store %struct.p2p_device* %0, %struct.p2p_device** %4, align 8
  store %struct.p2p_message* %1, %struct.p2p_message** %5, align 8
  %6 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %7 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  %12 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %13 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %11
  %17 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %18 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %24 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %62

30:                                               ; preds = %16
  %31 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %32 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %38 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %43 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @os_memcmp(i32 %36, i32 %41, i64 %47)
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %11, %2
  %50 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %51 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.p2p_message*, %struct.p2p_message** %5, align 8
  %57 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %49
  store i32 1, i32* %3, align 4
  br label %62

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60, %30, %29
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @os_memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
