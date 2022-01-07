; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_reverse_search_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_reverse_search_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

@last_line_listed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@current_source_symtab = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Expression not found\00", align 1
@FDOPEN_MODE = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@builtin_type_int = common dso_local global i32 0, align 4
@lines_to_list = common dso_local global i32 0, align 4
@current_source_line = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Expression not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @reverse_search_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reverse_search_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @last_line_listed, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @re_comp(i8* %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %24 = icmp eq %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @select_source_symtab(i32 0)
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %29 = call i32 @open_source_file(%struct.TYPE_5__* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @perror_with_name(i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @find_source_lines(%struct.TYPE_5__* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @close(i32 %56)
  %58 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @lseek(i32 %60, i32 %68, i32 0)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %59
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @perror_with_name(i32 %76)
  br label %78

78:                                               ; preds = %71, %59
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @FDOPEN_MODE, align 4
  %81 = call i32* @fdopen(i32 %79, i32 %80)
  store i32* %81, i32** %7, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @clearerr(i32* %82)
  br label %84

84:                                               ; preds = %154, %78
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %155

87:                                               ; preds = %84
  %88 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  store i8* %88, i8** %11, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @getc(i32* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @EOF, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %155

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %108, %95
  %97 = load i32, i32* %5, align 4
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %11, align 8
  store i8 %98, i8* %99, align 1
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 10
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @getc(i32* %105)
  store i32 %106, i32* %5, align 4
  %107 = icmp sge i32 %106, 0
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i1 [ false, %101 ], [ %107, %104 ]
  br i1 %109, label %96, label %110

110:                                              ; preds = %108
  %111 = load i8*, i8** %11, align 8
  store i8 0, i8* %111, align 1
  %112 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %113 = call i64 @re_exec(i8* %112)
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %110
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @fclose(i32* %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  %122 = call i32 @print_source_lines(%struct.TYPE_5__* %118, i32 %119, i32 %121, i32 0)
  %123 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @builtin_type_int, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @value_from_longest(i32 %124, i32 %125)
  %127 = call i32 @set_internalvar(i32 %123, i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @lines_to_list, align 4
  %130 = sdiv i32 %129, 2
  %131 = sub nsw i32 %128, %130
  %132 = call i32 @max(i32 %131, i32 1)
  store i32 %132, i32* @current_source_line, align 4
  br label %159

133:                                              ; preds = %110
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %8, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @fseek(i32* %136, i32 %144, i32 0)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %133
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @fclose(i32* %148)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @perror_with_name(i32 %152)
  br label %154

154:                                              ; preds = %147, %133
  br label %84

155:                                              ; preds = %94, %84
  %156 = call i32 @printf_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @fclose(i32* %157)
  br label %159

159:                                              ; preds = %155, %115
  ret void
}

declare dso_local i64 @re_comp(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @select_source_symtab(i32) #1

declare dso_local i32 @open_source_file(%struct.TYPE_5__*) #1

declare dso_local i32 @perror_with_name(i32) #1

declare dso_local i32 @find_source_lines(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32* @fdopen(i32, i32) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @re_exec(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @print_source_lines(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @set_internalvar(i32, i32) #1

declare dso_local i32 @lookup_internalvar(i8*) #1

declare dso_local i32 @value_from_longest(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @printf_filtered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
