; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_line_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_line_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }
%struct.symtab_and_line = type { i64, i64, %struct.TYPE_3__* }

@current_source_symtab = common dso_local global %struct.TYPE_3__* null, align 8
@last_line_listed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"No line number information available\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" for address \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Line %d of \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c" is at address \00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c" but contains no code.\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c" starts at address \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" and ends at \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@annotation_level = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [42 x i8] c"Line number %d is out of range for \22%s\22.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @line_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.symtabs_and_lines, align 8
  %6 = alloca %struct.symtab_and_line, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.symtabs_and_lines, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 @init_sal(%struct.symtab_and_line* %6)
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_source_symtab, align 8
  %16 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 2
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %16, align 8
  %17 = load i64, i64* @last_line_listed, align 8
  %18 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %5, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = call i64 @xmalloc(i32 24)
  %21 = inttoptr i64 %20 to %struct.symtab_and_line*
  %22 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %5, i32 0, i32 1
  store %struct.symtab_and_line* %21, %struct.symtab_and_line** %22, align 8
  %23 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %5, i32 0, i32 1
  %24 = load %struct.symtab_and_line*, %struct.symtab_and_line** %23, align 8
  %25 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %24, i64 0
  %26 = bitcast %struct.symtab_and_line* %25 to i8*
  %27 = bitcast %struct.symtab_and_line* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 24, i1 false)
  br label %39

28:                                               ; preds = %2
  %29 = load i8*, i8** %3, align 8
  %30 = call { i32, %struct.symtab_and_line* } @decode_line_spec_1(i8* %29, i32 0)
  %31 = bitcast %struct.symtabs_and_lines* %10 to { i32, %struct.symtab_and_line* }*
  %32 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %31, i32 0, i32 0
  %33 = extractvalue { i32, %struct.symtab_and_line* } %30, 0
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %31, i32 0, i32 1
  %35 = extractvalue { i32, %struct.symtab_and_line* } %30, 1
  store %struct.symtab_and_line* %35, %struct.symtab_and_line** %34, align 8
  %36 = bitcast %struct.symtabs_and_lines* %5 to i8*
  %37 = bitcast %struct.symtabs_and_lines* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = call i32 (...) @dont_repeat()
  br label %39

39:                                               ; preds = %28, %14
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %147, %39
  %41 = load i32, i32* %9, align 4
  %42 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %150

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %5, i32 0, i32 1
  %47 = load %struct.symtab_and_line*, %struct.symtab_and_line** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %47, i64 %49
  %51 = bitcast %struct.symtab_and_line* %6 to i8*
  %52 = bitcast %struct.symtab_and_line* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 24, i1 false)
  %53 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = icmp eq %struct.TYPE_3__* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %45
  %57 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @wrap_here(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @gdb_stdout, align 4
  %67 = call i32 @print_address(i64 %65, i32 %66)
  br label %70

68:                                               ; preds = %56
  %69 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %61
  %71 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %146

72:                                               ; preds = %45
  %73 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %137

76:                                               ; preds = %72
  %77 = call i64 @find_line_pc_range(%struct.symtab_and_line* byval(%struct.symtab_and_line) align 8 %6, i64* %7, i64* %8)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %137

79:                                               ; preds = %76
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %85, i32 %89)
  %91 = call i32 @wrap_here(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %92 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* @gdb_stdout, align 4
  %95 = call i32 @print_address(i64 %93, i32 %94)
  %96 = call i32 @wrap_here(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %117

98:                                               ; preds = %79
  %99 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 2
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %100, i32 %104)
  %106 = call i32 @wrap_here(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %107 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %108 = load i64, i64* %7, align 8
  %109 = load i32, i32* @gdb_stdout, align 4
  %110 = call i32 @print_address(i64 %108, i32 %109)
  %111 = call i32 @wrap_here(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %112 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %113 = load i64, i64* %8, align 8
  %114 = load i32, i32* @gdb_stdout, align 4
  %115 = call i32 @print_address(i64 %113, i32 %114)
  %116 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %117

117:                                              ; preds = %98, %83
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @set_next_address(i64 %118)
  %120 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* @last_line_listed, align 8
  %123 = load i64, i64* @annotation_level, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %5, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 2
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @identify_source_line(%struct.TYPE_3__* %131, i64 %133, i32 0, i64 %134)
  br label %136

136:                                              ; preds = %129, %125, %117
  br label %145

137:                                              ; preds = %76, %72
  %138 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i64 %139, i32 %143)
  br label %145

145:                                              ; preds = %137, %136
  br label %146

146:                                              ; preds = %145, %70
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %40

150:                                              ; preds = %40
  %151 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %5, i32 0, i32 1
  %152 = load %struct.symtab_and_line*, %struct.symtab_and_line** %151, align 8
  %153 = call i32 @xfree(%struct.symtab_and_line* %152)
  ret void
}

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local i64 @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i32, %struct.symtab_and_line* } @decode_line_spec_1(i8*, i32) #1

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @print_address(i64, i32) #1

declare dso_local i64 @find_line_pc_range(%struct.symtab_and_line* byval(%struct.symtab_and_line) align 8, i64*, i64*) #1

declare dso_local i32 @set_next_address(i64) #1

declare dso_local i32 @identify_source_line(%struct.TYPE_3__*, i64, i32, i64) #1

declare dso_local i32 @xfree(%struct.symtab_and_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
