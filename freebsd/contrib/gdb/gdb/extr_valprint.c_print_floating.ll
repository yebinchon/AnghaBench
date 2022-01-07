; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_print_floating.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_print_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.floatformat = type { i32 }

@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"nan(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"<invalid float value>\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.9g\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_floating(i8* %0, %struct.type* %1, %struct.ui_file* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.floatformat*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  store %struct.floatformat* null, %struct.floatformat** %9, align 8
  %11 = load %struct.type*, %struct.type** %5, align 8
  %12 = call i32 @TYPE_LENGTH(%struct.type* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.type*, %struct.type** %5, align 8
  %14 = call i64 @TYPE_CODE(%struct.type* %13)
  %15 = load i64, i64* @TYPE_CODE_FLT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.type*, %struct.type** %5, align 8
  %19 = call %struct.floatformat* @floatformat_from_type(%struct.type* %18)
  store %struct.floatformat* %19, %struct.floatformat** %9, align 8
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.floatformat*, %struct.floatformat** %9, align 8
  %22 = icmp ne %struct.floatformat* %21, null
  br i1 %22, label %23, label %52

23:                                               ; preds = %20
  %24 = load %struct.floatformat*, %struct.floatformat** %9, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @floatformat_is_nan(%struct.floatformat* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load %struct.floatformat*, %struct.floatformat** %9, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @floatformat_is_negative(%struct.floatformat* %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %35 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %38 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 (...) @local_hex_format_prefix()
  %40 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %41 = call i32 @fputs_filtered(i32 %39, %struct.ui_file* %40)
  %42 = load %struct.floatformat*, %struct.floatformat** %9, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @floatformat_mantissa(%struct.floatformat* %42, i8* %43)
  %45 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %46 = call i32 @fputs_filtered(i32 %44, %struct.ui_file* %45)
  %47 = call i32 (...) @local_hex_format_suffix()
  %48 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %49 = call i32 @fputs_filtered(i32 %47, %struct.ui_file* %48)
  %50 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %51 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %82

52:                                               ; preds = %23, %20
  %53 = load %struct.type*, %struct.type** %5, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call double @unpack_double(%struct.type* %53, i8* %54, i32* %8)
  store double %55, double* %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %60 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %82

61:                                               ; preds = %52
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = icmp ult i64 %63, 8
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %67 = load double, double* %7, align 8
  %68 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %67)
  br label %82

69:                                               ; preds = %61
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = icmp eq i64 %71, 8
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %75 = load double, double* %7, align 8
  %76 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double %75)
  br label %81

77:                                               ; preds = %69
  %78 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %79 = load double, double* %7, align 8
  %80 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double %79)
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %36, %58, %81, %65
  ret void
}

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.floatformat* @floatformat_from_type(%struct.type*) #1

declare dso_local i64 @floatformat_is_nan(%struct.floatformat*, i8*) #1

declare dso_local i64 @floatformat_is_negative(%struct.floatformat*, i8*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @fputs_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @local_hex_format_prefix(...) #1

declare dso_local i32 @floatformat_mantissa(%struct.floatformat*, i8*) #1

declare dso_local i32 @local_hex_format_suffix(...) #1

declare dso_local double @unpack_double(%struct.type*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
