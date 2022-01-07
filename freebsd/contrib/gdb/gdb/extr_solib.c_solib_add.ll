; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c_solib_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c_solib_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { i8*, i32, %struct.so_list* }
%struct.target_ops = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid regexp: %s\00", align 1
@so_list_head = common dso_local global %struct.so_list* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Symbols already loaded for %s\0A\00", align 1
@symbol_add_stub = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Error while reading shared library symbols:\0A\00", align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Loaded symbols for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"No loaded shared libraries match the pattern `%s'.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solib_add(i8* %0, i32 %1, %struct.target_ops* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.target_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.so_list*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.target_ops* %2, %struct.target_ops** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @re_comp(i8* %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23, %4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.target_ops*, %struct.target_ops** %7, align 8
  %27 = call i32 @update_solib_list(i32 %25, %struct.target_ops* %26)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %28, %struct.so_list** %9, align 8
  br label %29

29:                                               ; preds = %79, %24
  %30 = load %struct.so_list*, %struct.so_list** %9, align 8
  %31 = icmp ne %struct.so_list* %30, null
  br i1 %31, label %32, label %83

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.so_list*, %struct.so_list** %9, align 8
  %37 = getelementptr inbounds %struct.so_list, %struct.so_list* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @re_exec(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %35, %32
  store i32 1, i32* %11, align 4
  %42 = load %struct.so_list*, %struct.so_list** %9, align 8
  %43 = getelementptr inbounds %struct.so_list, %struct.so_list* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.so_list*, %struct.so_list** %9, align 8
  %51 = getelementptr inbounds %struct.so_list, %struct.so_list* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %49, %46
  br label %77

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i32, i32* @symbol_add_stub, align 4
  %60 = load %struct.so_list*, %struct.so_list** %9, align 8
  %61 = load i32, i32* @RETURN_MASK_ALL, align 4
  %62 = call i64 @catch_errors(i32 %59, %struct.so_list* %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.so_list*, %struct.so_list** %9, align 8
  %69 = getelementptr inbounds %struct.so_list, %struct.so_list* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %67, %64
  %73 = load %struct.so_list*, %struct.so_list** %9, align 8
  %74 = getelementptr inbounds %struct.so_list, %struct.so_list* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  store i32 1, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %58
  br label %76

76:                                               ; preds = %75, %55
  br label %77

77:                                               ; preds = %76, %54
  br label %78

78:                                               ; preds = %77, %35
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.so_list*, %struct.so_list** %9, align 8
  %81 = getelementptr inbounds %struct.so_list, %struct.so_list* %80, i32 0, i32 2
  %82 = load %struct.so_list*, %struct.so_list** %81, align 8
  store %struct.so_list* %82, %struct.so_list** %9, align 8
  br label %29

83:                                               ; preds = %29
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i8*, i8** %5, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %92, %89, %86, %83
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = call i32 (...) @reinit_frame_cache()
  %100 = call i32 (...) @TARGET_SO_SPECIAL_SYMBOL_HANDLING()
  br label %101

101:                                              ; preds = %98, %95
  ret void
}

declare dso_local i8* @re_comp(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @update_solib_list(i32, %struct.target_ops*) #1

declare dso_local i64 @re_exec(i8*) #1

declare dso_local i32 @printf_unfiltered(i8*, i8*) #1

declare dso_local i64 @catch_errors(i32, %struct.so_list*, i8*, i32) #1

declare dso_local i32 @reinit_frame_cache(...) #1

declare dso_local i32 @TARGET_SO_SPECIAL_SYMBOL_HANDLING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
