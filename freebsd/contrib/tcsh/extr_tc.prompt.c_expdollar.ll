; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.prompt.c_expdollar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.prompt.c_expdollar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32 }
%struct.varent = type { i8** }

@TRIM = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expdollar(%struct.Strbuf* %0, i8** %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Strbuf*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.varent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.Strbuf* %0, %struct.Strbuf** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8 %2, i8* %7, align 1
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @Strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 1
  %21 = trunc i64 %20 to i32
  %22 = call i8* @xmalloc(i32 %21)
  store i8* %22, i8** %10, align 8
  store i64 0, i64* %12, align 8
  br label %23

23:                                               ; preds = %75, %3
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @TRIM, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 %31, i8* %34, align 1
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %23
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 123
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  store i32 1, i32* %13, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* @TRIM, align 1
  %50 = sext i8 %49 to i32
  %51 = and i32 %48, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 %52, i8* %55, align 1
  br label %56

56:                                               ; preds = %44, %37, %23
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @alnum(i8 signext %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %56
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 95
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i8*, i8** %10, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 0, i8* %73, align 1
  br label %78

74:                                               ; preds = %63, %56
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %23

78:                                               ; preds = %70
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* @TRIM, align 1
  %86 = sext i8 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp eq i32 %87, 125
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  br label %92

92:                                               ; preds = %89, %81, %78
  %93 = load i8*, i8** %10, align 8
  %94 = call %struct.varent* @adrof(i8* %93)
  store %struct.varent* %94, %struct.varent** %8, align 8
  %95 = load %struct.varent*, %struct.varent** %8, align 8
  %96 = icmp ne %struct.varent* %95, null
  br i1 %96, label %97, label %167

97:                                               ; preds = %92
  %98 = load %struct.varent*, %struct.varent** %8, align 8
  %99 = getelementptr inbounds %struct.varent, %struct.varent* %98, i32 0, i32 0
  %100 = load i8**, i8*** %99, align 8
  %101 = icmp ne i8** %100, null
  br i1 %101, label %102, label %167

102:                                              ; preds = %97
  store i64 0, i64* %12, align 8
  br label %103

103:                                              ; preds = %163, %102
  %104 = load %struct.varent*, %struct.varent** %8, align 8
  %105 = getelementptr inbounds %struct.varent, %struct.varent* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = load i64, i64* %12, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %166

111:                                              ; preds = %103
  %112 = load %struct.varent*, %struct.varent** %8, align 8
  %113 = getelementptr inbounds %struct.varent, %struct.varent* %112, i32 0, i32 0
  %114 = load i8**, i8*** %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %11, align 8
  br label %118

118:                                              ; preds = %143, %111
  %119 = load i8*, i8** %11, align 8
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %118
  %123 = load i8*, i8** %11, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 10
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = load i8*, i8** %11, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 13
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load %struct.Strbuf*, %struct.Strbuf** %5, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = load i8, i8* %7, align 1
  %138 = sext i8 %137 to i32
  %139 = or i32 %136, %138
  %140 = trunc i32 %139 to i8
  %141 = call i32 @Strbuf_append1(%struct.Strbuf* %133, i8 signext %140)
  br label %142

142:                                              ; preds = %132, %127, %122
  br label %143

143:                                              ; preds = %142
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %11, align 8
  br label %118

146:                                              ; preds = %118
  %147 = load %struct.varent*, %struct.varent** %8, align 8
  %148 = getelementptr inbounds %struct.varent, %struct.varent* %147, i32 0, i32 0
  %149 = load i8**, i8*** %148, align 8
  %150 = load i64, i64* %12, align 8
  %151 = add i64 %150, 1
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %146
  %156 = load %struct.Strbuf*, %struct.Strbuf** %5, align 8
  %157 = load i8, i8* %7, align 1
  %158 = sext i8 %157 to i32
  %159 = or i32 32, %158
  %160 = trunc i32 %159 to i8
  %161 = call i32 @Strbuf_append1(%struct.Strbuf* %156, i8 signext %160)
  br label %162

162:                                              ; preds = %155, %146
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %12, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %12, align 8
  br label %103

166:                                              ; preds = %103
  br label %214

167:                                              ; preds = %97, %92
  %168 = load %struct.varent*, %struct.varent** %8, align 8
  %169 = icmp ne %struct.varent* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load i8*, i8** %10, align 8
  %172 = call i8* @tgetenv(i8* %171)
  br label %174

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173, %170
  %175 = phi i8* [ %172, %170 ], [ null, %173 ]
  store i8* %175, i8** %11, align 8
  %176 = load i8*, i8** %11, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %208

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %204, %178
  %180 = load i8*, i8** %11, align 8
  %181 = load i8, i8* %180, align 1
  %182 = icmp ne i8 %181, 0
  br i1 %182, label %183, label %207

183:                                              ; preds = %179
  %184 = load i8*, i8** %11, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 10
  br i1 %187, label %188, label %203

188:                                              ; preds = %183
  %189 = load i8*, i8** %11, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 13
  br i1 %192, label %193, label %203

193:                                              ; preds = %188
  %194 = load %struct.Strbuf*, %struct.Strbuf** %5, align 8
  %195 = load i8*, i8** %11, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = load i8, i8* %7, align 1
  %199 = sext i8 %198 to i32
  %200 = or i32 %197, %199
  %201 = trunc i32 %200 to i8
  %202 = call i32 @Strbuf_append1(%struct.Strbuf* %194, i8 signext %201)
  br label %203

203:                                              ; preds = %193, %188, %183
  br label %204

204:                                              ; preds = %203
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %11, align 8
  br label %179

207:                                              ; preds = %179
  br label %213

208:                                              ; preds = %174
  %209 = load i8*, i8** %9, align 8
  %210 = load i8**, i8*** %6, align 8
  store i8* %209, i8** %210, align 8
  %211 = load i8*, i8** %10, align 8
  %212 = call i32 @xfree(i8* %211)
  store i32 0, i32* %4, align 4
  br label %219

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213, %166
  %215 = load i8*, i8** %9, align 8
  %216 = load i8**, i8*** %6, align 8
  store i8* %215, i8** %216, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = call i32 @xfree(i8* %217)
  store i32 1, i32* %4, align 4
  br label %219

219:                                              ; preds = %214, %208
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @Strlen(i8*) #1

declare dso_local i32 @alnum(i8 signext) #1

declare dso_local %struct.varent* @adrof(i8*) #1

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i8 signext) #1

declare dso_local i8* @tgetenv(i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
