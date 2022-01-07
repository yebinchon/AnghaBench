; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_overrides.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_overrides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.config_file = type { %struct.config_str3list* }
%struct.config_str3list = type { i32, i32, i32, %struct.config_str3list* }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_zones*, %struct.config_file*)* @lz_enter_overrides to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_enter_overrides(%struct.local_zones* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.local_zones*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_str3list*, align 8
  store %struct.local_zones* %0, %struct.local_zones** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %7 = load %struct.config_file*, %struct.config_file** %5, align 8
  %8 = getelementptr inbounds %struct.config_file, %struct.config_file* %7, i32 0, i32 0
  %9 = load %struct.config_str3list*, %struct.config_str3list** %8, align 8
  store %struct.config_str3list* %9, %struct.config_str3list** %6, align 8
  br label %10

10:                                               ; preds = %29, %2
  %11 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %12 = icmp ne %struct.config_str3list* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %15 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %16 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %19 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %22 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %25 = call i32 @lz_enter_override(%struct.local_zones* %14, i32 %17, i32 %20, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %34

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %31 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %30, i32 0, i32 3
  %32 = load %struct.config_str3list*, %struct.config_str3list** %31, align 8
  store %struct.config_str3list* %32, %struct.config_str3list** %6, align 8
  br label %10

33:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @lz_enter_override(%struct.local_zones*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
