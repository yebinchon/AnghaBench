; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_global_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_global = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dpp_global_config = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpp_global* @dpp_global_init(%struct.dpp_global_config* %0) #0 {
  %2 = alloca %struct.dpp_global*, align 8
  %3 = alloca %struct.dpp_global_config*, align 8
  %4 = alloca %struct.dpp_global*, align 8
  store %struct.dpp_global_config* %0, %struct.dpp_global_config** %3, align 8
  %5 = call %struct.dpp_global* @os_zalloc(i32 28)
  store %struct.dpp_global* %5, %struct.dpp_global** %4, align 8
  %6 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  %7 = icmp ne %struct.dpp_global* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.dpp_global* null, %struct.dpp_global** %2, align 8
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.dpp_global_config*, %struct.dpp_global_config** %3, align 8
  %11 = getelementptr inbounds %struct.dpp_global_config, %struct.dpp_global_config* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  %14 = getelementptr inbounds %struct.dpp_global, %struct.dpp_global* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  %16 = getelementptr inbounds %struct.dpp_global, %struct.dpp_global* %15, i32 0, i32 3
  %17 = call i32 @dl_list_init(i32* %16)
  %18 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  %19 = getelementptr inbounds %struct.dpp_global, %struct.dpp_global* %18, i32 0, i32 2
  %20 = call i32 @dl_list_init(i32* %19)
  %21 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  store %struct.dpp_global* %21, %struct.dpp_global** %2, align 8
  br label %22

22:                                               ; preds = %9, %8
  %23 = load %struct.dpp_global*, %struct.dpp_global** %2, align 8
  ret %struct.dpp_global* %23
}

declare dso_local %struct.dpp_global* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
