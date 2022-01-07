; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c___list_remove_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c___list_remove_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.work_list = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.work_list*)* @__list_remove_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @__list_remove_head(%struct.work_list* %0) #0 {
  %2 = alloca %struct.work_list*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.work_list* %0, %struct.work_list** %2, align 8
  %4 = load %struct.work_list*, %struct.work_list** %2, align 8
  %5 = getelementptr inbounds %struct.work_list, %struct.work_list* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8
  store %struct.list_head* %7, %struct.list_head** %3, align 8
  %8 = load %struct.list_head*, %struct.list_head** %3, align 8
  %9 = call i32 @__list_delete(%struct.list_head* %8)
  %10 = load %struct.list_head*, %struct.list_head** %3, align 8
  ret %struct.list_head* %10
}

declare dso_local i32 @__list_delete(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
