; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_pletter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_pletter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.termp = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i64, i64, i32, i32, i32 }

@PS_NEWPAGE = common dso_local global i32 0, align 4
@TERMTYPE_PS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%%%%Page: %zu %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"f%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"/Length %zu 0 R\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c">>\0Astream\0A\00", align 1
@PS_INLINE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"BT\0A/F%d %zu Tf\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%.3f %.3f Td\0A(\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %.3f\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@MAXCHAR = common dso_local global i32 0, align 4
@fonts = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i32)* @ps_pletter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_pletter(%struct.termp* %0, i32 %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PS_NEWPAGE, align 4
  %7 = load %struct.termp*, %struct.termp** %3, align 8
  %8 = getelementptr inbounds %struct.termp, %struct.termp* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %6, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %95

14:                                               ; preds = %2
  %15 = load i64, i64* @TERMTYPE_PS, align 8
  %16 = load %struct.termp*, %struct.termp** %3, align 8
  %17 = getelementptr inbounds %struct.termp, %struct.termp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load %struct.termp*, %struct.termp** %3, align 8
  %22 = load %struct.termp*, %struct.termp** %3, align 8
  %23 = getelementptr inbounds %struct.termp, %struct.termp* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = load %struct.termp*, %struct.termp** %3, align 8
  %29 = getelementptr inbounds %struct.termp, %struct.termp* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %33)
  %35 = load %struct.termp*, %struct.termp** %3, align 8
  %36 = load %struct.termp*, %struct.termp** %3, align 8
  %37 = getelementptr inbounds %struct.termp, %struct.termp* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %77

43:                                               ; preds = %14
  %44 = load %struct.termp*, %struct.termp** %3, align 8
  %45 = load %struct.termp*, %struct.termp** %3, align 8
  %46 = getelementptr inbounds %struct.termp, %struct.termp* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.termp*, %struct.termp** %3, align 8
  %51 = getelementptr inbounds %struct.termp, %struct.termp* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 4
  %56 = add nsw i32 %49, %55
  %57 = call i32 @pdf_obj(%struct.termp* %44, i32 %56)
  %58 = load %struct.termp*, %struct.termp** %3, align 8
  %59 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.termp*, %struct.termp** %3, align 8
  %61 = load %struct.termp*, %struct.termp** %3, align 8
  %62 = getelementptr inbounds %struct.termp, %struct.termp* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  %67 = load %struct.termp*, %struct.termp** %3, align 8
  %68 = getelementptr inbounds %struct.termp, %struct.termp* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 4
  %73 = add nsw i32 %66, %72
  %74 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.termp*, %struct.termp** %3, align 8
  %76 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %43, %20
  %78 = load %struct.termp*, %struct.termp** %3, align 8
  %79 = getelementptr inbounds %struct.termp, %struct.termp* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.termp*, %struct.termp** %3, align 8
  %84 = getelementptr inbounds %struct.termp, %struct.termp* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 9
  store i32 %82, i32* %86, align 8
  %87 = load i32, i32* @PS_NEWPAGE, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.termp*, %struct.termp** %3, align 8
  %90 = getelementptr inbounds %struct.termp, %struct.termp* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %88
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %77, %2
  %96 = load i32, i32* @PS_INLINE, align 4
  %97 = load %struct.termp*, %struct.termp** %3, align 8
  %98 = getelementptr inbounds %struct.termp, %struct.termp* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %96, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %182, label %104

104:                                              ; preds = %95
  %105 = load i64, i64* @TERMTYPE_PS, align 8
  %106 = load %struct.termp*, %struct.termp** %3, align 8
  %107 = getelementptr inbounds %struct.termp, %struct.termp* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %104
  %111 = load %struct.termp*, %struct.termp** %3, align 8
  %112 = load %struct.termp*, %struct.termp** %3, align 8
  %113 = getelementptr inbounds %struct.termp, %struct.termp* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.termp*, %struct.termp** %3, align 8
  %119 = getelementptr inbounds %struct.termp, %struct.termp* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %117, i32 %122)
  %124 = load %struct.termp*, %struct.termp** %3, align 8
  %125 = load %struct.termp*, %struct.termp** %3, align 8
  %126 = load %struct.termp*, %struct.termp** %3, align 8
  %127 = getelementptr inbounds %struct.termp, %struct.termp* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @AFM2PNT(%struct.termp* %125, i64 %130)
  %132 = load %struct.termp*, %struct.termp** %3, align 8
  %133 = load %struct.termp*, %struct.termp** %3, align 8
  %134 = getelementptr inbounds %struct.termp, %struct.termp* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @AFM2PNT(%struct.termp* %132, i64 %137)
  %139 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %131, i32 %138)
  br label %174

140:                                              ; preds = %104
  %141 = load %struct.termp*, %struct.termp** %3, align 8
  %142 = load %struct.termp*, %struct.termp** %3, align 8
  %143 = load %struct.termp*, %struct.termp** %3, align 8
  %144 = getelementptr inbounds %struct.termp, %struct.termp* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @AFM2PNT(%struct.termp* %142, i64 %147)
  %149 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  %150 = load %struct.termp*, %struct.termp** %3, align 8
  %151 = getelementptr inbounds %struct.termp, %struct.termp* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.termp*, %struct.termp** %3, align 8
  %156 = getelementptr inbounds %struct.termp, %struct.termp* %155, i32 0, i32 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %154, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %140
  %162 = load %struct.termp*, %struct.termp** %3, align 8
  %163 = load %struct.termp*, %struct.termp** %3, align 8
  %164 = load %struct.termp*, %struct.termp** %3, align 8
  %165 = getelementptr inbounds %struct.termp, %struct.termp* %164, i32 0, i32 1
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @AFM2PNT(%struct.termp* %163, i64 %168)
  %170 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %161, %140
  %172 = load %struct.termp*, %struct.termp** %3, align 8
  %173 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %110
  %175 = load i32, i32* @PS_INLINE, align 4
  %176 = load %struct.termp*, %struct.termp** %3, align 8
  %177 = getelementptr inbounds %struct.termp, %struct.termp* %176, i32 0, i32 1
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %175
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %174, %95
  %183 = load i32, i32* @PS_NEWPAGE, align 4
  %184 = load %struct.termp*, %struct.termp** %3, align 8
  %185 = getelementptr inbounds %struct.termp, %struct.termp* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %183, %188
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load i32, i32* %4, align 4
  switch i32 %194, label %198 [
    i32 40, label %195
    i32 41, label %195
    i32 92, label %195
  ]

195:                                              ; preds = %182, %182, %182
  %196 = load %struct.termp*, %struct.termp** %3, align 8
  %197 = call i32 @ps_putchar(%struct.termp* %196, i8 signext 92)
  br label %199

198:                                              ; preds = %182
  br label %199

199:                                              ; preds = %198, %195
  %200 = load %struct.termp*, %struct.termp** %3, align 8
  %201 = getelementptr inbounds %struct.termp, %struct.termp* %200, i32 0, i32 1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %5, align 4
  %206 = load i32, i32* %4, align 4
  %207 = icmp sle i32 %206, 32
  br i1 %207, label %213, label %208

208:                                              ; preds = %199
  %209 = load i32, i32* %4, align 4
  %210 = sub nsw i32 %209, 32
  %211 = load i32, i32* @MAXCHAR, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %208, %199
  store i32 32, i32* %4, align 4
  br label %214

214:                                              ; preds = %213, %208
  %215 = load %struct.termp*, %struct.termp** %3, align 8
  %216 = load i32, i32* %4, align 4
  %217 = trunc i32 %216 to i8
  %218 = call i32 @ps_putchar(%struct.termp* %215, i8 signext %217)
  %219 = load i32, i32* %4, align 4
  %220 = sub nsw i32 %219, 32
  store i32 %220, i32* %4, align 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fonts, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = load i32, i32* %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.termp*, %struct.termp** %3, align 8
  %233 = getelementptr inbounds %struct.termp, %struct.termp* %232, i32 0, i32 1
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = add i64 %236, %231
  store i64 %237, i64* %235, align 8
  ret void
}

declare dso_local i32 @ps_printf(%struct.termp*, i8*, ...) #1

declare dso_local i32 @pdf_obj(%struct.termp*, i32) #1

declare dso_local i32 @AFM2PNT(%struct.termp*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ps_putchar(%struct.termp*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
