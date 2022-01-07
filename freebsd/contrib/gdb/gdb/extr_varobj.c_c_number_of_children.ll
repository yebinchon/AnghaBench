; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_number_of_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_number_of_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }
%struct.type = type { i32 }

@BOUND_CANNOT_BE_DETERMINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.varobj*)* @c_number_of_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_number_of_children(%struct.varobj* %0) #0 {
  %2 = alloca %struct.varobj*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i32, align 4
  store %struct.varobj* %0, %struct.varobj** %2, align 8
  %6 = load %struct.varobj*, %struct.varobj** %2, align 8
  %7 = call %struct.type* @get_type(%struct.varobj* %6)
  store %struct.type* %7, %struct.type** %3, align 8
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call %struct.type* @get_target_type(%struct.type* %8)
  store %struct.type* %9, %struct.type** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = call i32 @TYPE_CODE(%struct.type* %10)
  switch i32 %11, label %45 [
    i32 133, label %12
    i32 130, label %33
    i32 129, label %33
    i32 131, label %36
  ]

12:                                               ; preds = %1
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call i32 @TYPE_LENGTH(%struct.type* %13)
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct.type*, %struct.type** %4, align 8
  %18 = call i32 @TYPE_LENGTH(%struct.type* %17)
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.type*, %struct.type** %3, align 8
  %22 = call i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type* %21)
  %23 = load i32, i32* @BOUND_CANNOT_BE_DETERMINED, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.type*, %struct.type** %3, align 8
  %27 = call i32 @TYPE_LENGTH(%struct.type* %26)
  %28 = load %struct.type*, %struct.type** %4, align 8
  %29 = call i32 @TYPE_LENGTH(%struct.type* %28)
  %30 = sdiv i32 %27, %29
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %20, %16, %12
  store i32 -1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %25
  br label %46

33:                                               ; preds = %1, %1
  %34 = load %struct.type*, %struct.type** %3, align 8
  %35 = call i32 @TYPE_NFIELDS(%struct.type* %34)
  store i32 %35, i32* %5, align 4
  br label %46

36:                                               ; preds = %1
  %37 = load %struct.type*, %struct.type** %4, align 8
  %38 = call i32 @TYPE_CODE(%struct.type* %37)
  switch i32 %38, label %43 [
    i32 130, label %39
    i32 129, label %39
    i32 132, label %42
    i32 128, label %42
  ]

39:                                               ; preds = %36, %36
  %40 = load %struct.type*, %struct.type** %4, align 8
  %41 = call i32 @TYPE_NFIELDS(%struct.type* %40)
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %36, %36
  store i32 0, i32* %5, align 4
  br label %44

43:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %42, %39
  br label %46

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %45, %44, %33, %32
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.type* @get_type(%struct.varobj*) #1

declare dso_local %struct.type* @get_target_type(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
