; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_tui_rl_display_match_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_tui_rl_display_match_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TUI_CMD_WIN = common dso_local global %struct.TYPE_4__* null, align 8
@rl_completion_query_items = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"\0ADisplay all %d possibilities? (y or n)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@rl_ignore_completion_duplicates = common dso_local global i64 0, align 8
@_rl_print_completions_horizontally = external dso_local global i32, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32)* @tui_rl_display_match_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_rl_display_match_list(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [256 x i8], align 16
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TUI_CMD_WIN, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @rl_completion_query_items, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %29 = call i32 @tui_puts(i8* %28)
  %30 = call i64 (...) @get_y_or_n()
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @tui_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %204

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %43, %35
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 1
  %60 = add nsw i32 %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load i64, i64* @rl_ignore_completion_duplicates, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load i8**, i8*** %4, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @qsort(i8** %67, i32 %68, i32 8, i32* bitcast (i32 (i8**, i8**)* @_rl_qsort_string_compare to i32*))
  br label %70

70:                                               ; preds = %65, %56
  %71 = call i32 @tui_putc(i8 signext 10)
  %72 = load i32, i32* @_rl_print_completions_horizontally, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %142

74:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %138, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %141

79:                                               ; preds = %75
  store i32 0, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %133, %79
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %136

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = load i8**, i8*** %4, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %89, %85
  br label %136

97:                                               ; preds = %89
  %98 = load i8**, i8*** %4, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @printable_part(i8* %102)
  store i8* %103, i8** %14, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i8**, i8*** %4, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @print_filename(i8* %104, i8* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %97
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %124, %115
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %9, align 4
  %120 = sub nsw i32 %118, %119
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = call i32 @tui_putc(i8 signext 32)
  br label %124

124:                                              ; preds = %122
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %116

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %97
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %81

136:                                              ; preds = %96, %81
  %137 = call i32 @tui_putc(i8 signext 10)
  br label %138

138:                                              ; preds = %136
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %75

141:                                              ; preds = %75
  br label %204

142:                                              ; preds = %70
  store i32 1, i32* %10, align 4
  br label %143

143:                                              ; preds = %199, %142
  %144 = load i8**, i8*** %4, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %202

150:                                              ; preds = %143
  %151 = load i8**, i8*** %4, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* @printable_part(i8* %155)
  store i8* %156, i8** %14, align 8
  %157 = load i8*, i8** %14, align 8
  %158 = load i8**, i8*** %4, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @print_filename(i8* %157, i8* %162)
  store i32 %163, i32* %9, align 4
  %164 = load i8**, i8*** %4, align 8
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %164, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %198

171:                                              ; preds = %150
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  %175 = load i32, i32* %8, align 4
  %176 = icmp sgt i32 %175, 1
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %8, align 4
  %180 = srem i32 %178, %179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = call i32 @tui_putc(i8 signext 10)
  br label %197

184:                                              ; preds = %177, %174, %171
  store i32 0, i32* %12, align 4
  br label %185

185:                                              ; preds = %193, %184
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %9, align 4
  %189 = sub nsw i32 %187, %188
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = call i32 @tui_putc(i8 signext 32)
  br label %193

193:                                              ; preds = %191
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  br label %185

196:                                              ; preds = %185
  br label %197

197:                                              ; preds = %196, %182
  br label %198

198:                                              ; preds = %197, %150
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  br label %143

202:                                              ; preds = %143
  %203 = call i32 @tui_putc(i8 signext 10)
  br label %204

204:                                              ; preds = %32, %202, %141
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @tui_puts(i8*) #1

declare dso_local i64 @get_y_or_n(...) #1

declare dso_local i32 @qsort(i8**, i32, i32, i32*) #1

declare dso_local i32 @_rl_qsort_string_compare(i8**, i8**) #1

declare dso_local i32 @tui_putc(i8 signext) #1

declare dso_local i8* @printable_part(i8*) #1

declare dso_local i32 @print_filename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
