; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_get_target_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_get_target_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.type*)* @get_target_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @get_target_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %2, align 8
  %3 = load %struct.type*, %struct.type** %2, align 8
  %4 = icmp ne %struct.type* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.type*, %struct.type** %2, align 8
  %7 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %6)
  store %struct.type* %7, %struct.type** %2, align 8
  %8 = load %struct.type*, %struct.type** %2, align 8
  %9 = icmp ne %struct.type* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load %struct.type*, %struct.type** %2, align 8
  %12 = call %struct.type* @check_typedef(%struct.type* %11)
  store %struct.type* %12, %struct.type** %2, align 8
  br label %13

13:                                               ; preds = %10, %5
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %15
}

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
