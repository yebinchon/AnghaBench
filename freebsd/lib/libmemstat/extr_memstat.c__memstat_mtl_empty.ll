; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat.c__memstat_mtl_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat.c__memstat_mtl_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type_list = type { i32 }
%struct.memory_type = type { %struct.memory_type*, %struct.memory_type* }

@mt_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_memstat_mtl_empty(%struct.memory_type_list* %0) #0 {
  %2 = alloca %struct.memory_type_list*, align 8
  %3 = alloca %struct.memory_type*, align 8
  store %struct.memory_type_list* %0, %struct.memory_type_list** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.memory_type_list*, %struct.memory_type_list** %2, align 8
  %6 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %5, i32 0, i32 0
  %7 = call %struct.memory_type* @LIST_FIRST(i32* %6)
  store %struct.memory_type* %7, %struct.memory_type** %3, align 8
  %8 = icmp ne %struct.memory_type* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %11 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %10, i32 0, i32 1
  %12 = load %struct.memory_type*, %struct.memory_type** %11, align 8
  %13 = call i32 @free(%struct.memory_type* %12)
  %14 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %15 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %14, i32 0, i32 0
  %16 = load %struct.memory_type*, %struct.memory_type** %15, align 8
  %17 = call i32 @free(%struct.memory_type* %16)
  %18 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %19 = load i32, i32* @mt_list, align 4
  %20 = call i32 @LIST_REMOVE(%struct.memory_type* %18, i32 %19)
  %21 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %22 = call i32 @free(%struct.memory_type* %21)
  br label %4

23:                                               ; preds = %4
  ret void
}

declare dso_local %struct.memory_type* @LIST_FIRST(i32*) #1

declare dso_local i32 @free(%struct.memory_type*) #1

declare dso_local i32 @LIST_REMOVE(%struct.memory_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
