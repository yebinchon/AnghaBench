; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_zone.c_zone_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_zone.c_zone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_dataset_head = type { i32 }

@zd_next = common dso_local global i32 0, align 4
@M_ZONES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.zone_dataset_head*, align 8
  %4 = alloca %struct.zone_dataset_head*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.zone_dataset_head*
  store %struct.zone_dataset_head* %6, %struct.zone_dataset_head** %3, align 8
  br label %7

7:                                                ; preds = %11, %1
  %8 = load %struct.zone_dataset_head*, %struct.zone_dataset_head** %3, align 8
  %9 = call %struct.zone_dataset_head* @LIST_FIRST(%struct.zone_dataset_head* %8)
  store %struct.zone_dataset_head* %9, %struct.zone_dataset_head** %4, align 8
  %10 = icmp ne %struct.zone_dataset_head* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load %struct.zone_dataset_head*, %struct.zone_dataset_head** %4, align 8
  %13 = load i32, i32* @zd_next, align 4
  %14 = call i32 @LIST_REMOVE(%struct.zone_dataset_head* %12, i32 %13)
  %15 = load %struct.zone_dataset_head*, %struct.zone_dataset_head** %4, align 8
  %16 = load i32, i32* @M_ZONES, align 4
  %17 = call i32 @free(%struct.zone_dataset_head* %15, i32 %16)
  br label %7

18:                                               ; preds = %7
  %19 = load %struct.zone_dataset_head*, %struct.zone_dataset_head** %3, align 8
  %20 = load i32, i32* @M_ZONES, align 4
  %21 = call i32 @free(%struct.zone_dataset_head* %19, i32 %20)
  ret void
}

declare dso_local %struct.zone_dataset_head* @LIST_FIRST(%struct.zone_dataset_head*) #1

declare dso_local i32 @LIST_REMOVE(%struct.zone_dataset_head*, i32) #1

declare dso_local i32 @free(%struct.zone_dataset_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
