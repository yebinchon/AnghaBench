; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configuration_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configuration_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_configuration = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp_configuration_valid(%struct.dpp_configuration* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpp_configuration*, align 8
  store %struct.dpp_configuration* %0, %struct.dpp_configuration** %3, align 8
  %4 = load %struct.dpp_configuration*, %struct.dpp_configuration** %3, align 8
  %5 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load %struct.dpp_configuration*, %struct.dpp_configuration** %3, align 8
  %11 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @dpp_akm_psk(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.dpp_configuration*, %struct.dpp_configuration** %3, align 8
  %17 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.dpp_configuration*, %struct.dpp_configuration** %3, align 8
  %22 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %39

26:                                               ; preds = %20, %15, %9
  %27 = load %struct.dpp_configuration*, %struct.dpp_configuration** %3, align 8
  %28 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @dpp_akm_sae(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.dpp_configuration*, %struct.dpp_configuration** %3, align 8
  %34 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %39

38:                                               ; preds = %32, %26
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37, %25, %8
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @dpp_akm_psk(i32) #1

declare dso_local i64 @dpp_akm_sae(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
