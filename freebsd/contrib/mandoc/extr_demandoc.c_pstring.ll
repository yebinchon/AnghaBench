; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_demandoc.c_pstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_demandoc.c_pstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESCAPE_ERROR = common dso_local global i32 0, align 4
@ASCII_HYPH = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, i32)* @pstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pstring(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %13

13:                                               ; preds = %193, %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %195

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 0, %19
  br i1 %20, label %21, label %195

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %27, %21
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isspace(i8 zeroext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  br label %22

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 39, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 40, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 34, %44
  br label %46

46:                                               ; preds = %41, %36, %31
  %47 = phi i1 [ true, %36 ], [ true, %31 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  br label %31

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @isalpha(i8 zeroext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isalpha(i8 zeroext %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %57, %51
  %64 = phi i1 [ false, %51 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load i8*, i8** %5, align 8
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %94, %63
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 0, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 92, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  %80 = call i32 @mandoc_escape(i8** %5, i32* null, i32* null)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @ESCAPE_ERROR, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %235

85:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %93

86:                                               ; preds = %72
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @isspace(i8 zeroext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %97

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %85
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %5, align 8
  br label %67

97:                                               ; preds = %91, %67
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 -1
  store i8* %99, i8** %11, align 8
  br label %100

100:                                              ; preds = %153, %97
  %101 = load i8*, i8** %11, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ugt i8* %101, %102
  br i1 %103, label %104, label %154

104:                                              ; preds = %100
  %105 = load i8*, i8** %11, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 46, %107
  br i1 %108, label %149, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %11, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 44, %112
  br i1 %113, label %149, label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** %11, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 39, %117
  br i1 %118, label %149, label %119

119:                                              ; preds = %114
  %120 = load i8*, i8** %11, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 34, %122
  br i1 %123, label %149, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %11, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 41, %127
  br i1 %128, label %149, label %129

129:                                              ; preds = %124
  %130 = load i8*, i8** %11, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 33, %132
  br i1 %133, label %149, label %134

134:                                              ; preds = %129
  %135 = load i8*, i8** %11, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 63, %137
  br i1 %138, label %149, label %139

139:                                              ; preds = %134
  %140 = load i8*, i8** %11, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 58, %142
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load i8*, i8** %11, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 59, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144, %139, %134, %129, %124, %119, %114, %109, %104
  %150 = load i8*, i8** %11, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 -1
  store i8* %151, i8** %11, align 8
  br label %153

152:                                              ; preds = %144
  br label %154

153:                                              ; preds = %149
  br label %100

154:                                              ; preds = %152, %100
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %188

157:                                              ; preds = %154
  %158 = load i8*, i8** %11, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = icmp sge i64 %162, 1
  br i1 %163, label %164, label %188

164:                                              ; preds = %157
  br label %165

165:                                              ; preds = %183, %164
  %166 = load i8*, i8** %10, align 8
  %167 = load i8*, i8** %11, align 8
  %168 = icmp ule i8* %166, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %165
  %170 = load i8, i8* @ASCII_HYPH, align 1
  %171 = sext i8 %170 to i32
  %172 = load i8*, i8** %10, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %171, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = call i32 @putchar(i8 zeroext 45)
  br label %182

178:                                              ; preds = %169
  %179 = load i8*, i8** %10, align 8
  %180 = load i8, i8* %179, align 1
  %181 = call i32 @putchar(i8 zeroext %180)
  br label %182

182:                                              ; preds = %178, %176
  br label %183

183:                                              ; preds = %182
  %184 = load i8*, i8** %10, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %10, align 8
  br label %165

186:                                              ; preds = %165
  %187 = call i32 @putchar(i8 zeroext 10)
  br label %188

188:                                              ; preds = %186, %157, %154
  %189 = load i8*, i8** %5, align 8
  %190 = load i8, i8* %189, align 1
  %191 = call i64 @isspace(i8 zeroext %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %13

194:                                              ; preds = %188
  br label %235

195:                                              ; preds = %16, %13
  br label %196

196:                                              ; preds = %201, %195
  %197 = load i32*, i32** %7, align 8
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = call i32 @putchar(i8 zeroext 32)
  %203 = load i32*, i32** %7, align 8
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  br label %196

206:                                              ; preds = %196
  br label %207

207:                                              ; preds = %234, %206
  %208 = load i8*, i8** %5, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 0, %210
  br i1 %211, label %212, label %235

212:                                              ; preds = %207
  %213 = load i8*, i8** %5, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 92, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %212
  %218 = load i8*, i8** %5, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %5, align 8
  %220 = call i32 @mandoc_escape(i8** %5, i32* null, i32* null)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* @ESCAPE_ERROR, align 4
  %222 = load i32, i32* %9, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  br label %235

225:                                              ; preds = %217
  br label %234

226:                                              ; preds = %212
  %227 = load i8*, i8** %5, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %5, align 8
  %229 = load i8, i8* %227, align 1
  %230 = call i32 @putchar(i8 zeroext %229)
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %226, %225
  br label %207

235:                                              ; preds = %84, %194, %224, %207
  ret void
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i32 @mandoc_escape(i8**, i32*, i32*) #1

declare dso_local i32 @putchar(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
