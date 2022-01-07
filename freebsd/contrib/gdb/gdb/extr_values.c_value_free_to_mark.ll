; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_free_to_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_free_to_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }

@all_values = common dso_local global %struct.value* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @value_free_to_mark(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %2, align 8
  %5 = load %struct.value*, %struct.value** @all_values, align 8
  store %struct.value* %5, %struct.value** %3, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.value*, %struct.value** %3, align 8
  %8 = icmp ne %struct.value* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load %struct.value*, %struct.value** %3, align 8
  %11 = load %struct.value*, %struct.value** %2, align 8
  %12 = icmp ne %struct.value* %10, %11
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ]
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = load %struct.value*, %struct.value** %3, align 8
  %17 = call %struct.value* @VALUE_NEXT(%struct.value* %16)
  store %struct.value* %17, %struct.value** %4, align 8
  %18 = load %struct.value*, %struct.value** %3, align 8
  %19 = call i32 @value_free(%struct.value* %18)
  br label %20

20:                                               ; preds = %15
  %21 = load %struct.value*, %struct.value** %4, align 8
  store %struct.value* %21, %struct.value** %3, align 8
  br label %6

22:                                               ; preds = %13
  %23 = load %struct.value*, %struct.value** %3, align 8
  store %struct.value* %23, %struct.value** @all_values, align 8
  ret void
}

declare dso_local %struct.value* @VALUE_NEXT(%struct.value*) #1

declare dso_local i32 @value_free(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
