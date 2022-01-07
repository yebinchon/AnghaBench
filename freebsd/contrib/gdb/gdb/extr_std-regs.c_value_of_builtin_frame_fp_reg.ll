; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_std-regs.c_value_of_builtin_frame_fp_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_std-regs.c_value_of_builtin_frame_fp_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.frame_info = type { i32 }

@DEPRECATED_FP_REGNUM = common dso_local global i64 0, align 8
@builtin_type_void_data_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.frame_info*)* @value_of_builtin_frame_fp_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @value_of_builtin_frame_fp_reg(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca i8*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %6 = load i64, i64* @DEPRECATED_FP_REGNUM, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @DEPRECATED_FP_REGNUM, align 8
  %10 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %11 = call %struct.value* @value_of_register(i64 %9, %struct.frame_info* %10)
  store %struct.value* %11, %struct.value** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %14 = call %struct.value* @allocate_value(i32 %13)
  store %struct.value* %14, %struct.value** %4, align 8
  %15 = load %struct.value*, %struct.value** %4, align 8
  %16 = call i8* @VALUE_CONTENTS_RAW(%struct.value* %15)
  store i8* %16, i8** %5, align 8
  %17 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %18 = icmp eq %struct.frame_info* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.value*, %struct.value** %4, align 8
  %22 = call i32 @VALUE_TYPE(%struct.value* %21)
  %23 = call i32 @TYPE_LENGTH(i32 %22)
  %24 = call i32 @memset(i8* %20, i32 0, i32 %23)
  br label %31

25:                                               ; preds = %12
  %26 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %29 = call i32 @get_frame_base_address(%struct.frame_info* %28)
  %30 = call i32 @ADDRESS_TO_POINTER(i32 %26, i8* %27, i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.value*, %struct.value** %4, align 8
  store %struct.value* %32, %struct.value** %2, align 8
  br label %33

33:                                               ; preds = %31, %8
  %34 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %34
}

declare dso_local %struct.value* @value_of_register(i64, %struct.frame_info*) #1

declare dso_local %struct.value* @allocate_value(i32) #1

declare dso_local i8* @VALUE_CONTENTS_RAW(%struct.value*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @ADDRESS_TO_POINTER(i32, i8*, i32) #1

declare dso_local i32 @get_frame_base_address(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
