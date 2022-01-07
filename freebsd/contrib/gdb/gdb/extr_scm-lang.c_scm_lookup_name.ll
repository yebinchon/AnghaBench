; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_scm-lang.c_scm_lookup_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_scm-lang.c_scm_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.symbol = type { i32 }
%struct.symtab = type { i32 }

@builtin_type_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"env\00", align 1
@expression_context_block = common dso_local global i32* null, align 8
@VAR_DOMAIN = common dso_local global i32 0, align 4
@builtin_type_scm = common dso_local global i32 0, align 4
@SCM_EOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"scm_lookup_cstr\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"No symbol \22%s\22 in current context.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (i8*)* @scm_lookup_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @scm_lookup_name(i8* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [3 x %struct.value*], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.value* @value_allocate_space_in_inferior(i32 %11)
  %13 = getelementptr inbounds [3 x %struct.value*], [3 x %struct.value*]* %4, i64 0, i64 0
  store %struct.value* %12, %struct.value** %13, align 16
  %14 = load i32, i32* @builtin_type_int, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.value* @value_from_longest(i32 %14, i32 %15)
  %17 = getelementptr inbounds [3 x %struct.value*], [3 x %struct.value*]* %4, i64 0, i64 1
  store %struct.value* %16, %struct.value** %17, align 8
  %18 = getelementptr inbounds [3 x %struct.value*], [3 x %struct.value*]* %4, i64 0, i64 0
  %19 = load %struct.value*, %struct.value** %18, align 16
  %20 = call i32 @value_as_long(%struct.value* %19)
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @write_memory(i32 %20, i8* %21, i32 %22)
  %24 = call i64 (...) @in_eval_c()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load i32*, i32** @expression_context_block, align 8
  %28 = load i32, i32* @VAR_DOMAIN, align 4
  %29 = call %struct.symbol* @lookup_symbol(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %27, i32 %28, i32* null, %struct.symtab** null)
  store %struct.symbol* %29, %struct.symbol** %8, align 8
  %30 = icmp ne %struct.symbol* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.symbol*, %struct.symbol** %8, align 8
  %33 = load i32*, i32** @expression_context_block, align 8
  %34 = call %struct.value* @value_of_variable(%struct.symbol* %32, i32* %33)
  %35 = getelementptr inbounds [3 x %struct.value*], [3 x %struct.value*]* %4, i64 0, i64 2
  store %struct.value* %34, %struct.value** %35, align 16
  br label %41

36:                                               ; preds = %26, %1
  %37 = load i32, i32* @builtin_type_scm, align 4
  %38 = load i32, i32* @SCM_EOL, align 4
  %39 = call %struct.value* @value_from_longest(i32 %37, i32 %38)
  %40 = getelementptr inbounds [3 x %struct.value*], [3 x %struct.value*]* %4, i64 0, i64 2
  store %struct.value* %39, %struct.value** %40, align 16
  br label %41

41:                                               ; preds = %36, %31
  %42 = call %struct.value* @find_function_in_inferior(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.value* %42, %struct.value** %6, align 8
  %43 = load %struct.value*, %struct.value** %6, align 8
  %44 = getelementptr inbounds [3 x %struct.value*], [3 x %struct.value*]* %4, i64 0, i64 0
  %45 = call %struct.value* @call_function_by_hand(%struct.value* %43, i32 3, %struct.value** %44)
  store %struct.value* %45, %struct.value** %7, align 8
  %46 = load %struct.value*, %struct.value** %7, align 8
  %47 = call i32 @value_logical_not(%struct.value* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load %struct.value*, %struct.value** %7, align 8
  %51 = call %struct.value* @value_ind(%struct.value* %50)
  store %struct.value* %51, %struct.value** %2, align 8
  br label %65

52:                                               ; preds = %41
  %53 = load i8*, i8** %3, align 8
  %54 = load i32*, i32** @expression_context_block, align 8
  %55 = load i32, i32* @VAR_DOMAIN, align 4
  %56 = call %struct.symbol* @lookup_symbol(i8* %53, i32* %54, i32 %55, i32* null, %struct.symtab** null)
  store %struct.symbol* %56, %struct.symbol** %8, align 8
  %57 = load %struct.symbol*, %struct.symbol** %8, align 8
  %58 = icmp ne %struct.symbol* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.symbol*, %struct.symbol** %8, align 8
  %61 = call %struct.value* @value_of_variable(%struct.symbol* %60, i32* null)
  store %struct.value* %61, %struct.value** %2, align 8
  br label %65

62:                                               ; preds = %52
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %59, %49
  %66 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %66
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.value* @value_allocate_space_in_inferior(i32) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i64 @in_eval_c(...) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32*, i32, i32*, %struct.symtab**) #1

declare dso_local %struct.value* @value_of_variable(%struct.symbol*, i32*) #1

declare dso_local %struct.value* @find_function_in_inferior(i8*) #1

declare dso_local %struct.value* @call_function_by_hand(%struct.value*, i32, %struct.value**) #1

declare dso_local i32 @value_logical_not(%struct.value*) #1

declare dso_local %struct.value* @value_ind(%struct.value*) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
