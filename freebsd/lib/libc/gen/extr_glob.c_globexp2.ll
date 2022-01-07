; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_globexp2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_globexp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glob_limit = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@EOS = common dso_local global i64 0, align 8
@RBRACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i32*, %struct.glob_limit*)* @globexp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @globexp2(i64* %0, i64* %1, i32* %2, %struct.glob_limit* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.glob_limit*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.glob_limit* %3, %struct.glob_limit** %9, align 8
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %18, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %19, align 8
  store i64* %24, i64** %12, align 8
  %25 = load i64*, i64** %7, align 8
  store i64* %25, i64** %15, align 8
  br label %26

26:                                               ; preds = %31, %4
  %27 = load i64*, i64** %15, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = icmp ne i64* %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = load i64*, i64** %15, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %15, align 8
  %34 = load i64, i64* %32, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %12, align 8
  store i64 %34, i64* %35, align 8
  br label %26

37:                                               ; preds = %26
  %38 = load i64, i64* @EOS, align 8
  %39 = load i64*, i64** %12, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64*, i64** %12, align 8
  store i64* %40, i64** %13, align 8
  store i32 0, i32* %10, align 4
  %41 = load i64*, i64** %6, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %6, align 8
  store i64* %42, i64** %14, align 8
  br label %43

43:                                               ; preds = %100, %37
  %44 = load i64*, i64** %14, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EOS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %103

48:                                               ; preds = %43
  %49 = load i64*, i64** %14, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 129
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load i64*, i64** %14, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %14, align 8
  store i64* %53, i64** %15, align 8
  br label %55

55:                                               ; preds = %68, %52
  %56 = load i64*, i64** %14, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RBRACKET, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i64*, i64** %14, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EOS, align 8
  %64 = icmp ne i64 %62, %63
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67
  %69 = load i64*, i64** %14, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %14, align 8
  br label %55

71:                                               ; preds = %65
  %72 = load i64*, i64** %14, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EOS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i64*, i64** %15, align 8
  store i64* %77, i64** %14, align 8
  br label %78

78:                                               ; preds = %76, %71
  br label %99

79:                                               ; preds = %48
  %80 = load i64*, i64** %14, align 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 130
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %98

86:                                               ; preds = %79
  %87 = load i64*, i64** %14, align 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 128
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %103

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %86
  br label %98

98:                                               ; preds = %97, %83
  br label %99

99:                                               ; preds = %98, %78
  br label %100

100:                                              ; preds = %99
  %101 = load i64*, i64** %14, align 8
  %102 = getelementptr inbounds i64, i64* %101, i32 1
  store i64* %102, i64** %14, align 8
  br label %43

103:                                              ; preds = %93, %43
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load i64*, i64** %14, align 8
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @EOS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %106, %103
  %112 = load i64*, i64** %7, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.glob_limit*, %struct.glob_limit** %9, align 8
  %115 = call i32 @glob0(i64* %112, i32* %113, %struct.glob_limit* %114, i32* null)
  store i32 %115, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %213

116:                                              ; preds = %106
  store i32 0, i32* %10, align 4
  %117 = load i64*, i64** %6, align 8
  store i64* %117, i64** %15, align 8
  store i64* %117, i64** %17, align 8
  br label %118

118:                                              ; preds = %209, %116
  %119 = load i64*, i64** %15, align 8
  %120 = load i64*, i64** %14, align 8
  %121 = icmp ule i64* %119, %120
  br i1 %121, label %122, label %212

122:                                              ; preds = %118
  %123 = load i64*, i64** %15, align 8
  %124 = load i64, i64* %123, align 8
  switch i64 %124, label %207 [
    i64 129, label %125
    i64 130, label %152
    i64 128, label %155
    i64 131, label %162
  ]

125:                                              ; preds = %122
  %126 = load i64*, i64** %15, align 8
  %127 = getelementptr inbounds i64, i64* %126, i32 1
  store i64* %127, i64** %15, align 8
  store i64* %126, i64** %16, align 8
  br label %128

128:                                              ; preds = %141, %125
  %129 = load i64*, i64** %15, align 8
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @RBRACKET, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i64*, i64** %15, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @EOS, align 8
  %137 = icmp ne i64 %135, %136
  br label %138

138:                                              ; preds = %133, %128
  %139 = phi i1 [ false, %128 ], [ %137, %133 ]
  br i1 %139, label %140, label %144

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140
  %142 = load i64*, i64** %15, align 8
  %143 = getelementptr inbounds i64, i64* %142, i32 1
  store i64* %143, i64** %15, align 8
  br label %128

144:                                              ; preds = %138
  %145 = load i64*, i64** %15, align 8
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @EOS, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i64*, i64** %16, align 8
  store i64* %150, i64** %15, align 8
  br label %151

151:                                              ; preds = %149, %144
  br label %208

152:                                              ; preds = %122
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %208

155:                                              ; preds = %122
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %10, align 4
  br label %208

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %122, %161
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i64*, i64** %15, align 8
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 131
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %208

170:                                              ; preds = %165, %162
  %171 = load i64*, i64** %13, align 8
  store i64* %171, i64** %12, align 8
  br label %172

172:                                              ; preds = %177, %170
  %173 = load i64*, i64** %17, align 8
  %174 = load i64*, i64** %15, align 8
  %175 = icmp ult i64* %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  br label %177

177:                                              ; preds = %176
  %178 = load i64*, i64** %17, align 8
  %179 = getelementptr inbounds i64, i64* %178, i32 1
  store i64* %179, i64** %17, align 8
  %180 = load i64, i64* %178, align 8
  %181 = load i64*, i64** %12, align 8
  %182 = getelementptr inbounds i64, i64* %181, i32 1
  store i64* %182, i64** %12, align 8
  store i64 %180, i64* %181, align 8
  br label %172

183:                                              ; preds = %172
  %184 = load i64*, i64** %14, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 1
  store i64* %185, i64** %17, align 8
  br label %186

186:                                              ; preds = %194, %183
  %187 = load i64*, i64** %17, align 8
  %188 = getelementptr inbounds i64, i64* %187, i32 1
  store i64* %188, i64** %17, align 8
  %189 = load i64, i64* %187, align 8
  %190 = load i64*, i64** %12, align 8
  %191 = getelementptr inbounds i64, i64* %190, i32 1
  store i64* %191, i64** %12, align 8
  store i64 %189, i64* %190, align 8
  %192 = load i64, i64* @EOS, align 8
  %193 = icmp ne i64 %189, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %186

195:                                              ; preds = %186
  %196 = load i32*, i32** %8, align 8
  %197 = load %struct.glob_limit*, %struct.glob_limit** %9, align 8
  %198 = call i32 @globexp1(i64* %24, i32* %196, %struct.glob_limit* %197)
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i32, i32* %11, align 4
  store i32 %202, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %213

203:                                              ; preds = %195
  %204 = load i64*, i64** %15, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 1
  store i64* %205, i64** %17, align 8
  br label %206

206:                                              ; preds = %203
  br label %208

207:                                              ; preds = %122
  br label %208

208:                                              ; preds = %207, %206, %169, %158, %152, %151
  br label %209

209:                                              ; preds = %208
  %210 = load i64*, i64** %15, align 8
  %211 = getelementptr inbounds i64, i64* %210, i32 1
  store i64* %211, i64** %15, align 8
  br label %118

212:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %213

213:                                              ; preds = %212, %201, %111
  %214 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @glob0(i64*, i32*, %struct.glob_limit*, i32*) #2

declare dso_local i32 @globexp1(i64*, i32*, %struct.glob_limit*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
