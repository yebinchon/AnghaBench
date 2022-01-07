; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_add_dev_from_go_neg_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_add_dev_from_go_neg_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_device = type { i32 }
%struct.p2p_data = type { i32 }
%struct.p2p_message = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p2p_device* @p2p_add_dev_from_go_neg_req(%struct.p2p_data* %0, i32* %1, %struct.p2p_message* %2) #0 {
  %4 = alloca %struct.p2p_device*, align 8
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.p2p_message*, align 8
  %8 = alloca %struct.p2p_device*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.p2p_message* %2, %struct.p2p_message** %7, align 8
  %9 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call %struct.p2p_device* @p2p_get_device(%struct.p2p_data* %9, i32* %10)
  store %struct.p2p_device* %11, %struct.p2p_device** %8, align 8
  %12 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %13 = icmp ne %struct.p2p_device* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %16 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %15, i32 0, i32 0
  %17 = call i32 @os_get_reltime(i32* %16)
  %18 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  store %struct.p2p_device* %18, %struct.p2p_device** %4, align 8
  br label %33

19:                                               ; preds = %3
  %20 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.p2p_device* @p2p_create_device(%struct.p2p_data* %20, i32* %21)
  store %struct.p2p_device* %22, %struct.p2p_device** %8, align 8
  %23 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %24 = icmp eq %struct.p2p_device* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.p2p_device* null, %struct.p2p_device** %4, align 8
  br label %33

26:                                               ; preds = %19
  %27 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %30 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %31 = call i32 @p2p_add_dev_info(%struct.p2p_data* %27, i32* %28, %struct.p2p_device* %29, %struct.p2p_message* %30)
  %32 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  store %struct.p2p_device* %32, %struct.p2p_device** %4, align 8
  br label %33

33:                                               ; preds = %26, %25, %14
  %34 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  ret %struct.p2p_device* %34
}

declare dso_local %struct.p2p_device* @p2p_get_device(%struct.p2p_data*, i32*) #1

declare dso_local i32 @os_get_reltime(i32*) #1

declare dso_local %struct.p2p_device* @p2p_create_device(%struct.p2p_data*, i32*) #1

declare dso_local i32 @p2p_add_dev_info(%struct.p2p_data*, i32*, %struct.p2p_device*, %struct.p2p_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
