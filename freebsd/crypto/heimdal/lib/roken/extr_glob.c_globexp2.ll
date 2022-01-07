; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_globexp2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_globexp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxPathLen = common dso_local global i32 0, align 4
@CHAR_RBRACKET = common dso_local global i64 0, align 8
@CHAR_EOS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i32*, i32*)* @globexp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @globexp2(i64* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32, i32* @MaxPathLen, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  store i64* %23, i64** %11, align 8
  %24 = load i64*, i64** %7, align 8
  store i64* %24, i64** %14, align 8
  br label %25

25:                                               ; preds = %30, %4
  %26 = load i64*, i64** %14, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = icmp ne i64* %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29
  %31 = load i64*, i64** %14, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %14, align 8
  %33 = load i64, i64* %31, align 8
  %34 = load i64*, i64** %11, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %11, align 8
  store i64 %33, i64* %34, align 8
  br label %25

36:                                               ; preds = %25
  %37 = load i64*, i64** %11, align 8
  store i64* %37, i64** %12, align 8
  store i32 0, i32* %10, align 4
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %6, align 8
  store i64* %39, i64** %13, align 8
  br label %40

40:                                               ; preds = %96, %36
  %41 = load i64*, i64** %13, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %99

44:                                               ; preds = %40
  %45 = load i64*, i64** %13, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 129
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load i64*, i64** %13, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %13, align 8
  store i64* %49, i64** %14, align 8
  br label %51

51:                                               ; preds = %64, %48
  %52 = load i64*, i64** %13, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CHAR_RBRACKET, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i64*, i64** %13, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CHAR_EOS, align 8
  %60 = icmp ne i64 %58, %59
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ false, %51 ], [ %60, %56 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i64*, i64** %13, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %13, align 8
  br label %51

67:                                               ; preds = %61
  %68 = load i64*, i64** %13, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CHAR_EOS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64*, i64** %14, align 8
  store i64* %73, i64** %13, align 8
  br label %74

74:                                               ; preds = %72, %67
  br label %95

75:                                               ; preds = %44
  %76 = load i64*, i64** %13, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 130
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %94

82:                                               ; preds = %75
  %83 = load i64*, i64** %13, align 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 128
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %99

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %90, %82
  br label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %95
  %97 = load i64*, i64** %13, align 8
  %98 = getelementptr inbounds i64, i64* %97, i32 1
  store i64* %98, i64** %13, align 8
  br label %40

99:                                               ; preds = %89, %40
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = load i64*, i64** %13, align 8
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CHAR_EOS, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %102, %99
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @glob0(i64* %23, i32* %108)
  %110 = load i32*, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %204

111:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  %112 = load i64*, i64** %6, align 8
  store i64* %112, i64** %14, align 8
  store i64* %112, i64** %15, align 8
  br label %113

113:                                              ; preds = %199, %111
  %114 = load i64*, i64** %14, align 8
  %115 = load i64*, i64** %13, align 8
  %116 = icmp ule i64* %114, %115
  br i1 %116, label %117, label %202

117:                                              ; preds = %113
  %118 = load i64*, i64** %14, align 8
  %119 = load i64, i64* %118, align 8
  switch i64 %119, label %197 [
    i64 129, label %120
    i64 130, label %147
    i64 128, label %150
    i64 131, label %157
  ]

120:                                              ; preds = %117
  %121 = load i64*, i64** %14, align 8
  %122 = getelementptr inbounds i64, i64* %121, i32 1
  store i64* %122, i64** %14, align 8
  store i64* %121, i64** %15, align 8
  br label %123

123:                                              ; preds = %136, %120
  %124 = load i64*, i64** %14, align 8
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CHAR_RBRACKET, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i64*, i64** %14, align 8
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CHAR_EOS, align 8
  %132 = icmp ne i64 %130, %131
  br label %133

133:                                              ; preds = %128, %123
  %134 = phi i1 [ false, %123 ], [ %132, %128 ]
  br i1 %134, label %135, label %139

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %135
  %137 = load i64*, i64** %14, align 8
  %138 = getelementptr inbounds i64, i64* %137, i32 1
  store i64* %138, i64** %14, align 8
  br label %123

139:                                              ; preds = %133
  %140 = load i64*, i64** %14, align 8
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @CHAR_EOS, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i64*, i64** %15, align 8
  store i64* %145, i64** %14, align 8
  br label %146

146:                                              ; preds = %144, %139
  br label %198

147:                                              ; preds = %117
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %198

150:                                              ; preds = %117
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %10, align 4
  br label %198

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %117, %156
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i64*, i64** %14, align 8
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 131
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %198

165:                                              ; preds = %160, %157
  %166 = load i64*, i64** %12, align 8
  store i64* %166, i64** %11, align 8
  br label %167

167:                                              ; preds = %172, %165
  %168 = load i64*, i64** %15, align 8
  %169 = load i64*, i64** %14, align 8
  %170 = icmp ult i64* %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  br label %172

172:                                              ; preds = %171
  %173 = load i64*, i64** %15, align 8
  %174 = getelementptr inbounds i64, i64* %173, i32 1
  store i64* %174, i64** %15, align 8
  %175 = load i64, i64* %173, align 8
  %176 = load i64*, i64** %11, align 8
  %177 = getelementptr inbounds i64, i64* %176, i32 1
  store i64* %177, i64** %11, align 8
  store i64 %175, i64* %176, align 8
  br label %167

178:                                              ; preds = %167
  %179 = load i64*, i64** %13, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 1
  store i64* %180, i64** %15, align 8
  br label %181

181:                                              ; preds = %189, %178
  %182 = load i64*, i64** %15, align 8
  %183 = getelementptr inbounds i64, i64* %182, i32 1
  store i64* %183, i64** %15, align 8
  %184 = load i64, i64* %182, align 8
  %185 = load i64*, i64** %11, align 8
  %186 = getelementptr inbounds i64, i64* %185, i32 1
  store i64* %186, i64** %11, align 8
  store i64 %184, i64* %185, align 8
  %187 = load i64, i64* @CHAR_EOS, align 8
  %188 = icmp ne i64 %184, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %181

190:                                              ; preds = %181
  %191 = load i32*, i32** %8, align 8
  %192 = call i32 @globexp1(i64* %23, i32* %191)
  %193 = load i32*, i32** %9, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i64*, i64** %14, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 1
  store i64* %195, i64** %15, align 8
  br label %196

196:                                              ; preds = %190
  br label %198

197:                                              ; preds = %117
  br label %198

198:                                              ; preds = %197, %196, %164, %153, %147, %146
  br label %199

199:                                              ; preds = %198
  %200 = load i64*, i64** %14, align 8
  %201 = getelementptr inbounds i64, i64* %200, i32 1
  store i64* %201, i64** %14, align 8
  br label %113

202:                                              ; preds = %113
  %203 = load i32*, i32** %9, align 8
  store i32 0, i32* %203, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %204

204:                                              ; preds = %202, %107
  %205 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @glob0(i64*, i32*) #2

declare dso_local i32 @globexp1(i64*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
