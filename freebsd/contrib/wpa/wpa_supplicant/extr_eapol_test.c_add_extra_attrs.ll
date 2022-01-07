; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_add_extra_attrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_add_extra_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32 }
%struct.extra_radius_attr = type { %struct.extra_radius_attr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radius_msg*, %struct.extra_radius_attr*)* @add_extra_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_extra_attrs(%struct.radius_msg* %0, %struct.extra_radius_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radius_msg*, align 8
  %5 = alloca %struct.extra_radius_attr*, align 8
  %6 = alloca %struct.extra_radius_attr*, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %4, align 8
  store %struct.extra_radius_attr* %1, %struct.extra_radius_attr** %5, align 8
  %7 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %5, align 8
  store %struct.extra_radius_attr* %7, %struct.extra_radius_attr** %6, align 8
  br label %8

8:                                                ; preds = %18, %2
  %9 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %6, align 8
  %10 = icmp ne %struct.extra_radius_attr* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %13 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %6, align 8
  %14 = call i64 @add_extra_attr(%struct.radius_msg* %12, %struct.extra_radius_attr* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %23

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %6, align 8
  %20 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %19, i32 0, i32 0
  %21 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %20, align 8
  store %struct.extra_radius_attr* %21, %struct.extra_radius_attr** %6, align 8
  br label %8

22:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @add_extra_attr(%struct.radius_msg*, %struct.extra_radius_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
