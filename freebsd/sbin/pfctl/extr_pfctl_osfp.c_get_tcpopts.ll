; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_get_tcpopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_get_tcpopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_DC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@PF_OSFP_MAX_OPTS = common dso_local global i32 0, align 4
@PF_OSFP_TCPOPT_BITS = common dso_local global i32 0, align 4
@PF_OSFP_TCPOPT_NOP = common dso_local global i32 0, align 4
@PF_OSFP_TCPOPT_SACK = common dso_local global i32 0, align 4
@PF_OSFP_TCPOPT_WSCALE = common dso_local global i32 0, align 4
@PF_OSFP_TCPOPT_MSS = common dso_local global i32 0, align 4
@T_MOD = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%s:%d unknown character '%c' in %c TCP opt\0A\00", align 1
@PF_OSFP_TCPOPT_TS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s:%d unknown option to %c TCP opt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_tcpopts(i8* %0, i32 %1, i8* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i8* %0, i8** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load i32*, i32** %15, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %16, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %19, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @T_DC, align 4
  %30 = load i32*, i32** %20, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %17, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @T_DC, align 4
  %33 = load i32*, i32** %18, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %21, align 8
  store i32 0, i32* %34, align 4
  %35 = load i8*, i8** %14, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  br label %251

39:                                               ; preds = %10
  store i32 0, i32* %22, align 4
  br label %40

40:                                               ; preds = %247, %39
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* %22, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PF_OSFP_MAX_OPTS, align 4
  %52 = icmp slt i32 %50, %51
  br label %53

53:                                               ; preds = %48, %40
  %54 = phi i1 [ false, %40 ], [ %52, %48 ]
  br i1 %54, label %55, label %250

55:                                               ; preds = %53
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* %22, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %22, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @toupper(i8 signext %61)
  store i32 %62, i32* %23, align 4
  switch i32 %62, label %220 [
    i32 78, label %63
    i32 83, label %63
    i32 87, label %78
    i32 77, label %78
    i32 84, label %200
  ]

63:                                               ; preds = %55, %55
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PF_OSFP_TCPOPT_BITS, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %23, align 4
  %69 = icmp eq i32 %68, 78
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @PF_OSFP_TCPOPT_NOP, align 4
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @PF_OSFP_TCPOPT_SACK, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = or i32 %67, %75
  %77 = load i32*, i32** %15, align 8
  store i32 %76, i32* %77, align 4
  br label %220

78:                                               ; preds = %55, %55
  %79 = load i32, i32* %23, align 4
  %80 = icmp eq i32 %79, 87
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %19, align 8
  store i32* %82, i32** %25, align 8
  %83 = load i32*, i32** %20, align 8
  store i32* %83, i32** %24, align 8
  br label %87

84:                                               ; preds = %78
  %85 = load i32*, i32** %17, align 8
  store i32* %85, i32** %25, align 8
  %86 = load i32*, i32** %18, align 8
  store i32* %86, i32** %24, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32*, i32** %25, align 8
  store i32 0, i32* %88, align 4
  %89 = load i32*, i32** %24, align 8
  store i32 0, i32* %89, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PF_OSFP_TCPOPT_BITS, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %23, align 4
  %95 = icmp eq i32 %94, 87
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @PF_OSFP_TCPOPT_WSCALE, align 4
  br label %100

98:                                               ; preds = %87
  %99 = load i32, i32* @PF_OSFP_TCPOPT_MSS, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = or i32 %93, %101
  %103 = load i32*, i32** %15, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = load i32, i32* %22, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 42
  br i1 %110, label %111, label %134

111:                                              ; preds = %100
  %112 = load i8*, i8** %14, align 8
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %111
  %121 = load i8*, i8** %14, align 8
  %122 = load i32, i32* %22, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 44
  br i1 %128, label %129, label %134

129:                                              ; preds = %120, %111
  %130 = load i32, i32* @T_DC, align 4
  %131 = load i32*, i32** %24, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %22, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %22, align 4
  br label %220

134:                                              ; preds = %120, %100
  %135 = load i8*, i8** %14, align 8
  %136 = load i32, i32* %22, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 37
  br i1 %141, label %142, label %147

142:                                              ; preds = %134
  %143 = load i32, i32* @T_MOD, align 4
  %144 = load i32*, i32** %24, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %22, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %22, align 4
  br label %147

147:                                              ; preds = %142, %134
  br label %148

148:                                              ; preds = %197, %147
  %149 = load i8*, i8** %14, align 8
  %150 = load i32, i32* %22, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = call i32 @isdigit(i8 signext %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %148
  %157 = load i32, i32* @stderr, align 4
  %158 = load i8*, i8** %12, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i8*, i8** %14, align 8
  %161 = load i32, i32* %22, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = load i32, i32* %23, align 4
  %166 = call i32 (i32, i8*, i8*, i32, i8, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %158, i32 %159, i8 signext %164, i32 %165)
  store i32 1, i32* %11, align 4
  br label %251

167:                                              ; preds = %148
  %168 = load i32*, i32** %25, align 8
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %169, 10
  %171 = load i8*, i8** %14, align 8
  %172 = load i32, i32* %22, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %22, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = add nsw i32 %170, %177
  %179 = sub nsw i32 %178, 48
  %180 = load i32*, i32** %25, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %167
  %182 = load i8*, i8** %14, align 8
  %183 = load i32, i32* %22, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 44
  br i1 %188, label %189, label %197

189:                                              ; preds = %181
  %190 = load i8*, i8** %14, align 8
  %191 = load i32, i32* %22, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 0
  br label %197

197:                                              ; preds = %189, %181
  %198 = phi i1 [ false, %181 ], [ %196, %189 ]
  br i1 %198, label %148, label %199

199:                                              ; preds = %197
  br label %220

200:                                              ; preds = %55
  %201 = load i8*, i8** %14, align 8
  %202 = load i32, i32* %22, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 48
  br i1 %207, label %208, label %212

208:                                              ; preds = %200
  %209 = load i32*, i32** %21, align 8
  store i32 1, i32* %209, align 4
  %210 = load i32, i32* %22, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %22, align 4
  br label %212

212:                                              ; preds = %208, %200
  %213 = load i32*, i32** %15, align 8
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @PF_OSFP_TCPOPT_BITS, align 4
  %216 = shl i32 %214, %215
  %217 = load i32, i32* @PF_OSFP_TCPOPT_TS, align 4
  %218 = or i32 %216, %217
  %219 = load i32*, i32** %15, align 8
  store i32 %218, i32* %219, align 4
  br label %220

220:                                              ; preds = %55, %212, %199, %129, %74
  %221 = load i32*, i32** %16, align 8
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  %224 = load i8*, i8** %14, align 8
  %225 = load i32, i32* %22, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %220
  br label %250

232:                                              ; preds = %220
  %233 = load i8*, i8** %14, align 8
  %234 = load i32, i32* %22, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp ne i32 %238, 44
  br i1 %239, label %240, label %247

240:                                              ; preds = %232
  %241 = load i32, i32* @stderr, align 4
  %242 = load i8*, i8** %12, align 8
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %23, align 4
  %245 = trunc i32 %244 to i8
  %246 = call i32 (i32, i8*, i8*, i32, i8, ...) @fprintf(i32 %241, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %242, i32 %243, i8 signext %245)
  store i32 1, i32* %11, align 4
  br label %251

247:                                              ; preds = %232
  %248 = load i32, i32* %22, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %22, align 4
  br label %40

250:                                              ; preds = %231, %53
  store i32 0, i32* %11, align 4
  br label %251

251:                                              ; preds = %250, %240, %156, %38
  %252 = load i32, i32* %11, align 4
  ret i32 %252
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @toupper(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
