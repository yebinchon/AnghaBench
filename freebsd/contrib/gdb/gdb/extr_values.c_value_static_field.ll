; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_static_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_static_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.minimal_symbol = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"static field's value depends on the current frame - bad debug info?\00", align 1
@lval_memory = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_static_field(%struct.type* %0, i32 %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.value*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca %struct.minimal_symbol*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @TYPE_FIELD_STATIC_HAS_ADDR(%struct.type* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.type*, %struct.type** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @TYPE_FIELD_TYPE(%struct.type* %15, i32 %16)
  %18 = load %struct.type*, %struct.type** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @TYPE_FIELD_STATIC_PHYSADDR(%struct.type* %18, i32 %19)
  %21 = call %struct.value* @value_at(i32 %17, i32 %20, i32* null)
  store %struct.value* %21, %struct.value** %6, align 8
  br label %72

22:                                               ; preds = %2
  %23 = load %struct.type*, %struct.type** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @TYPE_FIELD_STATIC_PHYSNAME(%struct.type* %23, i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @VAR_DOMAIN, align 4
  %28 = call %struct.symbol* @lookup_symbol(i8* %26, i32 0, i32 %27, i32 0, i32* null)
  store %struct.symbol* %28, %struct.symbol** %8, align 8
  %29 = load %struct.symbol*, %struct.symbol** %8, align 8
  %30 = icmp eq %struct.symbol* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* %32, i32* null, i32* null)
  store %struct.minimal_symbol* %33, %struct.minimal_symbol** %9, align 8
  %34 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %35 = icmp ne %struct.minimal_symbol* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store %struct.value* null, %struct.value** %3, align 8
  br label %74

37:                                               ; preds = %31
  %38 = load %struct.type*, %struct.type** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @TYPE_FIELD_TYPE(%struct.type* %38, i32 %39)
  %41 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %42 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %41)
  %43 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %44 = call i32* @SYMBOL_BFD_SECTION(%struct.minimal_symbol* %43)
  %45 = call %struct.value* @value_at(i32 %40, i32 %42, i32* %44)
  store %struct.value* %45, %struct.value** %6, align 8
  br label %46

46:                                               ; preds = %37
  br label %56

47:                                               ; preds = %22
  %48 = load %struct.symbol*, %struct.symbol** %8, align 8
  %49 = call i64 @symbol_read_needs_frame(%struct.symbol* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @warning(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  %54 = load %struct.symbol*, %struct.symbol** %8, align 8
  %55 = call %struct.value* @read_var_value(%struct.symbol* %54, i32* null)
  store %struct.value* %55, %struct.value** %6, align 8
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.value*, %struct.value** %6, align 8
  %58 = icmp ne %struct.value* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.value*, %struct.value** %6, align 8
  %61 = call i64 @VALUE_LVAL(%struct.value* %60)
  %62 = load i64, i64* @lval_memory, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.type*, %struct.type** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @TYPE_FIELD(%struct.type* %65, i32 %66)
  %68 = load %struct.value*, %struct.value** %6, align 8
  %69 = call i32 @VALUE_ADDRESS(%struct.value* %68)
  %70 = call i32 @SET_FIELD_PHYSADDR(i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %64, %59, %56
  br label %72

72:                                               ; preds = %71, %14
  %73 = load %struct.value*, %struct.value** %6, align 8
  store %struct.value* %73, %struct.value** %3, align 8
  br label %74

74:                                               ; preds = %72, %36
  %75 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %75
}

declare dso_local i64 @TYPE_FIELD_STATIC_HAS_ADDR(%struct.type*, i32) #1

declare dso_local %struct.value* @value_at(i32, i32, i32*) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_STATIC_PHYSADDR(%struct.type*, i32) #1

declare dso_local i8* @TYPE_FIELD_STATIC_PHYSNAME(%struct.type*, i32) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32, i32, i32, i32*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32* @SYMBOL_BFD_SECTION(%struct.minimal_symbol*) #1

declare dso_local i64 @symbol_read_needs_frame(%struct.symbol*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local %struct.value* @read_var_value(%struct.symbol*, i32*) #1

declare dso_local i64 @VALUE_LVAL(%struct.value*) #1

declare dso_local i32 @SET_FIELD_PHYSADDR(i32, i32) #1

declare dso_local i32 @TYPE_FIELD(%struct.type*, i32) #1

declare dso_local i32 @VALUE_ADDRESS(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
