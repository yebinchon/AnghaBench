; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_parse_units.c_parse_something.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_parse_units.c_parse_something.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.units = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.units*, i8*, i32 (i32, i32, i32)*, i32, i32)* @parse_something to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_something(i8* %0, %struct.units* %1, i8* %2, i32 (i32, i32, i32)* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.units*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i32, i32, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.units*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.units*, align 8
  %21 = alloca %struct.units*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.units* %1, %struct.units** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 (i32, i32, i32)* %3, i32 (i32, i32, i32)** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %6
  %29 = load %struct.units*, %struct.units** %9, align 8
  store %struct.units* %29, %struct.units** %17, align 8
  br label %30

30:                                               ; preds = %47, %28
  %31 = load %struct.units*, %struct.units** %17, align 8
  %32 = getelementptr inbounds %struct.units, %struct.units* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.units*, %struct.units** %17, align 8
  %37 = getelementptr inbounds %struct.units, %struct.units* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @strcasecmp(i32* %38, i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.units*, %struct.units** %17, align 8
  %44 = getelementptr inbounds %struct.units, %struct.units* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %16, align 4
  br label %50

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.units*, %struct.units** %17, align 8
  %49 = getelementptr inbounds %struct.units, %struct.units* %48, i32 1
  store %struct.units* %49, %struct.units** %17, align 8
  br label %30

50:                                               ; preds = %42, %30
  %51 = load %struct.units*, %struct.units** %17, align 8
  %52 = getelementptr inbounds %struct.units, %struct.units* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 -1, i32* %7, align 4
  br label %241

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %6
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %14, align 8
  br label %59

59:                                               ; preds = %238, %57
  %60 = load i8*, i8** %14, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %239

63:                                               ; preds = %59
  store i32 0, i32* %24, align 4
  br label %64

64:                                               ; preds = %76, %63
  %65 = load i8*, i8** %14, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @isspace(i8 zeroext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %14, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 44
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i1 [ true, %64 ], [ %73, %69 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %14, align 8
  br label %64

79:                                               ; preds = %74
  %80 = load i8*, i8** %14, align 8
  %81 = call i32 @strtol(i8* %80, i8** %19, i32 0)
  store i32 %81, i32* %18, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  store i32 0, i32* %18, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  store i32 -1, i32* %7, align 4
  br label %241

89:                                               ; preds = %85
  store i32 1, i32* %24, align 4
  br label %90

90:                                               ; preds = %89, %79
  %91 = load i8*, i8** %19, align 8
  store i8* %91, i8** %14, align 8
  br label %92

92:                                               ; preds = %97, %90
  %93 = load i8*, i8** %14, align 8
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @isspace(i8 zeroext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %14, align 8
  br label %92

100:                                              ; preds = %92
  %101 = load i8*, i8** %14, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %11, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %16, align 4
  %110 = call i32 %106(i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %7, align 4
  br label %241

115:                                              ; preds = %105
  br label %239

116:                                              ; preds = %100
  %117 = load i8*, i8** %14, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 43
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i8*, i8** %14, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %14, align 8
  store i32 1, i32* %18, align 4
  br label %133

124:                                              ; preds = %116
  %125 = load i8*, i8** %14, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 45
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i8*, i8** %14, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %14, align 8
  store i32 -1, i32* %18, align 4
  br label %132

132:                                              ; preds = %129, %124
  br label %133

133:                                              ; preds = %132, %121
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %24, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* %18, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 1, i32* %18, align 4
  br label %141

141:                                              ; preds = %140, %137, %134
  %142 = load i8*, i8** %14, align 8
  %143 = call i64 @strcspn(i8* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %143, i64* %22, align 8
  store i32 0, i32* %23, align 4
  store %struct.units* null, %struct.units** %21, align 8
  %144 = load i64, i64* %22, align 8
  %145 = icmp ugt i64 %144, 1
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load i8*, i8** %14, align 8
  %148 = load i64, i64* %22, align 8
  %149 = sub i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 115
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load i64, i64* %22, align 8
  %156 = add i64 %155, -1
  store i64 %156, i64* %22, align 8
  br label %157

157:                                              ; preds = %154, %146, %141
  %158 = load %struct.units*, %struct.units** %9, align 8
  store %struct.units* %158, %struct.units** %20, align 8
  br label %159

159:                                              ; preds = %201, %157
  %160 = load %struct.units*, %struct.units** %20, align 8
  %161 = getelementptr inbounds %struct.units, %struct.units* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %204

164:                                              ; preds = %159
  %165 = load i8*, i8** %14, align 8
  %166 = load %struct.units*, %struct.units** %20, align 8
  %167 = getelementptr inbounds %struct.units, %struct.units* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* %22, align 8
  %170 = call i64 @strncasecmp(i8* %165, i32* %168, i64 %169)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %200

172:                                              ; preds = %164
  %173 = load i64, i64* %22, align 8
  %174 = load %struct.units*, %struct.units** %20, align 8
  %175 = getelementptr inbounds %struct.units, %struct.units* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = call i64 @strlen(i32* %176)
  %178 = icmp eq i64 %173, %177
  br i1 %178, label %179, label %195

179:                                              ; preds = %172
  %180 = load i64, i64* %22, align 8
  %181 = load i8*, i8** %14, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 %180
  store i8* %182, i8** %14, align 8
  %183 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %11, align 8
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* %18, align 4
  %186 = load %struct.units*, %struct.units** %20, align 8
  %187 = getelementptr inbounds %struct.units, %struct.units* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 %183(i32 %184, i32 %185, i32 %188)
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %179
  %193 = load i32, i32* %15, align 4
  store i32 %193, i32* %7, align 4
  br label %241

194:                                              ; preds = %179
  br label %204

195:                                              ; preds = %172
  %196 = load i32, i32* %23, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %23, align 4
  %198 = load %struct.units*, %struct.units** %20, align 8
  store %struct.units* %198, %struct.units** %21, align 8
  br label %199

199:                                              ; preds = %195
  br label %200

200:                                              ; preds = %199, %164
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.units*, %struct.units** %20, align 8
  %203 = getelementptr inbounds %struct.units, %struct.units* %202, i32 1
  store %struct.units* %203, %struct.units** %20, align 8
  br label %159

204:                                              ; preds = %194, %159
  %205 = load %struct.units*, %struct.units** %20, align 8
  %206 = getelementptr inbounds %struct.units, %struct.units* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = icmp eq i32* %207, null
  br i1 %208, label %209, label %230

209:                                              ; preds = %204
  %210 = load i32, i32* %23, align 4
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %228

212:                                              ; preds = %209
  %213 = load i64, i64* %22, align 8
  %214 = load i8*, i8** %14, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 %213
  store i8* %215, i8** %14, align 8
  %216 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %11, align 8
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %18, align 4
  %219 = load %struct.units*, %struct.units** %21, align 8
  %220 = getelementptr inbounds %struct.units, %struct.units* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 %216(i32 %217, i32 %218, i32 %221)
  store i32 %222, i32* %15, align 4
  %223 = load i32, i32* %15, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %212
  %226 = load i32, i32* %15, align 4
  store i32 %226, i32* %7, align 4
  br label %241

227:                                              ; preds = %212
  br label %229

228:                                              ; preds = %209
  store i32 -1, i32* %7, align 4
  br label %241

229:                                              ; preds = %227
  br label %230

230:                                              ; preds = %229, %204
  %231 = load i8*, i8** %14, align 8
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 115
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i8*, i8** %14, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %14, align 8
  br label %238

238:                                              ; preds = %235, %230
  br label %59

239:                                              ; preds = %115, %59
  %240 = load i32, i32* %15, align 4
  store i32 %240, i32* %7, align 4
  br label %241

241:                                              ; preds = %239, %228, %225, %192, %113, %88, %55
  %242 = load i32, i32* %7, align 4
  ret i32 %242
}

declare dso_local i64 @strcasecmp(i32*, i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i32*, i64) #1

declare dso_local i64 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
