; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_maybe_namespace_elt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_maybe_namespace_elt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }
%struct.symbol = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@EVAL_AVOID_SIDE_EFFECTS = common dso_local global i32 0, align 4
@LOC_TYPEDEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.type*, i8*, i32)* @value_maybe_namespace_elt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @value_maybe_namespace_elt(%struct.type* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.symbol*, align 8
  store %struct.type* %0, %struct.type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.type*, %struct.type** %5, align 8
  %11 = call i8* @TYPE_TAG_NAME(%struct.type* %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @get_selected_block(i32 0)
  %15 = load i32, i32* @VAR_DOMAIN, align 4
  %16 = call %struct.symbol* @cp_lookup_symbol_namespace(i8* %12, i8* %13, i32* null, i32 %14, i32 %15, i32* null)
  store %struct.symbol* %16, %struct.symbol** %9, align 8
  %17 = load %struct.symbol*, %struct.symbol** %9, align 8
  %18 = icmp eq %struct.symbol* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.value* null, %struct.value** %4, align 8
  br label %37

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load %struct.symbol*, %struct.symbol** %9, align 8
  %26 = call i64 @SYMBOL_CLASS(%struct.symbol* %25)
  %27 = load i64, i64* @LOC_TYPEDEF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.symbol*, %struct.symbol** %9, align 8
  %31 = call i32 @SYMBOL_TYPE(%struct.symbol* %30)
  %32 = call %struct.value* @allocate_value(i32 %31)
  store %struct.value* %32, %struct.value** %4, align 8
  br label %37

33:                                               ; preds = %24, %20
  %34 = load %struct.symbol*, %struct.symbol** %9, align 8
  %35 = call i32 @get_selected_block(i32 0)
  %36 = call %struct.value* @value_of_variable(%struct.symbol* %34, i32 %35)
  store %struct.value* %36, %struct.value** %4, align 8
  br label %37

37:                                               ; preds = %33, %29, %19
  %38 = load %struct.value*, %struct.value** %4, align 8
  ret %struct.value* %38
}

declare dso_local i8* @TYPE_TAG_NAME(%struct.type*) #1

declare dso_local %struct.symbol* @cp_lookup_symbol_namespace(i8*, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @get_selected_block(i32) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local %struct.value* @allocate_value(i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local %struct.value* @value_of_variable(%struct.symbol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
