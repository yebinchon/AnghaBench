; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_globexp2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_globexp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glob_lim = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@EOS = common dso_local global i64 0, align 8
@RBRACKET = common dso_local global i64 0, align 8
@GLOB_NOMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i32*, %struct.glob_lim*)* @globexp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @globexp2(i64* %0, i64* %1, i32* %2, %struct.glob_lim* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.glob_lim*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.glob_lim* %3, %struct.glob_lim** %9, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %17, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %18, align 8
  store i64* %23, i64** %12, align 8
  %24 = load i64*, i64** %7, align 8
  store i64* %24, i64** %15, align 8
  br label %25

25:                                               ; preds = %30, %4
  %26 = load i64*, i64** %15, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = icmp ne i64* %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29
  %31 = load i64*, i64** %15, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %15, align 8
  %33 = load i64, i64* %31, align 8
  %34 = load i64*, i64** %12, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %12, align 8
  store i64 %33, i64* %34, align 8
  br label %25

36:                                               ; preds = %25
  %37 = load i64, i64* @EOS, align 8
  %38 = load i64*, i64** %12, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64*, i64** %12, align 8
  store i64* %39, i64** %13, align 8
  store i32 0, i32* %10, align 4
  %40 = load i64*, i64** %6, align 8
  %41 = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %41, i64** %6, align 8
  store i64* %41, i64** %14, align 8
  br label %42

42:                                               ; preds = %98, %36
  %43 = load i64*, i64** %14, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %101

46:                                               ; preds = %42
  %47 = load i64*, i64** %14, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 129
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = load i64*, i64** %14, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %14, align 8
  store i64* %51, i64** %15, align 8
  br label %53

53:                                               ; preds = %66, %50
  %54 = load i64*, i64** %14, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RBRACKET, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i64*, i64** %14, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @EOS, align 8
  %62 = icmp ne i64 %60, %61
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = load i64*, i64** %14, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %14, align 8
  br label %53

69:                                               ; preds = %63
  %70 = load i64*, i64** %14, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @EOS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i64*, i64** %15, align 8
  store i64* %75, i64** %14, align 8
  br label %76

76:                                               ; preds = %74, %69
  br label %97

77:                                               ; preds = %46
  %78 = load i64*, i64** %14, align 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 130
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %96

84:                                               ; preds = %77
  %85 = load i64*, i64** %14, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 128
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %101

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %84
  br label %96

96:                                               ; preds = %95, %81
  br label %97

97:                                               ; preds = %96, %76
  br label %98

98:                                               ; preds = %97
  %99 = load i64*, i64** %14, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** %14, align 8
  br label %42

101:                                              ; preds = %91, %42
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = load i64*, i64** %14, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @EOS, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %104, %101
  %110 = load i32*, i32** %8, align 8
  %111 = load %struct.glob_lim*, %struct.glob_lim** %9, align 8
  %112 = call i32 @glob0(i64* %23, i32* %110, %struct.glob_lim* %111)
  store i32 %112, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %214

113:                                              ; preds = %104
  store i32 0, i32* %10, align 4
  %114 = load i64*, i64** %6, align 8
  store i64* %114, i64** %15, align 8
  store i64* %114, i64** %16, align 8
  br label %115

115:                                              ; preds = %210, %113
  %116 = load i64*, i64** %15, align 8
  %117 = load i64*, i64** %14, align 8
  %118 = icmp ule i64* %116, %117
  br i1 %118, label %119, label %213

119:                                              ; preds = %115
  %120 = load i64*, i64** %15, align 8
  %121 = load i64, i64* %120, align 8
  switch i64 %121, label %208 [
    i64 129, label %122
    i64 130, label %149
    i64 128, label %152
    i64 131, label %159
  ]

122:                                              ; preds = %119
  %123 = load i64*, i64** %15, align 8
  %124 = getelementptr inbounds i64, i64* %123, i32 1
  store i64* %124, i64** %15, align 8
  store i64* %123, i64** %16, align 8
  br label %125

125:                                              ; preds = %138, %122
  %126 = load i64*, i64** %15, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @RBRACKET, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i64*, i64** %15, align 8
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @EOS, align 8
  %134 = icmp ne i64 %132, %133
  br label %135

135:                                              ; preds = %130, %125
  %136 = phi i1 [ false, %125 ], [ %134, %130 ]
  br i1 %136, label %137, label %141

137:                                              ; preds = %135
  br label %138

138:                                              ; preds = %137
  %139 = load i64*, i64** %15, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %15, align 8
  br label %125

141:                                              ; preds = %135
  %142 = load i64*, i64** %15, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @EOS, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i64*, i64** %16, align 8
  store i64* %147, i64** %15, align 8
  br label %148

148:                                              ; preds = %146, %141
  br label %209

149:                                              ; preds = %119
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %209

152:                                              ; preds = %119
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %10, align 4
  br label %209

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %119, %158
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i64*, i64** %15, align 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 131
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %209

167:                                              ; preds = %162, %159
  %168 = load i64*, i64** %13, align 8
  store i64* %168, i64** %12, align 8
  br label %169

169:                                              ; preds = %174, %167
  %170 = load i64*, i64** %16, align 8
  %171 = load i64*, i64** %15, align 8
  %172 = icmp ult i64* %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %173
  %175 = load i64*, i64** %16, align 8
  %176 = getelementptr inbounds i64, i64* %175, i32 1
  store i64* %176, i64** %16, align 8
  %177 = load i64, i64* %175, align 8
  %178 = load i64*, i64** %12, align 8
  %179 = getelementptr inbounds i64, i64* %178, i32 1
  store i64* %179, i64** %12, align 8
  store i64 %177, i64* %178, align 8
  br label %169

180:                                              ; preds = %169
  %181 = load i64*, i64** %14, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 1
  store i64* %182, i64** %16, align 8
  br label %183

183:                                              ; preds = %191, %180
  %184 = load i64*, i64** %16, align 8
  %185 = getelementptr inbounds i64, i64* %184, i32 1
  store i64* %185, i64** %16, align 8
  %186 = load i64, i64* %184, align 8
  %187 = load i64*, i64** %12, align 8
  %188 = getelementptr inbounds i64, i64* %187, i32 1
  store i64* %188, i64** %12, align 8
  store i64 %186, i64* %187, align 8
  %189 = load i64, i64* @EOS, align 8
  %190 = icmp ne i64 %186, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %183

192:                                              ; preds = %183
  %193 = load i32*, i32** %8, align 8
  %194 = load %struct.glob_lim*, %struct.glob_lim** %9, align 8
  %195 = call i32 @globexp1(i64* %23, i32* %193, %struct.glob_lim* %194)
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %192
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @GLOB_NOMATCH, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = load i32, i32* %11, align 4
  store i32 %203, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %214

204:                                              ; preds = %198, %192
  %205 = load i64*, i64** %15, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 1
  store i64* %206, i64** %16, align 8
  br label %207

207:                                              ; preds = %204
  br label %209

208:                                              ; preds = %119
  br label %209

209:                                              ; preds = %208, %207, %166, %155, %149, %148
  br label %210

210:                                              ; preds = %209
  %211 = load i64*, i64** %15, align 8
  %212 = getelementptr inbounds i64, i64* %211, i32 1
  store i64* %212, i64** %15, align 8
  br label %115

213:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %214

214:                                              ; preds = %213, %202, %109
  %215 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @glob0(i64*, i32*, %struct.glob_lim*) #2

declare dso_local i32 @globexp1(i64*, i32*, %struct.glob_lim*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
