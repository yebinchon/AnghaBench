; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_get_provisioning_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_get_provisioning_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32 }
%struct.p2p_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_get_provisioning_info(%struct.p2p_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.p2p_device*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.p2p_device* null, %struct.p2p_device** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %11 = icmp ne %struct.p2p_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %24

13:                                               ; preds = %9
  %14 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.p2p_device* @p2p_get_device(%struct.p2p_data* %14, i32* %15)
  store %struct.p2p_device* %16, %struct.p2p_device** %6, align 8
  %17 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %18 = icmp ne %struct.p2p_device* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %21 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %19, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.p2p_device* @p2p_get_device(%struct.p2p_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
