; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getopt_long.c_parse_long_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getopt_long.c_parse_long_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i64, i32*, i32 }

@place = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@PRINT_ERROR = common dso_local global i64 0, align 8
@ambig = common dso_local global i32 0, align 4
@optopt = common dso_local global i32 0, align 4
@BADCH = common dso_local global i32 0, align 4
@no_argument = common dso_local global i64 0, align 8
@noarg = common dso_local global i32 0, align 4
@BADARG = common dso_local global i32 0, align 4
@required_argument = common dso_local global i64 0, align 8
@optional_argument = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@recargstring = common dso_local global i32 0, align 4
@illoptstring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.option*, i32*, i32)* @parse_long_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_long_options(i8** %0, i8* %1, %struct.option* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.option*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.option* %2, %struct.option** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** @place, align 8
  store i8* %17, i8** %12, align 8
  store i32 -1, i32* %16, align 4
  %18 = load i32, i32* @optind, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @optind, align 4
  %20 = load i8*, i8** %12, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 61)
  store i8* %21, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %5
  %24 = load i8*, i8** %13, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  store i64 %28, i64* %14, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %13, align 8
  br label %34

31:                                               ; preds = %5
  %32 = load i8*, i8** %12, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %14, align 8
  br label %34

34:                                               ; preds = %31, %23
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %91, %34
  %36 = load %struct.option*, %struct.option** %9, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.option, %struct.option* %36, i64 %38
  %40 = getelementptr inbounds %struct.option, %struct.option* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %94

43:                                               ; preds = %35
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.option*, %struct.option** %9, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.option, %struct.option* %45, i64 %47
  %49 = getelementptr inbounds %struct.option, %struct.option* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i64 @strncmp(i8* %44, i8* %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %91

55:                                               ; preds = %43
  %56 = load %struct.option*, %struct.option** %9, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.option, %struct.option* %56, i64 %58
  %60 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = load i64, i64* %14, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %16, align 4
  br label %94

67:                                               ; preds = %55
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i64, i64* %14, align 8
  %72 = icmp eq i64 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %91

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %16, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %16, align 4
  br label %90

79:                                               ; preds = %74
  %80 = load i64, i64* @PRINT_ERROR, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* @ambig, align 4
  %84 = load i64, i64* %14, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 (i32, ...) @warnx(i32 %83, i32 %85, i8* %86)
  br label %88

88:                                               ; preds = %82, %79
  store i32 0, i32* @optopt, align 4
  %89 = load i32, i32* @BADCH, align 4
  store i32 %89, i32* %6, align 4
  br label %266

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %73, %54
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %35

94:                                               ; preds = %65, %35
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %217

97:                                               ; preds = %94
  %98 = load %struct.option*, %struct.option** %9, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.option, %struct.option* %98, i64 %100
  %102 = getelementptr inbounds %struct.option, %struct.option* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @no_argument, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %136

106:                                              ; preds = %97
  %107 = load i8*, i8** %13, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %136

109:                                              ; preds = %106
  %110 = load i64, i64* @PRINT_ERROR, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* @noarg, align 4
  %114 = load i64, i64* %14, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 (i32, ...) @warnx(i32 %113, i32 %115, i8* %116)
  br label %118

118:                                              ; preds = %112, %109
  %119 = load %struct.option*, %struct.option** %9, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.option, %struct.option* %119, i64 %121
  %123 = getelementptr inbounds %struct.option, %struct.option* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %118
  %127 = load %struct.option*, %struct.option** %9, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.option, %struct.option* %127, i64 %129
  %131 = getelementptr inbounds %struct.option, %struct.option* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* @optopt, align 4
  br label %134

133:                                              ; preds = %118
  store i32 0, i32* @optopt, align 4
  br label %134

134:                                              ; preds = %133, %126
  %135 = load i32, i32* @BADARG, align 4
  store i32 %135, i32* %6, align 4
  br label %266

136:                                              ; preds = %106, %97
  %137 = load %struct.option*, %struct.option** %9, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.option, %struct.option* %137, i64 %139
  %141 = getelementptr inbounds %struct.option, %struct.option* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @required_argument, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %154, label %145

145:                                              ; preds = %136
  %146 = load %struct.option*, %struct.option** %9, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.option, %struct.option* %146, i64 %148
  %150 = getelementptr inbounds %struct.option, %struct.option* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @optional_argument, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %177

154:                                              ; preds = %145, %136
  %155 = load i8*, i8** %13, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i8*, i8** %13, align 8
  store i8* %158, i8** @optarg, align 8
  br label %176

159:                                              ; preds = %154
  %160 = load %struct.option*, %struct.option** %9, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.option, %struct.option* %160, i64 %162
  %164 = getelementptr inbounds %struct.option, %struct.option* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @required_argument, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %159
  %169 = load i8**, i8*** %7, align 8
  %170 = load i32, i32* @optind, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @optind, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8*, i8** %169, i64 %172
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** @optarg, align 8
  br label %175

175:                                              ; preds = %168, %159
  br label %176

176:                                              ; preds = %175, %157
  br label %177

177:                                              ; preds = %176, %145
  %178 = load %struct.option*, %struct.option** %9, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.option, %struct.option* %178, i64 %180
  %182 = getelementptr inbounds %struct.option, %struct.option* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @required_argument, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %216

186:                                              ; preds = %177
  %187 = load i8*, i8** @optarg, align 8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %189, label %216

189:                                              ; preds = %186
  %190 = load i64, i64* @PRINT_ERROR, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32, i32* @recargstring, align 4
  %194 = load i8*, i8** %12, align 8
  %195 = call i32 (i32, ...) @warnx(i32 %193, i8* %194)
  br label %196

196:                                              ; preds = %192, %189
  %197 = load %struct.option*, %struct.option** %9, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.option, %struct.option* %197, i64 %199
  %201 = getelementptr inbounds %struct.option, %struct.option* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %211

204:                                              ; preds = %196
  %205 = load %struct.option*, %struct.option** %9, align 8
  %206 = load i32, i32* %16, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.option, %struct.option* %205, i64 %207
  %209 = getelementptr inbounds %struct.option, %struct.option* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* @optopt, align 4
  br label %212

211:                                              ; preds = %196
  store i32 0, i32* @optopt, align 4
  br label %212

212:                                              ; preds = %211, %204
  %213 = load i32, i32* @optind, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* @optind, align 4
  %215 = load i32, i32* @BADARG, align 4
  store i32 %215, i32* %6, align 4
  br label %266

216:                                              ; preds = %186, %177
  br label %232

217:                                              ; preds = %94
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* @optind, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* @optind, align 4
  store i32 -1, i32* %6, align 4
  br label %266

223:                                              ; preds = %217
  %224 = load i64, i64* @PRINT_ERROR, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i32, i32* @illoptstring, align 4
  %228 = load i8*, i8** %12, align 8
  %229 = call i32 (i32, ...) @warnx(i32 %227, i8* %228)
  br label %230

230:                                              ; preds = %226, %223
  store i32 0, i32* @optopt, align 4
  %231 = load i32, i32* @BADCH, align 4
  store i32 %231, i32* %6, align 4
  br label %266

232:                                              ; preds = %216
  %233 = load i32*, i32** %10, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load i32, i32* %16, align 4
  %237 = load i32*, i32** %10, align 8
  store i32 %236, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %232
  %239 = load %struct.option*, %struct.option** %9, align 8
  %240 = load i32, i32* %16, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.option, %struct.option* %239, i64 %241
  %243 = getelementptr inbounds %struct.option, %struct.option* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %259

246:                                              ; preds = %238
  %247 = load %struct.option*, %struct.option** %9, align 8
  %248 = load i32, i32* %16, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.option, %struct.option* %247, i64 %249
  %251 = getelementptr inbounds %struct.option, %struct.option* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.option*, %struct.option** %9, align 8
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.option, %struct.option* %253, i64 %255
  %257 = getelementptr inbounds %struct.option, %struct.option* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  store i32 %252, i32* %258, align 4
  store i32 0, i32* %6, align 4
  br label %266

259:                                              ; preds = %238
  %260 = load %struct.option*, %struct.option** %9, align 8
  %261 = load i32, i32* %16, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.option, %struct.option* %260, i64 %262
  %264 = getelementptr inbounds %struct.option, %struct.option* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  store i32 %265, i32* %6, align 4
  br label %266

266:                                              ; preds = %259, %246, %230, %220, %212, %134, %88
  %267 = load i32, i32* %6, align 4
  ret i32 %267
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @warnx(i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
