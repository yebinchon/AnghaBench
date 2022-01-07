; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_is_integer_like.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_is_integer_like.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TYPE_CODE_ENUM = common dso_local global i32 0, align 4
@TYPE_CODE_RANGE = common dso_local global i32 0, align 4
@TYPE_CODE_CHAR = common dso_local global i32 0, align 4
@TYPE_CODE_BOOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*)* @is_integer_like to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_integer_like(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %2, align 8
  %4 = load %struct.type*, %struct.type** %2, align 8
  %5 = call i32 @TYPE_CODE(%struct.type* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TYPE_CODE_INT, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @TYPE_CODE_ENUM, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @TYPE_CODE_RANGE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @TYPE_CODE_CHAR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %24 = icmp eq i32 %22, %23
  br label %25

25:                                               ; preds = %21, %17, %13, %9, %1
  %26 = phi i1 [ true, %17 ], [ true, %13 ], [ true, %9 ], [ true, %1 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
