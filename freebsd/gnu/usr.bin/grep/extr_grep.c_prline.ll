; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_prline.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_prline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@filename = common dso_local global i8* null, align 8
@filename_mask = common dso_local global i32 0, align 4
@out_line = common dso_local global i64 0, align 8
@totalnl = common dso_local global i32 0, align 4
@lastnl = common dso_local global i8* null, align 8
@out_byte = common dso_local global i64 0, align 8
@totalcc = common dso_local global i32 0, align 4
@bufbeg = common dso_local global i8* null, align 8
@only_matching = common dso_local global i64 0, align 8
@color_option = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[%sm\00", align 1
@grep_color = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"\1B[00m\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@lastout = common dso_local global i8* null, align 8
@line_buffered = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"\1B[K\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"writing output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @prline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prline(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i64, i64* @out_file, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i8*, i8** @filename, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @filename_mask, align 4
  %20 = and i32 %18, %19
  %21 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20)
  br label %22

22:                                               ; preds = %16, %3
  %23 = load i64, i64* @out_line, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @nlscan(i8* %26)
  %28 = load i32, i32* @totalnl, align 4
  %29 = call i32 @add_count(i32 %28, i32 1)
  store i32 %29, i32* @totalnl, align 4
  %30 = load i32, i32* @totalnl, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @print_offset_sep(i32 %30, i32 %31)
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** @lastnl, align 8
  br label %34

34:                                               ; preds = %25, %22
  %35 = load i64, i64* @out_byte, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* @totalcc, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** @bufbeg, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @add_count(i32 %38, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @print_offset_sep(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %37, %34
  %50 = load i64, i64* @only_matching, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %106

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %92, %52
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = call i64 @execute(i8* %54, i32 %60, i64* %8, i32 1)
  store i64 %61, i64* %9, align 8
  %62 = icmp ne i64 %61, -1
  br i1 %62, label %63, label %98

63:                                               ; preds = %53
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %98

71:                                               ; preds = %63
  %72 = load i64, i64* %8, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %98

75:                                               ; preds = %71
  %76 = load i64, i64* @color_option, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** @grep_color, align 8
  %80 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i8*, i8** %10, align 8
  %83 = load i64, i64* %8, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @stdout, align 4
  %86 = call i32 @fwrite(i8* %82, i32 1, i32 %84, i32 %85)
  %87 = load i64, i64* @color_option, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @stdout, align 4
  %91 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89, %81
  %93 = load i32, i32* @stdout, align 4
  %94 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** %10, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %4, align 8
  br label %53

98:                                               ; preds = %74, %70, %53
  %99 = load i8*, i8** %5, align 8
  store i8* %99, i8** @lastout, align 8
  %100 = load i64, i64* @line_buffered, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @stdout, align 4
  %104 = call i32 @fflush(i32 %103)
  br label %105

105:                                              ; preds = %102, %98
  br label %186

106:                                              ; preds = %49
  %107 = load i64, i64* @color_option, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %162

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %141, %109
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %110
  %118 = load i8*, i8** %4, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = call i64 @execute(i8* %118, i32 %124, i64* %11, i32 1)
  store i64 %125, i64* %12, align 8
  %126 = icmp ne i64 %125, -1
  br label %127

127:                                              ; preds = %117, %110
  %128 = phi i1 [ false, %110 ], [ %126, %117 ]
  br i1 %128, label %129, label %159

129:                                              ; preds = %127
  %130 = load i8*, i8** %4, align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %13, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = icmp eq i8* %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %159

137:                                              ; preds = %129
  %138 = load i64, i64* %11, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %159

141:                                              ; preds = %137
  %142 = load i8*, i8** %4, align 8
  %143 = load i64, i64* %12, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* @stdout, align 4
  %146 = call i32 @fwrite(i8* %142, i32 1, i32 %144, i32 %145)
  %147 = load i8*, i8** @grep_color, align 8
  %148 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %147)
  %149 = load i8*, i8** %13, align 8
  %150 = load i64, i64* %11, align 8
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* @stdout, align 4
  %153 = call i32 @fwrite(i8* %149, i32 1, i32 %151, i32 %152)
  %154 = load i32, i32* @stdout, align 4
  %155 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  %156 = load i8*, i8** %13, align 8
  %157 = load i64, i64* %11, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %4, align 8
  br label %110

159:                                              ; preds = %140, %136, %127
  %160 = load i32, i32* @stdout, align 4
  %161 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %159, %106
  %163 = load i8*, i8** %4, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = load i8*, i8** %4, align 8
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  %170 = load i32, i32* @stdout, align 4
  %171 = call i32 @fwrite(i8* %163, i32 1, i32 %169, i32 %170)
  %172 = load i32, i32* @stdout, align 4
  %173 = call i64 @ferror(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %162
  %176 = load i32, i32* @errno, align 4
  %177 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %178 = call i32 @error(i32 0, i32 %176, i8* %177)
  br label %179

179:                                              ; preds = %175, %162
  %180 = load i8*, i8** %5, align 8
  store i8* %180, i8** @lastout, align 8
  %181 = load i64, i64* @line_buffered, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i32, i32* @stdout, align 4
  %185 = call i32 @fflush(i32 %184)
  br label %186

186:                                              ; preds = %105, %183, %179
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @nlscan(i8*) #1

declare dso_local i32 @add_count(i32, i32) #1

declare dso_local i32 @print_offset_sep(i32, i32) #1

declare dso_local i64 @execute(i8*, i32, i64*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
