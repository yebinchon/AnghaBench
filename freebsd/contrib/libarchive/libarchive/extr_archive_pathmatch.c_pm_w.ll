; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_pathmatch.c_pm_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_pathmatch.c_pm_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATHMATCH_NO_ANCHOR_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @pm_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_w(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 46
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = call i32* @pm_slashskip_w(i32* %20)
  store i32* %21, i32** %6, align 8
  br label %22

22:                                               ; preds = %18, %13, %3
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 46
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 47
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = call i32* @pm_slashskip_w(i32* %34)
  store i32* %35, i32** %5, align 8
  br label %36

36:                                               ; preds = %32, %27, %22
  br label %37

37:                                               ; preds = %222, %36
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %214 [
    i32 0, label %40
    i32 63, label %59
    i32 42, label %65
    i32 91, label %94
    i32 92, label %147
    i32 47, label %169
    i32 36, label %197
  ]

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PATHMATCH_NO_ANCHOR_END, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %227

51:                                               ; preds = %45
  %52 = load i32*, i32** %6, align 8
  %53 = call i32* @pm_slashskip_w(i32* %52)
  store i32* %53, i32** %6, align 8
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %227

59:                                               ; preds = %37
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %227

64:                                               ; preds = %59
  br label %222

65:                                               ; preds = %37
  br label %66

66:                                               ; preds = %70, %65
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 42
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %5, align 8
  br label %66

73:                                               ; preds = %66
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 1, i32* %4, align 4
  br label %227

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %90, %78
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @archive_pathmatch_w(i32* %84, i32* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 1, i32* %4, align 4
  br label %227

90:                                               ; preds = %83
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %6, align 8
  br label %79

93:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %227

94:                                               ; preds = %37
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32* %96, i32** %8, align 8
  br label %97

97:                                               ; preds = %119, %94
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 93
  br label %105

105:                                              ; preds = %101, %97
  %106 = phi i1 [ false, %97 ], [ %104, %101 ]
  br i1 %106, label %107, label %122

107:                                              ; preds = %105
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 92
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %8, align 8
  br label %119

119:                                              ; preds = %116, %111, %107
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %8, align 8
  br label %97

122:                                              ; preds = %105
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 93
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32*, i32** %8, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @pm_list_w(i32* %128, i32* %129, i32 %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %227

136:                                              ; preds = %126
  %137 = load i32*, i32** %8, align 8
  store i32* %137, i32** %5, align 8
  br label %222

138:                                              ; preds = %122
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %227

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145
  br label %222

147:                                              ; preds = %37
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 92
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %227

157:                                              ; preds = %152
  br label %168

158:                                              ; preds = %147
  %159 = load i32*, i32** %5, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %5, align 8
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %162, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  store i32 0, i32* %4, align 4
  br label %227

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167, %157
  br label %222

169:                                              ; preds = %37
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 47
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %227

178:                                              ; preds = %173, %169
  %179 = load i32*, i32** %5, align 8
  %180 = call i32* @pm_slashskip_w(i32* %179)
  store i32* %180, i32** %5, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = call i32* @pm_slashskip_w(i32* %181)
  store i32* %182, i32** %6, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @PATHMATCH_NO_ANCHOR_END, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  store i32 1, i32* %4, align 4
  br label %227

192:                                              ; preds = %186, %178
  %193 = load i32*, i32** %5, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 -1
  store i32* %194, i32** %5, align 8
  %195 = load i32*, i32** %6, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 -1
  store i32* %196, i32** %6, align 8
  br label %222

197:                                              ; preds = %37
  %198 = load i32*, i32** %5, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %197
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @PATHMATCH_NO_ANCHOR_END, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = load i32*, i32** %6, align 8
  %209 = call i32* @pm_slashskip_w(i32* %208)
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 0
  %212 = zext i1 %211 to i32
  store i32 %212, i32* %4, align 4
  br label %227

213:                                              ; preds = %202, %197
  br label %214

214:                                              ; preds = %37, %213
  %215 = load i32*, i32** %5, align 8
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %216, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  store i32 0, i32* %4, align 4
  br label %227

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %192, %168, %146, %136, %64
  %223 = load i32*, i32** %5, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** %5, align 8
  %225 = load i32*, i32** %6, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %6, align 8
  br label %37

227:                                              ; preds = %220, %207, %191, %177, %166, %156, %144, %135, %93, %89, %77, %63, %54, %50
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32* @pm_slashskip_w(i32*) #1

declare dso_local i32 @archive_pathmatch_w(i32*, i32*, i32) #1

declare dso_local i32 @pm_list_w(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
