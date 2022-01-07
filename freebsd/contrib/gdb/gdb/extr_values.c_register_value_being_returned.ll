; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_register_value_being_returned.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_register_value_being_returned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }
%struct.regcache = type { i32 }

@TYPE_CODE_VOID = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@RETURN_VALUE_REGISTER_CONVENTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @register_value_being_returned(%struct.type* %0, %struct.regcache* %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.regcache*, align 8
  %6 = alloca %struct.value*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.regcache* %1, %struct.regcache** %5, align 8
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = call %struct.value* @allocate_value(%struct.type* %7)
  store %struct.value* %8, %struct.value** %6, align 8
  %9 = load %struct.type*, %struct.type** %4, align 8
  %10 = call i64 @TYPE_CODE(%struct.type* %9)
  %11 = load i64, i64* @TYPE_CODE_VOID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.value*, %struct.value** %6, align 8
  store %struct.value* %14, %struct.value** %3, align 8
  br label %43

15:                                               ; preds = %2
  %16 = load i32, i32* @current_gdbarch, align 4
  %17 = call i32 @gdbarch_return_value_p(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = load %struct.type*, %struct.type** %4, align 8
  %21 = call i32 @CHECK_TYPEDEF(%struct.type* %20)
  %22 = load %struct.type*, %struct.type** %4, align 8
  %23 = load %struct.regcache*, %struct.regcache** %5, align 8
  %24 = load %struct.value*, %struct.value** %6, align 8
  %25 = call i32* @VALUE_CONTENTS_RAW(%struct.value* %24)
  %26 = call i32 @EXTRACT_RETURN_VALUE(%struct.type* %22, %struct.regcache* %23, i32* %25)
  %27 = load %struct.value*, %struct.value** %6, align 8
  store %struct.value* %27, %struct.value** %3, align 8
  br label %43

28:                                               ; preds = %15
  %29 = load i32, i32* @current_gdbarch, align 4
  %30 = load %struct.type*, %struct.type** %4, align 8
  %31 = call i32 @gdbarch_return_value(i32 %29, %struct.type* %30, %struct.regcache* null, i32* null, i32* null)
  %32 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @gdb_assert(i32 %34)
  %36 = load i32, i32* @current_gdbarch, align 4
  %37 = load %struct.type*, %struct.type** %4, align 8
  %38 = load %struct.regcache*, %struct.regcache** %5, align 8
  %39 = load %struct.value*, %struct.value** %6, align 8
  %40 = call i32* @VALUE_CONTENTS_RAW(%struct.value* %39)
  %41 = call i32 @gdbarch_return_value(i32 %36, %struct.type* %37, %struct.regcache* %38, i32* %40, i32* null)
  %42 = load %struct.value*, %struct.value** %6, align 8
  store %struct.value* %42, %struct.value** %3, align 8
  br label %43

43:                                               ; preds = %28, %19, %13
  %44 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %44
}

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @gdbarch_return_value_p(i32) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @EXTRACT_RETURN_VALUE(%struct.type*, %struct.regcache*, i32*) #1

declare dso_local i32* @VALUE_CONTENTS_RAW(%struct.value*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @gdbarch_return_value(i32, %struct.type*, %struct.regcache*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
