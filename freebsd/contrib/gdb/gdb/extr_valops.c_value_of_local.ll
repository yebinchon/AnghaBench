; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_of_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_of_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.symbol = type { i32 }
%struct.block = type { i32 }

@deprecated_selected_frame = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"no frame selected\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no `%s' in nameless context\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"no args, no `%s'\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"current stack frame does not contain a variable named `%s'\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"`%s' argument unreadable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_of_local(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.block*, align 8
  %9 = alloca %struct.value*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* @deprecated_selected_frame, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %18

17:                                               ; preds = %12
  store %struct.value* null, %struct.value** %3, align 8
  br label %76

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i64, i64* @deprecated_selected_frame, align 8
  %21 = call %struct.symbol* @get_frame_function(i64 %20)
  store %struct.symbol* %21, %struct.symbol** %6, align 8
  %22 = load %struct.symbol*, %struct.symbol** %6, align 8
  %23 = icmp ne %struct.symbol* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %31

30:                                               ; preds = %24
  store %struct.value* null, %struct.value** %3, align 8
  br label %76

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.symbol*, %struct.symbol** %6, align 8
  %34 = call %struct.block* @SYMBOL_BLOCK_VALUE(%struct.symbol* %33)
  store %struct.block* %34, %struct.block** %8, align 8
  %35 = load %struct.block*, %struct.block** %8, align 8
  %36 = call i32 @BLOCK_DICT(%struct.block* %35)
  %37 = call i64 @dict_empty(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %46

45:                                               ; preds = %39
  store %struct.value* null, %struct.value** %3, align 8
  br label %76

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.block*, %struct.block** %8, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @VAR_DOMAIN, align 4
  %51 = call %struct.symbol* @lookup_block_symbol(%struct.block* %48, i8* %49, i32* null, i32 %50)
  store %struct.symbol* %51, %struct.symbol** %7, align 8
  %52 = load %struct.symbol*, %struct.symbol** %7, align 8
  %53 = icmp eq %struct.symbol* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %61

60:                                               ; preds = %54
  store %struct.value* null, %struct.value** %3, align 8
  br label %76

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %47
  %63 = load %struct.symbol*, %struct.symbol** %7, align 8
  %64 = load i64, i64* @deprecated_selected_frame, align 8
  %65 = call %struct.value* @read_var_value(%struct.symbol* %63, i64 %64)
  store %struct.value* %65, %struct.value** %9, align 8
  %66 = load %struct.value*, %struct.value** %9, align 8
  %67 = icmp eq %struct.value* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %68, %62
  %75 = load %struct.value*, %struct.value** %9, align 8
  store %struct.value* %75, %struct.value** %3, align 8
  br label %76

76:                                               ; preds = %74, %60, %45, %30, %17
  %77 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %77
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.symbol* @get_frame_function(i64) #1

declare dso_local %struct.block* @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i64 @dict_empty(i32) #1

declare dso_local i32 @BLOCK_DICT(%struct.block*) #1

declare dso_local %struct.symbol* @lookup_block_symbol(%struct.block*, i8*, i32*, i32) #1

declare dso_local %struct.value* @read_var_value(%struct.symbol*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
