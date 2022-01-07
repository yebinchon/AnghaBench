; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_set_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"mi_cmd_var_set_format: Usage: NAME FORMAT.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"mi_cmd_var_set_format: Variable object not found\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"mi_cmd_var_set_format: Must specify the format as: \22natural\22, \22binary\22, \22decimal\22, \22hexadecimal\22, or \22octal\22\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"natural\00", align 1
@FORMAT_NATURAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@FORMAT_BINARY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"decimal\00", align 1
@FORMAT_DECIMAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"hexadecimal\00", align 1
@FORMAT_HEXADECIMAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"octal\00", align 1
@FORMAT_OCTAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [114 x i8] c"mi_cmd_var_set_format: Unknown display format: must be: \22natural\22, \22binary\22, \22decimal\22, \22hexadecimal\22, or \22octal\22\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@varobj_format_string = common dso_local global i32* null, align 8
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_var_set_format(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.varobj*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call %struct.varobj* @varobj_get_handle(i8* %18)
  store %struct.varobj* %19, %struct.varobj** %9, align 8
  %20 = load %struct.varobj*, %struct.varobj** %9, align 8
  %21 = icmp eq %struct.varobj* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @xstrdup(i8* %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 @error(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @FORMAT_NATURAL, align 4
  store i32 %41, i32* %7, align 4
  br label %76

42:                                               ; preds = %33
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @strncmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @FORMAT_BINARY, align 4
  store i32 %48, i32* %7, align 4
  br label %75

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @FORMAT_DECIMAL, align 4
  store i32 %55, i32* %7, align 4
  br label %74

56:                                               ; preds = %49
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @strncmp(i8* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @FORMAT_HEXADECIMAL, align 4
  store i32 %62, i32* %7, align 4
  br label %73

63:                                               ; preds = %56
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @strncmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @FORMAT_OCTAL, align 4
  store i32 %69, i32* %7, align 4
  br label %72

70:                                               ; preds = %63
  %71 = call i32 @error(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.8, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %68
  br label %73

73:                                               ; preds = %72, %61
  br label %74

74:                                               ; preds = %73, %54
  br label %75

75:                                               ; preds = %74, %47
  br label %76

76:                                               ; preds = %75, %40
  %77 = load %struct.varobj*, %struct.varobj** %9, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @varobj_set_display_format(%struct.varobj* %77, i32 %78)
  %80 = load i32, i32* @uiout, align 4
  %81 = load i32*, i32** @varobj_format_string, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ui_out_field_string(i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @MI_CMD_DONE, align 4
  ret i32 %87
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.varobj* @varobj_get_handle(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @varobj_set_display_format(%struct.varobj*, i32) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
