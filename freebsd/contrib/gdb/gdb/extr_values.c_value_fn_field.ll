; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_fn_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_fn_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.fn_field = type { i32 }
%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.minimal_symbol = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_fn_field(%struct.value** %0, %struct.fn_field* %1, i32 %2, %struct.type* %3, i32 %4) #0 {
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value**, align 8
  %8 = alloca %struct.fn_field*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.value*, align 8
  %13 = alloca %struct.type*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.symbol*, align 8
  %16 = alloca %struct.minimal_symbol*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.value** %0, %struct.value*** %7, align 8
  store %struct.fn_field* %1, %struct.fn_field** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.type* %3, %struct.type** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.type* @TYPE_FN_FIELD_TYPE(%struct.fn_field* %19, i32 %20)
  store %struct.type* %21, %struct.type** %13, align 8
  %22 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %22, i32 %23)
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = load i32, i32* @VAR_DOMAIN, align 4
  %27 = call %struct.symbol* @lookup_symbol(i8* %25, i32 0, i32 %26, i32 0, i32* null)
  store %struct.symbol* %27, %struct.symbol** %15, align 8
  %28 = load %struct.symbol*, %struct.symbol** %15, align 8
  %29 = icmp ne %struct.symbol* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %16, align 8
  br label %42

31:                                               ; preds = %5
  %32 = load %struct.symbol*, %struct.symbol** %15, align 8
  %33 = icmp eq %struct.symbol* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @gdb_assert(i32 %34)
  %36 = load i8*, i8** %14, align 8
  %37 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* %36, i32* null, i32* null)
  store %struct.minimal_symbol* %37, %struct.minimal_symbol** %16, align 8
  %38 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %39 = icmp eq %struct.minimal_symbol* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store %struct.value* null, %struct.value** %6, align 8
  br label %75

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.type*, %struct.type** %13, align 8
  %44 = call %struct.value* @allocate_value(%struct.type* %43)
  store %struct.value* %44, %struct.value** %12, align 8
  %45 = load %struct.symbol*, %struct.symbol** %15, align 8
  %46 = icmp ne %struct.symbol* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.symbol*, %struct.symbol** %15, align 8
  %49 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %48)
  %50 = call i32 @BLOCK_START(i32 %49)
  store i32 %50, i32* %17, align 4
  br label %54

51:                                               ; preds = %42
  %52 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %53 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %52)
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load %struct.value**, %struct.value*** %7, align 8
  %56 = icmp ne %struct.value** %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load %struct.type*, %struct.type** %10, align 8
  %59 = load %struct.value**, %struct.value*** %7, align 8
  %60 = load %struct.value*, %struct.value** %59, align 8
  %61 = call %struct.type* @VALUE_TYPE(%struct.value* %60)
  %62 = icmp ne %struct.type* %58, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.type*, %struct.type** %10, align 8
  %65 = call i32 @lookup_pointer_type(%struct.type* %64)
  %66 = load %struct.value**, %struct.value*** %7, align 8
  %67 = load %struct.value*, %struct.value** %66, align 8
  %68 = call i32 @value_addr(%struct.value* %67)
  %69 = call i32 @value_cast(i32 %65, i32 %68)
  %70 = call %struct.value* @value_ind(i32 %69)
  %71 = load %struct.value**, %struct.value*** %7, align 8
  store %struct.value* %70, %struct.value** %71, align 8
  br label %72

72:                                               ; preds = %63, %57
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.value*, %struct.value** %12, align 8
  store %struct.value* %74, %struct.value** %6, align 8
  br label %75

75:                                               ; preds = %73, %40
  %76 = load %struct.value*, %struct.value** %6, align 8
  ret %struct.value* %76
}

declare dso_local %struct.type* @TYPE_FN_FIELD_TYPE(%struct.fn_field*, i32) #1

declare dso_local i8* @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field*, i32) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local i32 @BLOCK_START(i32) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local %struct.value* @value_ind(i32) #1

declare dso_local i32 @value_cast(i32, i32) #1

declare dso_local i32 @lookup_pointer_type(%struct.type*) #1

declare dso_local i32 @value_addr(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
