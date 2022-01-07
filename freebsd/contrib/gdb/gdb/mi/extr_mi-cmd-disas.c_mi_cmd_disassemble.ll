; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-disas.c_mi_cmd_disassemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-disas.c_mi_cmd_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mi_opt = type { i8*, i32, i32 }
%struct.symtab = type { i32 }

@mi_cmd_disassemble.opts = internal global [6 x %struct.mi_opt] [%struct.mi_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 1 }, %struct.mi_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 1 }, %struct.mi_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 2, i32 1 }, %struct.mi_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32 3, i32 1 }, %struct.mi_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 1 }, %struct.mi_opt zeroinitializer], align 16
@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"mi_cmd_disassemble\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"mi_cmd_disassemble: Usage: ( [-f filename -l linenum [-n howmany]] | [-s startaddr -e endaddr]) [--] mixed_mode.\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"mi_cmd_disassemble: Usage: [-f filename -l linenum [-n howmany]] [-s startaddr -e endaddr] [--] mixed_mode.\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"mi_cmd_disassemble: Mixed_mode argument must be 0 or 1.\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"mi_cmd_disassemble: Invalid filename.\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"mi_cmd_disassemble: Invalid line number\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"mi_cmd_disassemble: No function contains specified address\00", align 1
@uiout = common dso_local global i32 0, align 4
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_disassemble(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.symtab*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i8* null, i8** %16, align 8
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %24

24:                                               ; preds = %3, %48
  %25 = load i32, i32* %6, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @mi_getopt(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %25, i8** %26, %struct.mi_opt* getelementptr inbounds ([6 x %struct.mi_opt], [6 x %struct.mi_opt]* @mi_cmd_disassemble.opts, i64 0, i64 0), i32* %21, i8** %22)
  store i32 %27, i32* %23, align 4
  %28 = load i32, i32* %23, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %49

31:                                               ; preds = %24
  %32 = load i32, i32* %23, align 4
  switch i32 %32, label %48 [
    i32 0, label %33
    i32 1, label %36
    i32 2, label %39
    i32 3, label %42
    i32 4, label %45
  ]

33:                                               ; preds = %31
  %34 = load i8*, i8** %22, align 8
  %35 = call i8* @xstrdup(i8* %34)
  store i8* %35, i8** %16, align 8
  store i32 1, i32* %11, align 4
  br label %48

36:                                               ; preds = %31
  %37 = load i8*, i8** %22, align 8
  %38 = call i32 @atoi(i8* %37)
  store i32 %38, i32* %17, align 4
  store i32 1, i32* %12, align 4
  br label %48

39:                                               ; preds = %31
  %40 = load i8*, i8** %22, align 8
  %41 = call i32 @atoi(i8* %40)
  store i32 %41, i32* %18, align 4
  store i32 1, i32* %13, align 4
  br label %48

42:                                               ; preds = %31
  %43 = load i8*, i8** %22, align 8
  %44 = call i32 @parse_and_eval_address(i8* %43)
  store i32 %44, i32* %19, align 4
  store i32 1, i32* %14, align 4
  br label %48

45:                                               ; preds = %31
  %46 = load i8*, i8** %22, align 8
  %47 = call i32 @parse_and_eval_address(i8* %46)
  store i32 %47, i32* %20, align 4
  store i32 1, i32* %15, align 4
  br label %48

48:                                               ; preds = %31, %45, %42, %39, %36, %33
  br label %24

49:                                               ; preds = %30
  %50 = load i32, i32* %21, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8** %53, i8*** %5, align 8
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %68, %65, %62, %59, %49
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %83, %80, %77, %74, %71
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98, %95, %92, %89, %86
  %102 = call i32 @error(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98, %83, %68
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 @error(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @atoi(i8* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 1
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %115, %108
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %147

126:                                              ; preds = %123
  %127 = load i8*, i8** %16, align 8
  %128 = call %struct.symtab* @lookup_symtab(i8* %127)
  store %struct.symtab* %128, %struct.symtab** %10, align 8
  %129 = load %struct.symtab*, %struct.symtab** %10, align 8
  %130 = icmp eq %struct.symtab* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %126
  %134 = load %struct.symtab*, %struct.symtab** %10, align 8
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @find_line_pc(%struct.symtab* %134, i32 %135, i32* %8)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %133
  %141 = load i32, i32* %8, align 4
  %142 = call i64 @find_pc_partial_function(i32 %141, i32* null, i32* %19, i32* %20)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %140
  br label %147

147:                                              ; preds = %146, %123, %120
  %148 = load i32, i32* @uiout, align 4
  %149 = load i8*, i8** %16, align 8
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %20, align 4
  %155 = call i32 @gdb_disassembly(i32 %148, i8* %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* @MI_CMD_DONE, align 4
  ret i32 %156
}

declare dso_local i32 @mi_getopt(i8*, i32, i8**, %struct.mi_opt*, i32*, i8**) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @parse_and_eval_address(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.symtab* @lookup_symtab(i8*) #1

declare dso_local i32 @find_line_pc(%struct.symtab*, i32, i32*) #1

declare dso_local i64 @find_pc_partial_function(i32, i32*, i32*, i32*) #1

declare dso_local i32 @gdb_disassembly(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
