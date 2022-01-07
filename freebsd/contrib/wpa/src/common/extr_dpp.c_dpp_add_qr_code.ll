; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_add_qr_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_add_qr_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_bootstrap_info = type { i32, i32 }
%struct.dpp_global = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpp_bootstrap_info* @dpp_add_qr_code(%struct.dpp_global* %0, i8* %1) #0 {
  %3 = alloca %struct.dpp_bootstrap_info*, align 8
  %4 = alloca %struct.dpp_global*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dpp_bootstrap_info*, align 8
  store %struct.dpp_global* %0, %struct.dpp_global** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  %8 = icmp ne %struct.dpp_global* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.dpp_bootstrap_info* null, %struct.dpp_bootstrap_info** %3, align 8
  br label %27

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.dpp_bootstrap_info* @dpp_parse_qr_code(i8* %11)
  store %struct.dpp_bootstrap_info* %12, %struct.dpp_bootstrap_info** %6, align 8
  %13 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %14 = icmp ne %struct.dpp_bootstrap_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.dpp_bootstrap_info* null, %struct.dpp_bootstrap_info** %3, align 8
  br label %27

16:                                               ; preds = %10
  %17 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  %18 = call i32 @dpp_next_id(%struct.dpp_global* %17)
  %19 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %20 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  %22 = getelementptr inbounds %struct.dpp_global, %struct.dpp_global* %21, i32 0, i32 0
  %23 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %24 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %23, i32 0, i32 0
  %25 = call i32 @dl_list_add(i32* %22, i32* %24)
  %26 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  store %struct.dpp_bootstrap_info* %26, %struct.dpp_bootstrap_info** %3, align 8
  br label %27

27:                                               ; preds = %16, %15, %9
  %28 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %3, align 8
  ret %struct.dpp_bootstrap_info* %28
}

declare dso_local %struct.dpp_bootstrap_info* @dpp_parse_qr_code(i8*) #1

declare dso_local i32 @dpp_next_id(%struct.dpp_global*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
