; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_print_partial_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_print_partial_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symbol = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"  %s partial symbols:\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"    `%s'\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"  `%s'\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"undefined domain, \00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"struct domain, \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"label domain, \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"<invalid domain>, \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"constant int\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"extern global\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"pass by value\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"pass by reference\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"register parameter\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"register address parameter\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"stack parameter\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"constant bytes\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"shuffled arg\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"unresolved\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"optimized out\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"computed at runtime\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"<invalid location>\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_symbol**, i32, i8*, %struct.ui_file*)* @print_partial_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_partial_symbols(%struct.partial_symbol** %0, i32 %1, i8* %2, %struct.ui_file* %3) #0 {
  %5 = alloca %struct.partial_symbol**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ui_file*, align 8
  store %struct.partial_symbol** %0, %struct.partial_symbol*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.ui_file* %3, %struct.ui_file** %8, align 8
  %9 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %112, %4
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %124

16:                                               ; preds = %12
  %17 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %18 = load %struct.partial_symbol**, %struct.partial_symbol*** %5, align 8
  %19 = load %struct.partial_symbol*, %struct.partial_symbol** %18, align 8
  %20 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %19)
  %21 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.partial_symbol**, %struct.partial_symbol*** %5, align 8
  %23 = load %struct.partial_symbol*, %struct.partial_symbol** %22, align 8
  %24 = call i32* @SYMBOL_DEMANGLED_NAME(%struct.partial_symbol* %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %28 = load %struct.partial_symbol**, %struct.partial_symbol*** %5, align 8
  %29 = load %struct.partial_symbol*, %struct.partial_symbol** %28, align 8
  %30 = call i32* @SYMBOL_DEMANGLED_NAME(%struct.partial_symbol* %29)
  %31 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %30)
  br label %32

32:                                               ; preds = %26, %16
  %33 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %34 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %33)
  %35 = load %struct.partial_symbol**, %struct.partial_symbol*** %5, align 8
  %36 = load %struct.partial_symbol*, %struct.partial_symbol** %35, align 8
  %37 = call i32 @SYMBOL_DOMAIN(%struct.partial_symbol* %36)
  switch i32 %37, label %48 [
    i32 129, label %38
    i32 128, label %41
    i32 130, label %42
    i32 150, label %45
  ]

38:                                               ; preds = %32
  %39 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %40 = call i32 @fputs_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %39)
  br label %51

41:                                               ; preds = %32
  br label %51

42:                                               ; preds = %32
  %43 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %44 = call i32 @fputs_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %43)
  br label %51

45:                                               ; preds = %32
  %46 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %47 = call i32 @fputs_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %46)
  br label %51

48:                                               ; preds = %32
  %49 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %50 = call i32 @fputs_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), %struct.ui_file* %49)
  br label %51

51:                                               ; preds = %48, %45, %42, %41, %38
  %52 = load %struct.partial_symbol**, %struct.partial_symbol*** %5, align 8
  %53 = load %struct.partial_symbol*, %struct.partial_symbol** %52, align 8
  %54 = call i32 @SYMBOL_CLASS(%struct.partial_symbol* %53)
  switch i32 %54, label %109 [
    i32 132, label %55
    i32 145, label %58
    i32 134, label %61
    i32 143, label %64
    i32 137, label %67
    i32 149, label %70
    i32 138, label %73
    i32 136, label %76
    i32 135, label %79
    i32 141, label %82
    i32 133, label %85
    i32 142, label %88
    i32 148, label %91
    i32 144, label %94
    i32 140, label %97
    i32 131, label %100
    i32 139, label %103
    i32 147, label %106
    i32 146, label %106
  ]

55:                                               ; preds = %51
  %56 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %57 = call i32 @fputs_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %56)
  br label %112

58:                                               ; preds = %51
  %59 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %60 = call i32 @fputs_filtered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), %struct.ui_file* %59)
  br label %112

61:                                               ; preds = %51
  %62 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %63 = call i32 @fputs_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %struct.ui_file* %62)
  br label %112

64:                                               ; preds = %51
  %65 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %66 = call i32 @fputs_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), %struct.ui_file* %65)
  br label %112

67:                                               ; preds = %51
  %68 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %69 = call i32 @fputs_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), %struct.ui_file* %68)
  br label %112

70:                                               ; preds = %51
  %71 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %72 = call i32 @fputs_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), %struct.ui_file* %71)
  br label %112

73:                                               ; preds = %51
  %74 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %75 = call i32 @fputs_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), %struct.ui_file* %74)
  br label %112

76:                                               ; preds = %51
  %77 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %78 = call i32 @fputs_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), %struct.ui_file* %77)
  br label %112

79:                                               ; preds = %51
  %80 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %81 = call i32 @fputs_filtered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), %struct.ui_file* %80)
  br label %112

82:                                               ; preds = %51
  %83 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %84 = call i32 @fputs_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), %struct.ui_file* %83)
  br label %112

85:                                               ; preds = %51
  %86 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %87 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.ui_file* %86)
  br label %112

88:                                               ; preds = %51
  %89 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %90 = call i32 @fputs_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), %struct.ui_file* %89)
  br label %112

91:                                               ; preds = %51
  %92 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %93 = call i32 @fputs_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), %struct.ui_file* %92)
  br label %112

94:                                               ; preds = %51
  %95 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %96 = call i32 @fputs_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), %struct.ui_file* %95)
  br label %112

97:                                               ; preds = %51
  %98 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %99 = call i32 @fputs_filtered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), %struct.ui_file* %98)
  br label %112

100:                                              ; preds = %51
  %101 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %102 = call i32 @fputs_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), %struct.ui_file* %101)
  br label %112

103:                                              ; preds = %51
  %104 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %105 = call i32 @fputs_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), %struct.ui_file* %104)
  br label %112

106:                                              ; preds = %51, %51
  %107 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %108 = call i32 @fputs_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), %struct.ui_file* %107)
  br label %112

109:                                              ; preds = %51
  %110 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %111 = call i32 @fputs_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), %struct.ui_file* %110)
  br label %112

112:                                              ; preds = %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55
  %113 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %114 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %113)
  %115 = load %struct.partial_symbol**, %struct.partial_symbol*** %5, align 8
  %116 = load %struct.partial_symbol*, %struct.partial_symbol** %115, align 8
  %117 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.partial_symbol* %116)
  %118 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %119 = call i32 @print_address_numeric(i32 %117, i32 1, %struct.ui_file* %118)
  %120 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %121 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  %122 = load %struct.partial_symbol**, %struct.partial_symbol*** %5, align 8
  %123 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %122, i32 1
  store %struct.partial_symbol** %123, %struct.partial_symbol*** %5, align 8
  br label %12

124:                                              ; preds = %12
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol*) #1

declare dso_local i32* @SYMBOL_DEMANGLED_NAME(%struct.partial_symbol*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @SYMBOL_DOMAIN(%struct.partial_symbol*) #1

declare dso_local i32 @SYMBOL_CLASS(%struct.partial_symbol*) #1

declare dso_local i32 @print_address_numeric(i32, i32, %struct.ui_file*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.partial_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
