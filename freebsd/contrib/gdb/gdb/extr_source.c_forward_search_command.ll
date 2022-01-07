; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_forward_search_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_forward_search_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

@last_line_listed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@current_source_symtab = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Expression not found\00", align 1
@FDOPEN_MODE = common dso_local global i32 0, align 4
@forward_search_command.buf = internal global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@builtin_type_int = common dso_local global i32 0, align 4
@lines_to_list = common dso_local global i32 0, align 4
@current_source_line = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Expression not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @forward_search_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forward_search_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @last_line_listed, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @re_comp(i8* %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @select_source_symtab(i32 0)
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %30 = call i32 @open_source_file(%struct.TYPE_5__* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @perror_with_name(i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @find_source_lines(%struct.TYPE_5__* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @close(i32 %57)
  %59 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @lseek(i32 %61, i32 %69, i32 0)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %60
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @close(i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @perror_with_name(i32 %77)
  br label %79

79:                                               ; preds = %72, %60
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @FDOPEN_MODE, align 4
  %82 = call i32* @fdopen(i32 %80, i32 %81)
  store i32* %82, i32** %7, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @clearerr(i32* %83)
  br label %85

85:                                               ; preds = %79, %155
  store i32 256, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i8* @xmalloc(i32 %86)
  store i8* %87, i8** @forward_search_command.buf, align 8
  %88 = load i8*, i8** @forward_search_command.buf, align 8
  store i8* %88, i8** %10, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @getc(i32* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @EOF, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %158

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %130, %95
  %97 = load i32, i32* %5, align 4
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %10, align 8
  store i8 %98, i8* %99, align 1
  %101 = load i8*, i8** %10, align 8
  %102 = load i8*, i8** @forward_search_command.buf, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %96
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sdiv i32 %111, 2
  %113 = add nsw i32 %110, %112
  store i32 %113, i32* %12, align 4
  %114 = load i8*, i8** @forward_search_command.buf, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i8* @xrealloc(i8* %114, i32 %115)
  store i8* %116, i8** @forward_search_command.buf, align 8
  %117 = load i8*, i8** @forward_search_command.buf, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8* %120, i8** %10, align 8
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %109, %96
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 10
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @getc(i32* %127)
  store i32 %128, i32* %5, align 4
  %129 = icmp sge i32 %128, 0
  br label %130

130:                                              ; preds = %126, %123
  %131 = phi i1 [ false, %123 ], [ %129, %126 ]
  br i1 %131, label %96, label %132

132:                                              ; preds = %130
  %133 = load i8*, i8** %10, align 8
  store i8 0, i8* %133, align 1
  %134 = load i8*, i8** @forward_search_command.buf, align 8
  %135 = call i64 @re_exec(i8* %134)
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %132
  %138 = load i32*, i32** %7, align 8
  %139 = call i32 @fclose(i32* %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_source_symtab, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  %144 = call i32 @print_source_lines(%struct.TYPE_5__* %140, i32 %141, i32 %143, i32 0)
  %145 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* @builtin_type_int, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @value_from_longest(i32 %146, i32 %147)
  %149 = call i32 @set_internalvar(i32 %145, i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @lines_to_list, align 4
  %152 = sdiv i32 %151, 2
  %153 = sub nsw i32 %150, %152
  %154 = call i32 @max(i32 %153, i32 1)
  store i32 %154, i32* @current_source_line, align 4
  br label %162

155:                                              ; preds = %132
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %85

158:                                              ; preds = %94
  %159 = call i32 @printf_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @fclose(i32* %160)
  br label %162

162:                                              ; preds = %158, %137
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

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i64 @re_exec(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @print_source_lines(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @set_internalvar(i32, i32) #1

declare dso_local i32 @lookup_internalvar(i8*) #1

declare dso_local i32 @value_from_longest(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @printf_filtered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
