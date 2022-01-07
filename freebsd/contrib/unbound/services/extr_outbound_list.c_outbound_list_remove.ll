; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outbound_list.c_outbound_list_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outbound_list.c_outbound_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outbound_list = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.outbound_entry = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @outbound_list_remove(%struct.outbound_list* %0, %struct.outbound_entry* %1) #0 {
  %3 = alloca %struct.outbound_list*, align 8
  %4 = alloca %struct.outbound_entry*, align 8
  store %struct.outbound_list* %0, %struct.outbound_list** %3, align 8
  store %struct.outbound_entry* %1, %struct.outbound_entry** %4, align 8
  %5 = load %struct.outbound_entry*, %struct.outbound_entry** %4, align 8
  %6 = icmp ne %struct.outbound_entry* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %45

8:                                                ; preds = %2
  %9 = load %struct.outbound_entry*, %struct.outbound_entry** %4, align 8
  %10 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.outbound_entry*, %struct.outbound_entry** %4, align 8
  %13 = call i32 @outnet_serviced_query_stop(i32 %11, %struct.outbound_entry* %12)
  %14 = load %struct.outbound_entry*, %struct.outbound_entry** %4, align 8
  %15 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %8
  %19 = load %struct.outbound_entry*, %struct.outbound_entry** %4, align 8
  %20 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.outbound_entry*, %struct.outbound_entry** %4, align 8
  %23 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %25, align 8
  br label %26

26:                                               ; preds = %18, %8
  %27 = load %struct.outbound_entry*, %struct.outbound_entry** %4, align 8
  %28 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.outbound_entry*, %struct.outbound_entry** %4, align 8
  %33 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.outbound_entry*, %struct.outbound_entry** %4, align 8
  %36 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %38, align 8
  br label %45

39:                                               ; preds = %26
  %40 = load %struct.outbound_entry*, %struct.outbound_entry** %4, align 8
  %41 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.outbound_list*, %struct.outbound_list** %3, align 8
  %44 = getelementptr inbounds %struct.outbound_list, %struct.outbound_list* %43, i32 0, i32 0
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %44, align 8
  br label %45

45:                                               ; preds = %7, %39, %31
  ret void
}

declare dso_local i32 @outnet_serviced_query_stop(i32, %struct.outbound_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
