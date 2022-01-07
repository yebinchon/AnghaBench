; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configurator_get_key_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configurator_get_key_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_global = type { i32 }
%struct.dpp_configurator = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp_configurator_get_key_id(%struct.dpp_global* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpp_global*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dpp_configurator*, align 8
  store %struct.dpp_global* %0, %struct.dpp_global** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.dpp_global*, %struct.dpp_global** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.dpp_configurator* @dpp_configurator_get_id(%struct.dpp_global* %11, i32 %12)
  store %struct.dpp_configurator* %13, %struct.dpp_configurator** %10, align 8
  %14 = load %struct.dpp_configurator*, %struct.dpp_configurator** %10, align 8
  %15 = icmp ne %struct.dpp_configurator* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %22

17:                                               ; preds = %4
  %18 = load %struct.dpp_configurator*, %struct.dpp_configurator** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @dpp_configurator_get_key(%struct.dpp_configurator* %18, i8* %19, i64 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %16
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local %struct.dpp_configurator* @dpp_configurator_get_id(%struct.dpp_global*, i32) #1

declare dso_local i32 @dpp_configurator_get_key(%struct.dpp_configurator*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
