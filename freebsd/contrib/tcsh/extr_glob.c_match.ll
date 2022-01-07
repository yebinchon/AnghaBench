; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_glob.c_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_glob.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOS = common dso_local global i8 0, align 1
@MB_LEN_MAX = common dso_local global i32 0, align 4
@M_MASK = common dso_local global i32 0, align 4
@M_END = common dso_local global i32 0, align 4
@M_RNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load i32*, i32** %7, align 8
  store i32* %23, i32** %12, align 8
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %13, align 8
  store i8* %24, i8** %14, align 8
  store i8* null, i8** %15, align 8
  br label %25

25:                                               ; preds = %221, %203, %188, %89, %73, %4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ult i32* %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ true, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %225

36:                                               ; preds = %34
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @EOS, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %15, align 8
  br label %47

47:                                               ; preds = %45, %36
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @MB_LEN_MAX, align 4
  %50 = call i64 @One_Char_mbtowc(i32* %19, i32* %48, i32 %49)
  store i64 %50, i64* %18, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @MB_LEN_MAX, align 4
  %53 = call i64 @one_mbtowc(i32* %20, i8* %51, i32 %52)
  store i64 %53, i64* %17, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @M_MASK, align 4
  %56 = and i32 %54, %55
  switch i32 %56, label %189 [
    i32 130, label %57
    i32 129, label %81
    i32 128, label %96
  ]

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %66, %57
  %59 = load i32*, i32** %7, align 8
  %60 = load i64, i64* %18, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @M_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 130
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load i64, i64* %18, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 %67
  store i32* %69, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @MB_LEN_MAX, align 4
  %72 = call i64 @One_Char_mbtowc(i32* %19, i32* %70, i32 %71)
  store i64 %72, i64* %18, align 8
  br label %58

73:                                               ; preds = %58
  %74 = load i32*, i32** %7, align 8
  store i32* %74, i32** %12, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %17, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %13, align 8
  %78 = load i64, i64* %18, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  store i32* %80, i32** %7, align 8
  br label %25

81:                                               ; preds = %47
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* @EOS, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %210

89:                                               ; preds = %81
  %90 = load i64, i64* %17, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 %90
  store i8* %92, i8** %6, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 %93
  store i32* %95, i32** %7, align 8
  br label %25

96:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = load i8, i8* @EOS, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %210

104:                                              ; preds = %96
  %105 = load i64, i64* %18, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  store i32* %107, i32** %7, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* @MB_LEN_MAX, align 4
  %110 = call i64 @One_Char_mbtowc(i32* %19, i32* %108, i32 %109)
  store i64 %110, i64* %18, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 %111
  store i8* %113, i8** %6, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @M_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %104
  %123 = load i64, i64* %18, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 %123
  store i32* %125, i32** %7, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* @MB_LEN_MAX, align 4
  %128 = call i64 @One_Char_mbtowc(i32* %19, i32* %126, i32 %127)
  store i64 %128, i64* %18, align 8
  br label %129

129:                                              ; preds = %122, %104
  %130 = load i32, i32* %19, align 4
  store i32 %130, i32* %21, align 4
  br label %131

131:                                              ; preds = %169, %129
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @M_MASK, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @M_END, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %177

138:                                              ; preds = %131
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @M_MASK, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* @M_RNG, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %138
  %146 = load i64, i64* %18, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 %146
  store i32* %148, i32** %7, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* @MB_LEN_MAX, align 4
  %151 = call i64 @One_Char_mbtowc(i32* %22, i32* %149, i32 %150)
  store i64 %151, i64* %18, align 8
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %20, align 4
  %154 = call i32 @globcharcoll(i32 %152, i32 %153, i32 0)
  %155 = icmp sle i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %145
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %22, align 4
  %159 = call i32 @globcharcoll(i32 %157, i32 %158, i32 0)
  %160 = icmp sle i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 1, i32* %10, align 4
  br label %162

162:                                              ; preds = %161, %156, %145
  br label %169

163:                                              ; preds = %138
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %20, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 1, i32* %10, align 4
  br label %168

168:                                              ; preds = %167, %163
  br label %169

169:                                              ; preds = %168, %162
  %170 = load i64, i64* %18, align 8
  %171 = load i32*, i32** %7, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 %170
  store i32* %172, i32** %7, align 8
  %173 = load i32, i32* %19, align 4
  store i32 %173, i32* %21, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* @MB_LEN_MAX, align 4
  %176 = call i64 @One_Char_mbtowc(i32* %19, i32* %174, i32 %175)
  store i64 %176, i64* %18, align 8
  br label %131

177:                                              ; preds = %131
  %178 = load i64, i64* %18, align 8
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 %178
  store i32* %180, i32** %7, align 8
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* @MB_LEN_MAX, align 4
  %183 = call i64 @One_Char_mbtowc(i32* %19, i32* %181, i32 %182)
  store i64 %183, i64* %18, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  br label %210

188:                                              ; preds = %177
  br label %25

189:                                              ; preds = %47
  %190 = load i8*, i8** %6, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = load i8, i8* @EOS, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %202, label %196

196:                                              ; preds = %189
  %197 = load i32, i32* %20, align 4
  %198 = call i32 @samecase(i32 %197)
  %199 = load i32, i32* %19, align 4
  %200 = call i32 @samecase(i32 %199)
  %201 = icmp ne i32 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %196, %189
  br label %210

203:                                              ; preds = %196
  %204 = load i64, i64* %17, align 8
  %205 = load i8*, i8** %6, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 %204
  store i8* %206, i8** %6, align 8
  %207 = load i64, i64* %18, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 %207
  store i32* %209, i32** %7, align 8
  br label %25

210:                                              ; preds = %202, %187, %103, %88
  %211 = load i8*, i8** %13, align 8
  %212 = load i8*, i8** %14, align 8
  %213 = icmp ne i8* %211, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %210
  %215 = load i8*, i8** %15, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %221, label %217

217:                                              ; preds = %214
  %218 = load i8*, i8** %13, align 8
  %219 = load i8*, i8** %15, align 8
  %220 = icmp ule i8* %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %217, %214
  %222 = load i32*, i32** %12, align 8
  store i32* %222, i32** %7, align 8
  %223 = load i8*, i8** %13, align 8
  store i8* %223, i8** %6, align 8
  br label %25

224:                                              ; preds = %217, %210
  store i32 0, i32* %5, align 4
  br label %226

225:                                              ; preds = %34
  store i32 1, i32* %5, align 4
  br label %226

226:                                              ; preds = %225, %224
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i64 @One_Char_mbtowc(i32*, i32*, i32) #1

declare dso_local i64 @one_mbtowc(i32*, i8*, i32) #1

declare dso_local i32 @globcharcoll(i32, i32, i32) #1

declare dso_local i32 @samecase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
