; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_getopt.c_AcpiGetopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_getopt.c_AcpiGetopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CurrentCharPtr = common dso_local global i32 0, align 4
@AcpiGbl_Optind = common dso_local global i32 0, align 4
@ACPI_OPT_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Illegal option: -\00", align 1
@AcpiGbl_Optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Option requires an argument: -\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@AcpiGbl_SubOptChar = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Option requires a single-character suboption: -\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiGetopt(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @CurrentCharPtr, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %52

12:                                               ; preds = %3
  %13 = load i32, i32* @AcpiGbl_Optind, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = load i8**, i8*** %6, align 8
  %18 = load i32, i32* @AcpiGbl_Optind, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 45
  br i1 %25, label %36, label %26

26:                                               ; preds = %16
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32, i32* @AcpiGbl_Optind, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26, %16, %12
  %37 = load i32, i32* @ACPI_OPT_END, align 4
  store i32 %37, i32* %4, align 4
  br label %274

38:                                               ; preds = %26
  %39 = load i8**, i8*** %6, align 8
  %40 = load i32, i32* @AcpiGbl_Optind, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @AcpiGbl_Optind, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @AcpiGbl_Optind, align 4
  %49 = load i32, i32* @ACPI_OPT_END, align 4
  store i32 %49, i32* %4, align 4
  br label %274

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i8**, i8*** %6, align 8
  %54 = load i32, i32* @AcpiGbl_Optind, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @CurrentCharPtr, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 58
  br i1 %64, label %70, label %65

65:                                               ; preds = %52
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i8* @strchr(i8* %66, i32 %67)
  store i8* %68, i8** %9, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %89

70:                                               ; preds = %65, %52
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ACPI_OPTION_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i8**, i8*** %6, align 8
  %74 = load i32, i32* @AcpiGbl_Optind, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @CurrentCharPtr, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @CurrentCharPtr, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %70
  %86 = load i32, i32* @AcpiGbl_Optind, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @AcpiGbl_Optind, align 4
  store i32 1, i32* @CurrentCharPtr, align 4
  br label %88

88:                                               ; preds = %85, %70
  store i32 63, i32* %4, align 4
  br label %274

89:                                               ; preds = %65
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 58
  br i1 %94, label %95, label %136

95:                                               ; preds = %89
  %96 = load i8**, i8*** %6, align 8
  %97 = load i32, i32* @AcpiGbl_Optind, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @CurrentCharPtr, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %95
  %109 = load i8**, i8*** %6, align 8
  %110 = load i32, i32* @AcpiGbl_Optind, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @AcpiGbl_Optind, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8*, i8** %109, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* @CurrentCharPtr, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8* %118, i8** @AcpiGbl_Optarg, align 8
  br label %135

119:                                              ; preds = %95
  %120 = load i32, i32* @AcpiGbl_Optind, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @AcpiGbl_Optind, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @ACPI_OPTION_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  store i32 1, i32* @CurrentCharPtr, align 4
  store i32 63, i32* %4, align 4
  br label %274

127:                                              ; preds = %119
  %128 = load i8**, i8*** %6, align 8
  %129 = load i32, i32* @AcpiGbl_Optind, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @AcpiGbl_Optind, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** @AcpiGbl_Optarg, align 8
  br label %134

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %108
  store i32 1, i32* @CurrentCharPtr, align 4
  br label %272

136:                                              ; preds = %89
  %137 = load i8*, i8** %9, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 43
  br i1 %140, label %141, label %180

141:                                              ; preds = %136
  %142 = load i8**, i8*** %6, align 8
  %143 = load i32, i32* @AcpiGbl_Optind, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* @CurrentCharPtr, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %141
  %155 = load i8**, i8*** %6, align 8
  %156 = load i32, i32* @AcpiGbl_Optind, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* @AcpiGbl_Optind, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* @CurrentCharPtr, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  store i8* %164, i8** @AcpiGbl_Optarg, align 8
  br label %179

165:                                              ; preds = %141
  %166 = load i32, i32* @AcpiGbl_Optind, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @AcpiGbl_Optind, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store i8* null, i8** @AcpiGbl_Optarg, align 8
  br label %178

171:                                              ; preds = %165
  %172 = load i8**, i8*** %6, align 8
  %173 = load i32, i32* @AcpiGbl_Optind, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* @AcpiGbl_Optind, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8*, i8** %172, i64 %175
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** @AcpiGbl_Optarg, align 8
  br label %178

178:                                              ; preds = %171, %170
  br label %179

179:                                              ; preds = %178, %154
  store i32 1, i32* @CurrentCharPtr, align 4
  br label %271

180:                                              ; preds = %136
  %181 = load i8*, i8** %9, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 94
  br i1 %184, label %185, label %215

185:                                              ; preds = %180
  %186 = load i8**, i8*** %6, align 8
  %187 = load i32, i32* @AcpiGbl_Optind, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* @CurrentCharPtr, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %185
  %199 = load i8**, i8*** %6, align 8
  %200 = load i32, i32* @AcpiGbl_Optind, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = load i32, i32* @CurrentCharPtr, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8* %207, i8** @AcpiGbl_Optarg, align 8
  br label %209

208:                                              ; preds = %185
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** @AcpiGbl_Optarg, align 8
  br label %209

209:                                              ; preds = %208, %198
  %210 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 0
  %212 = load i8, i8* %211, align 1
  store i8 %212, i8* @AcpiGbl_SubOptChar, align 1
  %213 = load i32, i32* @AcpiGbl_Optind, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* @AcpiGbl_Optind, align 4
  store i32 1, i32* @CurrentCharPtr, align 4
  br label %270

215:                                              ; preds = %180
  %216 = load i8*, i8** %9, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 124
  br i1 %219, label %220, label %252

220:                                              ; preds = %215
  %221 = load i8**, i8*** %6, align 8
  %222 = load i32, i32* @AcpiGbl_Optind, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* @CurrentCharPtr, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %220
  %234 = load i8**, i8*** %6, align 8
  %235 = load i32, i32* @AcpiGbl_Optind, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = load i32, i32* @CurrentCharPtr, align 4
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  store i8* %242, i8** @AcpiGbl_Optarg, align 8
  br label %246

243:                                              ; preds = %220
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @ACPI_OPTION_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %244)
  store i32 1, i32* @CurrentCharPtr, align 4
  store i32 63, i32* %4, align 4
  br label %274

246:                                              ; preds = %233
  %247 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 0
  %249 = load i8, i8* %248, align 1
  store i8 %249, i8* @AcpiGbl_SubOptChar, align 1
  %250 = load i32, i32* @AcpiGbl_Optind, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* @AcpiGbl_Optind, align 4
  store i32 1, i32* @CurrentCharPtr, align 4
  br label %269

252:                                              ; preds = %215
  %253 = load i8**, i8*** %6, align 8
  %254 = load i32, i32* @AcpiGbl_Optind, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %253, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = load i32, i32* @CurrentCharPtr, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* @CurrentCharPtr, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %257, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %252
  store i32 1, i32* @CurrentCharPtr, align 4
  %266 = load i32, i32* @AcpiGbl_Optind, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* @AcpiGbl_Optind, align 4
  br label %268

268:                                              ; preds = %265, %252
  store i8* null, i8** @AcpiGbl_Optarg, align 8
  br label %269

269:                                              ; preds = %268, %246
  br label %270

270:                                              ; preds = %269, %209
  br label %271

271:                                              ; preds = %270, %179
  br label %272

272:                                              ; preds = %271, %135
  %273 = load i32, i32* %8, align 4
  store i32 %273, i32* %4, align 4
  br label %274

274:                                              ; preds = %272, %243, %124, %88, %46, %36
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @ACPI_OPTION_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
