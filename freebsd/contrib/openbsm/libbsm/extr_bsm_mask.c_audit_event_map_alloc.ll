; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_mask.c_audit_event_map_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_mask.c_audit_event_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_event_map = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_event_map* ()* @audit_event_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_event_map* @audit_event_map_alloc() #0 {
  %1 = alloca %struct.audit_event_map*, align 8
  %2 = alloca %struct.audit_event_map*, align 8
  %3 = call %struct.audit_event_map* @malloc(i32 16)
  store %struct.audit_event_map* %3, %struct.audit_event_map** %2, align 8
  %4 = load %struct.audit_event_map*, %struct.audit_event_map** %2, align 8
  %5 = icmp eq %struct.audit_event_map* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load %struct.audit_event_map*, %struct.audit_event_map** %2, align 8
  store %struct.audit_event_map* %7, %struct.audit_event_map** %1, align 8
  br label %24

8:                                                ; preds = %0
  %9 = load %struct.audit_event_map*, %struct.audit_event_map** %2, align 8
  %10 = call i32 @bzero(%struct.audit_event_map* %9, i32 16)
  %11 = load %struct.audit_event_map*, %struct.audit_event_map** %2, align 8
  %12 = getelementptr inbounds %struct.audit_event_map, %struct.audit_event_map* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.audit_event_map*, %struct.audit_event_map** %2, align 8
  %15 = getelementptr inbounds %struct.audit_event_map, %struct.audit_event_map* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.audit_event_map*, %struct.audit_event_map** %2, align 8
  %18 = getelementptr inbounds %struct.audit_event_map, %struct.audit_event_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.audit_event_map*, %struct.audit_event_map** %2, align 8
  %21 = getelementptr inbounds %struct.audit_event_map, %struct.audit_event_map* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.audit_event_map*, %struct.audit_event_map** %2, align 8
  store %struct.audit_event_map* %23, %struct.audit_event_map** %1, align 8
  br label %24

24:                                               ; preds = %8, %6
  %25 = load %struct.audit_event_map*, %struct.audit_event_map** %1, align 8
  ret %struct.audit_event_map* %25
}

declare dso_local %struct.audit_event_map* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.audit_event_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
