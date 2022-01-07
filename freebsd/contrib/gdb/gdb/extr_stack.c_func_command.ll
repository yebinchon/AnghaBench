; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_func_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_func_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.function_bounds = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"'%s' not within current stack frame.\0A\00", align 1
@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @func_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @func_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symtabs_and_lines, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.function_bounds*, align 8
  %11 = alloca %struct.symtabs_and_lines, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  store %struct.function_bounds* null, %struct.function_bounds** %10, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %162

15:                                               ; preds = %2
  %16 = call %struct.frame_info* @parse_frame_specification(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.frame_info* %16, %struct.frame_info** %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call { i32, %struct.TYPE_2__* } @decode_line_spec(i8* %17, i32 1)
  %19 = bitcast %struct.symtabs_and_lines* %11 to { i32, %struct.TYPE_2__* }*
  %20 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %19, i32 0, i32 0
  %21 = extractvalue { i32, %struct.TYPE_2__* } %18, 0
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %19, i32 0, i32 1
  %23 = extractvalue { i32, %struct.TYPE_2__* } %18, 1
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %22, align 8
  %24 = bitcast %struct.symtabs_and_lines* %7 to i8*
  %25 = bitcast %struct.symtabs_and_lines* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 16, %28
  %30 = trunc i64 %29 to i32
  %31 = call i64 @xmalloc(i32 %30)
  %32 = inttoptr i64 %31 to %struct.function_bounds*
  store %struct.function_bounds* %32, %struct.function_bounds** %10, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %85, %15
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i1 [ false, %33 ], [ %41, %38 ]
  br i1 %43, label %44, label %88

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.function_bounds*, %struct.function_bounds** %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %61, i64 %63
  %65 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %64, i32 0, i32 0
  %66 = load %struct.function_bounds*, %struct.function_bounds** %10, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %66, i64 %68
  %70 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %69, i32 0, i32 1
  %71 = call i64 @find_pc_partial_function(i64 %60, i8** null, i64* %65, i64* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %53, %44
  %74 = load %struct.function_bounds*, %struct.function_bounds** %10, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %74, i64 %76
  %78 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.function_bounds*, %struct.function_bounds** %10, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %79, i64 %81
  %83 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %73, %53
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %33

88:                                               ; preds = %42
  br label %89

89:                                               ; preds = %140, %88
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %124, %89
  %91 = load i32, i32* %8, align 4
  %92 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br label %99

99:                                               ; preds = %95, %90
  %100 = phi i1 [ false, %90 ], [ %98, %95 ]
  br i1 %100, label %101, label %127

101:                                              ; preds = %99
  %102 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %103 = call i64 @get_frame_pc(%struct.frame_info* %102)
  %104 = load %struct.function_bounds*, %struct.function_bounds** %10, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %104, i64 %106
  %108 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %103, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %101
  %112 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %113 = call i64 @get_frame_pc(%struct.frame_info* %112)
  %114 = load %struct.function_bounds*, %struct.function_bounds** %10, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %114, i64 %116
  %118 = getelementptr inbounds %struct.function_bounds, %struct.function_bounds* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %113, %119
  br label %121

121:                                              ; preds = %111, %101
  %122 = phi i1 [ false, %101 ], [ %120, %111 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %90

127:                                              ; preds = %99
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  store i32 1, i32* %9, align 4
  %131 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %132 = call %struct.frame_info* @find_relative_frame(%struct.frame_info* %131, i32* %9)
  store %struct.frame_info* %132, %struct.frame_info** %5, align 8
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 0
  br label %140

140:                                              ; preds = %137, %134
  %141 = phi i1 [ false, %134 ], [ %139, %137 ]
  br i1 %141, label %89, label %142

142:                                              ; preds = %140
  %143 = load %struct.function_bounds*, %struct.function_bounds** %10, align 8
  %144 = icmp ne %struct.function_bounds* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.function_bounds*, %struct.function_bounds** %10, align 8
  %147 = call i32 @xfree(%struct.function_bounds* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i8*, i8** %3, align 8
  %153 = call i32 @printf_filtered(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %152)
  br label %162

154:                                              ; preds = %148
  %155 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %156 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %157 = icmp ne %struct.frame_info* %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %160 = call i32 @select_and_print_frame(%struct.frame_info* %159)
  br label %161

161:                                              ; preds = %158, %154
  br label %162

162:                                              ; preds = %14, %161, %151
  ret void
}

declare dso_local %struct.frame_info* @parse_frame_specification(i8*) #1

declare dso_local { i32, %struct.TYPE_2__* } @decode_line_spec(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @find_pc_partial_function(i64, i8**, i64*, i64*) #1

declare dso_local i64 @get_frame_pc(%struct.frame_info*) #1

declare dso_local %struct.frame_info* @find_relative_frame(%struct.frame_info*, i32*) #1

declare dso_local i32 @xfree(%struct.function_bounds*) #1

declare dso_local i32 @printf_filtered(i8*, i8*) #1

declare dso_local i32 @select_and_print_frame(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
