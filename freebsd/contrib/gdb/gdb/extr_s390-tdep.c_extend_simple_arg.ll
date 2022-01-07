; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_extend_simple_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_extend_simple_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.value*)* @extend_simple_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extend_simple_arg(%struct.value* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %5 = load %struct.value*, %struct.value** %3, align 8
  %6 = call %struct.type* @VALUE_TYPE(%struct.value* %5)
  store %struct.type* %6, %struct.type** %4, align 8
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = call i64 @TYPE_UNSIGNED(%struct.type* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.value*, %struct.value** %3, align 8
  %12 = call i32 @VALUE_CONTENTS(%struct.value* %11)
  %13 = load %struct.type*, %struct.type** %4, align 8
  %14 = call i32 @TYPE_LENGTH(%struct.type* %13)
  %15 = call i32 @extract_unsigned_integer(i32 %12, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.value*, %struct.value** %3, align 8
  %18 = call i32 @VALUE_CONTENTS(%struct.value* %17)
  %19 = load %struct.type*, %struct.type** %4, align 8
  %20 = call i32 @TYPE_LENGTH(%struct.type* %19)
  %21 = call i32 @extract_signed_integer(i32 %18, i32 %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %16, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_UNSIGNED(%struct.type*) #1

declare dso_local i32 @extract_unsigned_integer(i32, i32) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @extract_signed_integer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
