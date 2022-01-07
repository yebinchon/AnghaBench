; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_search.c_Fexecute.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_search.c_Fexecute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kwsmatch = type { i64* }

@eolbyte = common dso_local global i8 0, align 1
@kwset = common dso_local global i32 0, align 4
@match_words = common dso_local global i64 0, align 8
@match_lines = common dso_local global i64 0, align 8
@MB_CUR_MAX = common dso_local global i32 0, align 4
@f_i_multibyte = common dso_local global i64 0, align 8
@using_utf8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64*, i32)* @Fexecute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Fexecute(i8* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.kwsmatch, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i8, i8* @eolbyte, align 1
  store i8 %19, i8* %14, align 1
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %154, %4
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = icmp ule i8* %22, %25
  br i1 %26, label %27, label %157

27:                                               ; preds = %21
  %28 = load i32, i32* @kwset, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8*, i8** %10, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = call i64 @kwsexec(i32 %28, i8* %29, i64 %36, %struct.kwsmatch* %15)
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %17, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %158

41:                                               ; preds = %27
  %42 = load i64, i64* %17, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %10, align 8
  %45 = getelementptr inbounds %struct.kwsmatch, %struct.kwsmatch* %15, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %13, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i64, i64* @match_words, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %200

55:                                               ; preds = %51, %41
  %56 = load i64, i64* @match_lines, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ugt i8* %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* %14, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %153

71:                                               ; preds = %62, %58
  %72 = load i8*, i8** %10, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = icmp ult i8* %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* %14, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %153

89:                                               ; preds = %79, %71
  br label %159

90:                                               ; preds = %55
  %91 = load i64, i64* @match_words, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %152

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %93, %151
  store i32 0, i32* %18, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = icmp ugt i8* %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 -1
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @WCHAR(i8 zeroext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %153

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %94
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8*, i8** %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = icmp uge i8* %109, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %106
  %115 = load i8*, i8** %10, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = call i64 @WCHAR(i8 zeroext %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %114, %106
  store i32 1, i32* %18, align 4
  br label %122

122:                                              ; preds = %121, %114
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  br label %159

129:                                              ; preds = %125
  br label %200

130:                                              ; preds = %122
  %131 = load i64, i64* %13, align 8
  %132 = icmp ugt i64 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %130
  %134 = load i64, i64* %13, align 8
  %135 = add i64 %134, -1
  store i64 %135, i64* %13, align 8
  %136 = load i32, i32* @kwset, align 4
  %137 = load i8*, i8** %10, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i64 @kwsexec(i32 %136, i8* %137, i64 %138, %struct.kwsmatch* %15)
  store i64 %139, i64* %17, align 8
  %140 = load i64, i64* %17, align 8
  %141 = icmp eq i64 %140, -1
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %153

143:                                              ; preds = %133
  %144 = load i64, i64* %17, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 %144
  store i8* %146, i8** %10, align 8
  %147 = getelementptr inbounds %struct.kwsmatch, %struct.kwsmatch* %15, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %13, align 8
  br label %151

151:                                              ; preds = %143, %130
  br label %94

152:                                              ; preds = %90
  br label %159

153:                                              ; preds = %142, %104, %88, %70
  br label %154

154:                                              ; preds = %153
  %155 = load i8*, i8** %10, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %10, align 8
  br label %21

157:                                              ; preds = %21
  br label %158

158:                                              ; preds = %157, %40
  store i64 -1, i64* %5, align 8
  br label %208

159:                                              ; preds = %152, %128, %89
  %160 = load i8*, i8** %10, align 8
  %161 = load i64, i64* %13, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = load i8, i8* %14, align 1
  %164 = load i8*, i8** %6, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i8*, i8** %10, align 8
  %168 = load i64, i64* %13, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = ptrtoint i8* %166 to i64
  %171 = ptrtoint i8* %169 to i64
  %172 = sub i64 %170, %171
  %173 = trunc i64 %172 to i32
  %174 = call i8* @memchr(i8* %162, i8 signext %163, i32 %173)
  store i8* %174, i8** %12, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %12, align 8
  br label %177

177:                                              ; preds = %191, %159
  %178 = load i8*, i8** %6, align 8
  %179 = load i8*, i8** %10, align 8
  %180 = icmp ult i8* %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %177
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 -1
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = load i8, i8* %14, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %185, %187
  br label %189

189:                                              ; preds = %181, %177
  %190 = phi i1 [ false, %177 ], [ %188, %181 ]
  br i1 %190, label %191, label %194

191:                                              ; preds = %189
  %192 = load i8*, i8** %10, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 -1
  store i8* %193, i8** %10, align 8
  br label %177

194:                                              ; preds = %189
  %195 = load i8*, i8** %12, align 8
  %196 = load i8*, i8** %10, align 8
  %197 = ptrtoint i8* %195 to i64
  %198 = ptrtoint i8* %196 to i64
  %199 = sub i64 %197, %198
  store i64 %199, i64* %13, align 8
  br label %200

200:                                              ; preds = %194, %129, %54
  %201 = load i64, i64* %13, align 8
  %202 = load i64*, i64** %8, align 8
  store i64 %201, i64* %202, align 8
  %203 = load i8*, i8** %10, align 8
  %204 = load i8*, i8** %6, align 8
  %205 = ptrtoint i8* %203 to i64
  %206 = ptrtoint i8* %204 to i64
  %207 = sub i64 %205, %206
  store i64 %207, i64* %5, align 8
  br label %208

208:                                              ; preds = %200, %158
  %209 = load i64, i64* %5, align 8
  ret i64 %209
}

declare dso_local i64 @kwsexec(i32, i8*, i64, %struct.kwsmatch*) #1

declare dso_local i64 @WCHAR(i8 zeroext) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
