; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_print_source_lines_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_print_source_lines_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i8*, i32, i32* }

@current_source_symtab = common dso_local global %struct.symtab* null, align 8
@current_source_line = common dso_local global i32 0, align 4
@first_line_listed = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@ui_source_list = common dso_local global i32 0, align 4
@last_source_visited = common dso_local global %struct.symtab* null, align 8
@last_source_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d\09%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\09in \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Line number %d out of range; %s has %d lines.\00", align 1
@FDOPEN_MODE = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@last_line_listed = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"^%c\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"^?\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symtab*, i32, i32, i32)* @print_source_lines_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_source_lines_base(%struct.symtab* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.symtab*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [20 x i8], align 16
  store %struct.symtab* %0, %struct.symtab** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.symtab*, %struct.symtab** %5, align 8
  store %struct.symtab* %18, %struct.symtab** @current_source_symtab, align 8
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* @current_source_line, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* @first_line_listed, align 4
  %21 = load i32, i32* @uiout, align 4
  %22 = load i32, i32* @ui_source_list, align 4
  %23 = call i64 @ui_out_test_flags(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = load %struct.symtab*, %struct.symtab** %5, align 8
  %27 = load %struct.symtab*, %struct.symtab** @last_source_visited, align 8
  %28 = icmp ne %struct.symtab* %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @last_source_error, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.symtab*, %struct.symtab** %5, align 8
  store %struct.symtab* %33, %struct.symtab** @last_source_visited, align 8
  %34 = load %struct.symtab*, %struct.symtab** %5, align 8
  %35 = call i32 @open_source_file(%struct.symtab* %34)
  store i32 %35, i32* %10, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @last_source_error, align 4
  store i32 %37, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %32
  br label %40

39:                                               ; preds = %4
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* @last_source_error, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = load %struct.symtab*, %struct.symtab** %5, align 8
  %49 = getelementptr inbounds %struct.symtab, %struct.symtab* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = add nsw i64 %51, 100
  %53 = call i8* @alloca(i64 %52)
  store i8* %53, i8** %13, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.symtab*, %struct.symtab** %5, align 8
  %57 = getelementptr inbounds %struct.symtab, %struct.symtab* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %58)
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @print_sys_errmsg(i8* %60, i32 %61)
  br label %67

63:                                               ; preds = %43
  %64 = load i32, i32* @uiout, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ui_out_field_int(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %47
  %68 = load i32, i32* @uiout, align 4
  %69 = call i32 @ui_out_text(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @uiout, align 4
  %71 = load %struct.symtab*, %struct.symtab** %5, align 8
  %72 = getelementptr inbounds %struct.symtab, %struct.symtab* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @ui_out_field_string(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @uiout, align 4
  %76 = call i32 @ui_out_text(i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %199

77:                                               ; preds = %40
  store i32 0, i32* @last_source_error, align 4
  %78 = load %struct.symtab*, %struct.symtab** %5, align 8
  %79 = getelementptr inbounds %struct.symtab, %struct.symtab* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.symtab*, %struct.symtab** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @find_source_lines(%struct.symtab* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.symtab*, %struct.symtab** %5, align 8
  %92 = getelementptr inbounds %struct.symtab, %struct.symtab* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89, %86
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.symtab*, %struct.symtab** %5, align 8
  %100 = getelementptr inbounds %struct.symtab, %struct.symtab* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.symtab*, %struct.symtab** %5, align 8
  %103 = getelementptr inbounds %struct.symtab, %struct.symtab* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %98, i8* %101, i32 %104)
  br label %106

106:                                              ; preds = %95, %89
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.symtab*, %struct.symtab** %5, align 8
  %109 = getelementptr inbounds %struct.symtab, %struct.symtab* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @lseek(i32 %107, i32 %115, i32 0)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %106
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @close(i32 %119)
  %121 = load %struct.symtab*, %struct.symtab** %5, align 8
  %122 = getelementptr inbounds %struct.symtab, %struct.symtab* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @perror_with_name(i8* %123)
  br label %125

125:                                              ; preds = %118, %106
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @FDOPEN_MODE, align 4
  %128 = call i32* @fdopen(i32 %126, i32 %127)
  store i32* %128, i32** %11, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @clearerr(i32* %129)
  br label %131

131:                                              ; preds = %195, %125
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %12, align 4
  %134 = icmp sgt i32 %132, 0
  br i1 %134, label %135, label %196

135:                                              ; preds = %131
  %136 = load i32*, i32** %11, align 8
  %137 = call i32 @fgetc(i32* %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @EOF, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %196

142:                                              ; preds = %135
  %143 = load i32, i32* @current_source_line, align 4
  store i32 %143, i32* @last_line_listed, align 4
  %144 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %145 = load i32, i32* @current_source_line, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @current_source_line, align 4
  %147 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %148 = load i32, i32* @uiout, align 4
  %149 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %150 = call i32 @ui_out_text(i32 %148, i8* %149)
  br label %151

151:                                              ; preds = %193, %142
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %152, 32
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 9
  br i1 %156, label %157, label %171

157:                                              ; preds = %154
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 10
  br i1 %159, label %160, label %171

160:                                              ; preds = %157
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 13
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 64
  %167 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @uiout, align 4
  %169 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %170 = call i32 @ui_out_text(i32 %168, i8* %169)
  br label %185

171:                                              ; preds = %160, %157, %154, %151
  %172 = load i32, i32* %9, align 4
  %173 = icmp eq i32 %172, 127
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* @uiout, align 4
  %176 = call i32 @ui_out_text(i32 %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %184

177:                                              ; preds = %171
  %178 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %179 = load i32, i32* %9, align 4
  %180 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @uiout, align 4
  %182 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %183 = call i32 @ui_out_text(i32 %181, i8* %182)
  br label %184

184:                                              ; preds = %177, %174
  br label %185

185:                                              ; preds = %184, %163
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 10
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load i32*, i32** %11, align 8
  %191 = call i32 @fgetc(i32* %190)
  store i32 %191, i32* %9, align 4
  %192 = icmp sge i32 %191, 0
  br label %193

193:                                              ; preds = %189, %186
  %194 = phi i1 [ false, %186 ], [ %192, %189 ]
  br i1 %194, label %151, label %195

195:                                              ; preds = %193
  br label %131

196:                                              ; preds = %141, %131
  %197 = load i32*, i32** %11, align 8
  %198 = call i32 @fclose(i32* %197)
  br label %199

199:                                              ; preds = %196, %67
  ret void
}

declare dso_local i64 @ui_out_test_flags(i32, i32) #1

declare dso_local i32 @open_source_file(%struct.symtab*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @print_sys_errmsg(i8*, i32) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i32 @ui_out_text(i32, i8*) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

declare dso_local i32 @find_source_lines(%struct.symtab*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @error(i8*, i32, i8*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32* @fdopen(i32, i32) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
