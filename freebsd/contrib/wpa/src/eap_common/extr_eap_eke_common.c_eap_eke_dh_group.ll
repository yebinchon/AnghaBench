; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_dh_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_dh_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dh_group* (i32)* @eap_eke_dh_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dh_group* @eap_eke_dh_group(i32 %0) #0 {
  %2 = alloca %struct.dh_group*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 129, label %5
    i32 128, label %7
    i32 132, label %9
    i32 131, label %11
    i32 130, label %13
  ]

5:                                                ; preds = %1
  %6 = call %struct.dh_group* @dh_groups_get(i32 2)
  store %struct.dh_group* %6, %struct.dh_group** %2, align 8
  br label %16

7:                                                ; preds = %1
  %8 = call %struct.dh_group* @dh_groups_get(i32 5)
  store %struct.dh_group* %8, %struct.dh_group** %2, align 8
  br label %16

9:                                                ; preds = %1
  %10 = call %struct.dh_group* @dh_groups_get(i32 14)
  store %struct.dh_group* %10, %struct.dh_group** %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = call %struct.dh_group* @dh_groups_get(i32 15)
  store %struct.dh_group* %12, %struct.dh_group** %2, align 8
  br label %16

13:                                               ; preds = %1
  %14 = call %struct.dh_group* @dh_groups_get(i32 16)
  store %struct.dh_group* %14, %struct.dh_group** %2, align 8
  br label %16

15:                                               ; preds = %1
  store %struct.dh_group* null, %struct.dh_group** %2, align 8
  br label %16

16:                                               ; preds = %15, %13, %11, %9, %7, %5
  %17 = load %struct.dh_group*, %struct.dh_group** %2, align 8
  ret %struct.dh_group* %17
}

declare dso_local %struct.dh_group* @dh_groups_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
