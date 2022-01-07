; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.config_file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @local_zones_apply_cfg(%struct.local_zones* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.local_zones*, align 8
  %5 = alloca %struct.config_file*, align 8
  store %struct.local_zones* %0, %struct.local_zones** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %6 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %7 = load %struct.config_file*, %struct.config_file** %5, align 8
  %8 = call i32 @lz_enter_zones(%struct.local_zones* %6, %struct.config_file* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

11:                                               ; preds = %2
  %12 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %13 = load %struct.config_file*, %struct.config_file** %5, align 8
  %14 = call i32 @local_zone_enter_defaults(%struct.local_zones* %12, %struct.config_file* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %46

17:                                               ; preds = %11
  %18 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %19 = load %struct.config_file*, %struct.config_file** %5, align 8
  %20 = call i32 @lz_enter_overrides(%struct.local_zones* %18, %struct.config_file* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %46

23:                                               ; preds = %17
  %24 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %25 = load %struct.config_file*, %struct.config_file** %5, align 8
  %26 = call i32 @lz_setup_implicit(%struct.local_zones* %24, %struct.config_file* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %46

29:                                               ; preds = %23
  %30 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %31 = call i32 @init_parents(%struct.local_zones* %30)
  %32 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %33 = load %struct.config_file*, %struct.config_file** %5, align 8
  %34 = call i32 @lz_enter_zone_tags(%struct.local_zones* %32, %struct.config_file* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %46

37:                                               ; preds = %29
  %38 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %39 = load %struct.config_file*, %struct.config_file** %5, align 8
  %40 = call i32 @lz_enter_data(%struct.local_zones* %38, %struct.config_file* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %46

43:                                               ; preds = %37
  %44 = load %struct.config_file*, %struct.config_file** %5, align 8
  %45 = call i32 @lz_freeup_cfg(%struct.config_file* %44)
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %42, %36, %28, %22, %16, %10
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @lz_enter_zones(%struct.local_zones*, %struct.config_file*) #1

declare dso_local i32 @local_zone_enter_defaults(%struct.local_zones*, %struct.config_file*) #1

declare dso_local i32 @lz_enter_overrides(%struct.local_zones*, %struct.config_file*) #1

declare dso_local i32 @lz_setup_implicit(%struct.local_zones*, %struct.config_file*) #1

declare dso_local i32 @init_parents(%struct.local_zones*) #1

declare dso_local i32 @lz_enter_zone_tags(%struct.local_zones*, %struct.config_file*) #1

declare dso_local i32 @lz_enter_data(%struct.local_zones*, %struct.config_file*) #1

declare dso_local i32 @lz_freeup_cfg(%struct.config_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
