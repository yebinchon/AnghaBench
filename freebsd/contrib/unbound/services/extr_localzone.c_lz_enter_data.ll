; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.config_file = type { %struct.config_strlist* }
%struct.config_strlist = type { i32, %struct.config_strlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_zones*, %struct.config_file*)* @lz_enter_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_enter_data(%struct.local_zones* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.local_zones*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  store %struct.local_zones* %0, %struct.local_zones** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %7 = load %struct.config_file*, %struct.config_file** %5, align 8
  %8 = getelementptr inbounds %struct.config_file, %struct.config_file* %7, i32 0, i32 0
  %9 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  store %struct.config_strlist* %9, %struct.config_strlist** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %12 = icmp ne %struct.config_strlist* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %15 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %16 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @lz_enter_rr_str(%struct.local_zones* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %27

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %24 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %23, i32 0, i32 1
  %25 = load %struct.config_strlist*, %struct.config_strlist** %24, align 8
  store %struct.config_strlist* %25, %struct.config_strlist** %6, align 8
  br label %10

26:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @lz_enter_rr_str(%struct.local_zones*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
