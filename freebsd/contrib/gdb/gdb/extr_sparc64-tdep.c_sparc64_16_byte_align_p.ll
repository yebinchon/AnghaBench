; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_16_byte_align_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_16_byte_align_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*)* @sparc64_16_byte_align_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc64_16_byte_align_p(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %6 = load %struct.type*, %struct.type** %3, align 8
  %7 = call i64 @sparc64_floating_p(%struct.type* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = call i32 @TYPE_LENGTH(%struct.type* %10)
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %39

14:                                               ; preds = %9, %1
  %15 = load %struct.type*, %struct.type** %3, align 8
  %16 = call i64 @sparc64_structure_or_union_p(%struct.type* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.type*, %struct.type** %3, align 8
  %22 = call i32 @TYPE_NFIELDS(%struct.type* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.type*, %struct.type** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TYPE_FIELD_TYPE(%struct.type* %25, i32 %26)
  %28 = call %struct.type* @check_typedef(i32 %27)
  store %struct.type* %28, %struct.type** %5, align 8
  %29 = load %struct.type*, %struct.type** %5, align 8
  %30 = call i32 @sparc64_16_byte_align_p(%struct.type* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %39

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %19

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %14
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %32, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @sparc64_floating_p(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @sparc64_structure_or_union_p(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
