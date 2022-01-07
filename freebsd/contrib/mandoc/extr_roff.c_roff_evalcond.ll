; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_evalcond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_evalcond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { i32 }

@ROFFDEF_ANY = common dso_local global i32 0, align 4
@ROFFNUM_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff*, i32, i8*, i32*)* @roff_evalcond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roff_evalcond(%struct.roff* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.roff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 33, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  store i32 0, i32* %20, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %34

33:                                               ; preds = %4
  store i32 1, i32* %20, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i8*, i8** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %204 [
    i32 0, label %42
    i32 110, label %43
    i32 111, label %43
    i32 101, label %48
    i32 116, label %48
    i32 118, label %48
    i32 99, label %56
    i32 100, label %135
    i32 114, label %135
  ]

42:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %235

43:                                               ; preds = %34, %34
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %20, align 4
  store i32 %47, i32* %5, align 4
  br label %235

48:                                               ; preds = %34, %34, %34
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %20, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %235

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %61, %56
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %57, label %70

70:                                               ; preds = %61
  %71 = load i8*, i8** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 9
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  store i32 0, i32* %5, align 4
  br label %235

83:                                               ; preds = %70
  %84 = load i8*, i8** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 92
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %20, align 4
  store i32 %96, i32* %5, align 4
  br label %235

97:                                               ; preds = %83
  %98 = load i8*, i8** %8, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  store i8* %103, i8** %11, align 8
  %104 = call i32 @mandoc_escape(i8** %11, i8** %10, i32* %16)
  switch i32 %104, label %118 [
    i32 129, label %105
    i32 128, label %111
    i32 130, label %112
  ]

105:                                              ; preds = %97
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @mchars_spec2cp(i8* %106, i32 %107)
  %109 = icmp ne i32 %108, -1
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %19, align 4
  br label %123

111:                                              ; preds = %97
  store i32 1, i32* %19, align 4
  br label %123

112:                                              ; preds = %97
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @mchars_num2char(i8* %113, i32 %114)
  %116 = icmp ne i32 %115, -1
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %19, align 4
  br label %123

118:                                              ; preds = %97
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %19, align 4
  br label %123

123:                                              ; preds = %118, %112, %111, %105
  %124 = load i8*, i8** %11, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = load i32*, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %20, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %5, align 4
  br label %235

135:                                              ; preds = %34, %34
  %136 = load i8*, i8** %8, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8* %141, i8** %12, align 8
  br label %142

142:                                              ; preds = %147, %135
  %143 = load i8*, i8** %12, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 32
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %12, align 8
  br label %142

150:                                              ; preds = %142
  %151 = load i8*, i8** %12, align 8
  store i8* %151, i8** %13, align 8
  %152 = load %struct.roff*, %struct.roff** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i8*, i8** %12, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = trunc i64 %158 to i32
  %160 = call i64 @roff_getname(%struct.roff* %152, i8** %12, i32 %153, i32 %159)
  store i64 %160, i64* %14, align 8
  %161 = load i64, i64* %14, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %150
  store i32 0, i32* %19, align 4
  br label %190

164:                                              ; preds = %150
  %165 = load i8*, i8** %8, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 114
  br i1 %172, label %173, label %178

173:                                              ; preds = %164
  %174 = load %struct.roff*, %struct.roff** %6, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = load i64, i64* %14, align 8
  %177 = call i32 @roff_hasregn(%struct.roff* %174, i8* %175, i64 %176)
  store i32 %177, i32* %19, align 4
  br label %189

178:                                              ; preds = %164
  %179 = load i32, i32* @ROFFDEF_ANY, align 4
  store i32 %179, i32* %15, align 4
  %180 = load %struct.roff*, %struct.roff** %6, align 8
  %181 = load i8*, i8** %13, align 8
  %182 = load i64, i64* %14, align 8
  %183 = call i32 @roff_getstrn(%struct.roff* %180, i8* %181, i64 %182, i32* %15)
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  store i32 %188, i32* %19, align 4
  br label %189

189:                                              ; preds = %178, %173
  br label %190

190:                                              ; preds = %189, %163
  %191 = load i8*, i8** %13, align 8
  %192 = load i64, i64* %14, align 8
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  %194 = load i8*, i8** %8, align 8
  %195 = ptrtoint i8* %193 to i64
  %196 = ptrtoint i8* %194 to i64
  %197 = sub i64 %195, %196
  %198 = trunc i64 %197 to i32
  %199 = load i32*, i32** %9, align 8
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* %20, align 4
  %202 = icmp eq i32 %200, %201
  %203 = zext i1 %202 to i32
  store i32 %203, i32* %5, align 4
  br label %235

204:                                              ; preds = %34
  br label %205

205:                                              ; preds = %204
  %206 = load i32*, i32** %9, align 8
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %18, align 4
  %208 = load %struct.roff*, %struct.roff** %6, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load i8*, i8** %8, align 8
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* @ROFFNUM_SCALE, align 4
  %213 = call i64 @roff_evalnum(%struct.roff* %208, i32 %209, i8* %210, i32* %211, i32* %17, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %205
  %216 = load i32, i32* %17, align 4
  %217 = icmp sgt i32 %216, 0
  %218 = zext i1 %217 to i32
  %219 = load i32, i32* %20, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  store i32 %221, i32* %5, align 4
  br label %235

222:                                              ; preds = %205
  %223 = load i32*, i32** %9, align 8
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %18, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %222
  %228 = load i8*, i8** %8, align 8
  %229 = load i32*, i32** %9, align 8
  %230 = call i32 @roff_evalstrcond(i8* %228, i32* %229)
  %231 = load i32, i32* %20, align 4
  %232 = icmp eq i32 %230, %231
  %233 = zext i1 %232 to i32
  store i32 %233, i32* %5, align 4
  br label %235

234:                                              ; preds = %222
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %234, %227, %215, %190, %123, %92, %79, %48, %43, %42
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @mandoc_escape(i8**, i8**, i32*) #1

declare dso_local i32 @mchars_spec2cp(i8*, i32) #1

declare dso_local i32 @mchars_num2char(i8*, i32) #1

declare dso_local i64 @roff_getname(%struct.roff*, i8**, i32, i32) #1

declare dso_local i32 @roff_hasregn(%struct.roff*, i8*, i64) #1

declare dso_local i32 @roff_getstrn(%struct.roff*, i8*, i64, i32*) #1

declare dso_local i64 @roff_evalnum(%struct.roff*, i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @roff_evalstrcond(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
