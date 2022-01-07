; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_bootstrap_get_uri.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_bootstrap_get_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_global = type { i32 }
%struct.dpp_bootstrap_info = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dpp_bootstrap_get_uri(%struct.dpp_global* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dpp_global*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpp_bootstrap_info*, align 8
  store %struct.dpp_global* %0, %struct.dpp_global** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.dpp_bootstrap_info* @dpp_bootstrap_get_id(%struct.dpp_global* %7, i32 %8)
  store %struct.dpp_bootstrap_info* %9, %struct.dpp_bootstrap_info** %6, align 8
  %10 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %11 = icmp ne %struct.dpp_bootstrap_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %15 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

declare dso_local %struct.dpp_bootstrap_info* @dpp_bootstrap_get_id(%struct.dpp_global*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
