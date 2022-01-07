; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_return_value_convention.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_return_value_convention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.type = type { i32 }

@RETURN_VALUE_STRUCT_CONVENTION = common dso_local global i32 0, align 4
@RETURN_VALUE_REGISTER_CONVENTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.type*)* @s390_return_value_convention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_return_value_convention(%struct.gdbarch* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %7 = load %struct.type*, %struct.type** %5, align 8
  %8 = call i32 @TYPE_LENGTH(%struct.type* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 8
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @RETURN_VALUE_STRUCT_CONVENTION, align 4
  store i32 %12, i32* %3, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = call i32 @TYPE_CODE(%struct.type* %14)
  switch i32 %15, label %18 [
    i32 129, label %16
    i32 128, label %16
    i32 130, label %16
  ]

16:                                               ; preds = %13, %13, %13
  %17 = load i32, i32* @RETURN_VALUE_STRUCT_CONVENTION, align 4
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %16, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
