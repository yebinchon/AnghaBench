; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wrapper.c_gdb_value_struct_elt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wrapper.c_gdb_value_struct_elt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.value = type { i32 }
%struct.captured_value_struct_elt_args = type { i8*, i32*, i8*, %struct.value**, %struct.value**, %struct.value** }

@do_captured_value_struct_elt = common dso_local global i32 0, align 4
@RETURN_MASK_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_value_struct_elt(%struct.ui_out* %0, %struct.value** %1, %struct.value** %2, %struct.value** %3, i8* %4, i32* %5, i8* %6) #0 {
  %8 = alloca %struct.ui_out*, align 8
  %9 = alloca %struct.value**, align 8
  %10 = alloca %struct.value**, align 8
  %11 = alloca %struct.value**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.captured_value_struct_elt_args, align 8
  store %struct.ui_out* %0, %struct.ui_out** %8, align 8
  store %struct.value** %1, %struct.value*** %9, align 8
  store %struct.value** %2, %struct.value*** %10, align 8
  store %struct.value** %3, %struct.value*** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.value**, %struct.value*** %10, align 8
  %17 = getelementptr inbounds %struct.captured_value_struct_elt_args, %struct.captured_value_struct_elt_args* %15, i32 0, i32 5
  store %struct.value** %16, %struct.value*** %17, align 8
  %18 = load %struct.value**, %struct.value*** %11, align 8
  %19 = getelementptr inbounds %struct.captured_value_struct_elt_args, %struct.captured_value_struct_elt_args* %15, i32 0, i32 4
  store %struct.value** %18, %struct.value*** %19, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = getelementptr inbounds %struct.captured_value_struct_elt_args, %struct.captured_value_struct_elt_args* %15, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = getelementptr inbounds %struct.captured_value_struct_elt_args, %struct.captured_value_struct_elt_args* %15, i32 0, i32 1
  store i32* %22, i32** %23, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = getelementptr inbounds %struct.captured_value_struct_elt_args, %struct.captured_value_struct_elt_args* %15, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load %struct.value**, %struct.value*** %9, align 8
  %27 = getelementptr inbounds %struct.captured_value_struct_elt_args, %struct.captured_value_struct_elt_args* %15, i32 0, i32 3
  store %struct.value** %26, %struct.value*** %27, align 8
  %28 = load %struct.ui_out*, %struct.ui_out** %8, align 8
  %29 = load i32, i32* @do_captured_value_struct_elt, align 4
  %30 = load i32, i32* @RETURN_MASK_ALL, align 4
  %31 = call i32 @catch_exceptions(%struct.ui_out* %28, i32 %29, %struct.captured_value_struct_elt_args* %15, i32* null, i32 %30)
  ret i32 %31
}

declare dso_local i32 @catch_exceptions(%struct.ui_out*, i32, %struct.captured_value_struct_elt_args*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
