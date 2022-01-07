; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outbound_list.c_outbound_list_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outbound_list.c_outbound_list_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outbound_list = type { %struct.outbound_entry* }
%struct.outbound_entry = type { i32, %struct.outbound_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @outbound_list_clear(%struct.outbound_list* %0) #0 {
  %2 = alloca %struct.outbound_list*, align 8
  %3 = alloca %struct.outbound_entry*, align 8
  %4 = alloca %struct.outbound_entry*, align 8
  store %struct.outbound_list* %0, %struct.outbound_list** %2, align 8
  %5 = load %struct.outbound_list*, %struct.outbound_list** %2, align 8
  %6 = getelementptr inbounds %struct.outbound_list, %struct.outbound_list* %5, i32 0, i32 0
  %7 = load %struct.outbound_entry*, %struct.outbound_entry** %6, align 8
  store %struct.outbound_entry* %7, %struct.outbound_entry** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.outbound_entry*, %struct.outbound_entry** %3, align 8
  %10 = icmp ne %struct.outbound_entry* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load %struct.outbound_entry*, %struct.outbound_entry** %3, align 8
  %13 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %12, i32 0, i32 1
  %14 = load %struct.outbound_entry*, %struct.outbound_entry** %13, align 8
  store %struct.outbound_entry* %14, %struct.outbound_entry** %4, align 8
  %15 = load %struct.outbound_entry*, %struct.outbound_entry** %3, align 8
  %16 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.outbound_entry*, %struct.outbound_entry** %3, align 8
  %19 = call i32 @outnet_serviced_query_stop(i32 %17, %struct.outbound_entry* %18)
  %20 = load %struct.outbound_entry*, %struct.outbound_entry** %4, align 8
  store %struct.outbound_entry* %20, %struct.outbound_entry** %3, align 8
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.outbound_list*, %struct.outbound_list** %2, align 8
  %23 = call i32 @outbound_list_init(%struct.outbound_list* %22)
  ret void
}

declare dso_local i32 @outnet_serviced_query_stop(i32, %struct.outbound_entry*) #1

declare dso_local i32 @outbound_list_init(%struct.outbound_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
