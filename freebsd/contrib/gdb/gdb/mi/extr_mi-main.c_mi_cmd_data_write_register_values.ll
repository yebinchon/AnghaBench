; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_write_register_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_write_register_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@mi_error_message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"mi_cmd_data_write_register_values: Usage: -data-write-register-values <format> [<regnum1> <value1>...<regnumN> <valueN>]\00", align 1
@MI_CMD_ERROR = common dso_local global i32 0, align 4
@target_has_registers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"mi_cmd_data_write_register_values: No registers.\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"mi_cmd_data_write_register_values: No regs and values specified.\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"mi_cmd_data_write_register_values: Regs and vals are not in pairs.\00", align 1
@DEPRECATED_REGISTER_SIZE = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"bad register number\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_data_write_register_values(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @NUM_REGS, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %111

21:                                               ; preds = %3
  %22 = load i8**, i8*** %6, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %12, align 1
  %29 = load i32, i32* @target_has_registers, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %111

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %40, i32* %4, align 4
  br label %111

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 1
  %44 = srem i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %48, i32* %4, align 4
  br label %111

49:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %106, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %109

54:                                               ; preds = %50
  %55 = load i8**, i8*** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @atoi(i8* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %102

63:                                               ; preds = %54
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = call i8* @REGISTER_NAME(i32 %68)
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %102

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = call i8* @REGISTER_NAME(i32 %72)
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %71
  %78 = load i8**, i8*** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @parse_and_eval_address(i8* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* @DEPRECATED_REGISTER_SIZE, align 4
  %86 = call i8* @xmalloc(i32 %85)
  store i8* %86, i8** %13, align 8
  %87 = load i32, i32* @xfree, align 4
  %88 = load i8*, i8** %13, align 8
  %89 = call %struct.cleanup* @make_cleanup(i32 %87, i8* %88)
  store %struct.cleanup* %89, %struct.cleanup** %14, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load i32, i32* @DEPRECATED_REGISTER_SIZE, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @store_signed_integer(i8* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @DEPRECATED_REGISTER_BYTE(i32 %94)
  %96 = load i8*, i8** %13, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %97)
  %99 = call i32 @deprecated_write_register_bytes(i32 %95, i8* %96, i32 %98)
  %100 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %101 = call i32 @do_cleanups(%struct.cleanup* %100)
  br label %105

102:                                              ; preds = %71, %67, %63, %54
  %103 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %104, i32* %4, align 4
  br label %111

105:                                              ; preds = %77
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %9, align 4
  br label %50

109:                                              ; preds = %50
  %110 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %102, %46, %38, %31, %18
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @xasprintf(i32*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @REGISTER_NAME(i32) #1

declare dso_local i32 @parse_and_eval_address(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @store_signed_integer(i8*, i32, i32) #1

declare dso_local i32 @deprecated_write_register_bytes(i32, i8*, i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_BYTE(i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
