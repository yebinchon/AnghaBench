; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_check_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_check_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun_disklabel = type { i64, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@SUN_VTOC_SANE = common dso_local global i64 0, align 8
@SUN_RAWPART = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"partition c is incorrect, must start at 0 and cover whole disk\00", align 1
@VTOC_BACKUP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"partition c must have tag \22backup\22\00", align 1
@SUN_NPART = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"partition %c extends past end of disk\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"only partition c is allowed to have tag \22backup\22\00", align 1
@VTOC_UNMNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"partition %c overlaps partition %c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun_disklabel*)* @check_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_label(%struct.sun_disklabel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sun_disklabel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sun_disklabel* %0, %struct.sun_disklabel** %3, align 8
  %13 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %14 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SUN_VTOC_SANE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %20 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %23 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %27 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  store i32 %29, i32* %4, align 4
  %30 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %31 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* @SUN_RAWPART, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %1
  %39 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %40 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %39, i32 0, i32 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* @SUN_RAWPART, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38, %1
  %49 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %259

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %55 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %54, i32 0, i32 5
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VTOC_BACKUP, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %259

64:                                               ; preds = %53, %50
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %255, %64
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @SUN_NPART, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %258

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %74 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72, %69
  br label %255

83:                                               ; preds = %72
  %84 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %85 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %84, i32 0, i32 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %94 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %98 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %96, %99
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %103 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %102, i32 0, i32 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %101, %109
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %83
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 97, %115
  %117 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  store i32 1, i32* %2, align 4
  br label %259

118:                                              ; preds = %83
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %123 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %122, i32 0, i32 5
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @VTOC_BACKUP, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %121
  %133 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %259

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %118
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %251, %135
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @SUN_NPART, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %254

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %169

143:                                              ; preds = %140
  %144 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %145 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %144, i32 0, i32 5
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @VTOC_UNMNT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %167, label %155

155:                                              ; preds = %143
  %156 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %157 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %156, i32 0, i32 5
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @VTOC_UNMNT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br label %167

167:                                              ; preds = %155, %143
  %168 = phi i1 [ true, %143 ], [ %166, %155 ]
  br label %169

169:                                              ; preds = %167, %140
  %170 = phi i1 [ false, %140 ], [ %168, %167 ]
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %188, label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %188, label %178

178:                                              ; preds = %174
  %179 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %180 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %179, i32 0, i32 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %178, %174, %169
  br label %251

189:                                              ; preds = %178
  %190 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %191 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %190, i32 0, i32 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %200 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %198, %201
  %203 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %204 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %202, %205
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %209 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %208, i32 0, i32 4
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %207, %215
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %5, align 4
  %219 = icmp sle i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %189
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp sge i32 %221, %222
  br i1 %223, label %240, label %224

224:                                              ; preds = %220, %189
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* %5, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %240, label %232

232:                                              ; preds = %228, %224
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %5, align 4
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %232
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %7, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %236, %228, %220
  %241 = load i32, i32* %11, align 4
  %242 = add nsw i32 97, %241
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 97, %243
  %245 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %242, i32 %244)
  %246 = load i32, i32* %10, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %240
  store i32 1, i32* %2, align 4
  br label %259

249:                                              ; preds = %240
  br label %250

250:                                              ; preds = %249, %236, %232
  br label %251

251:                                              ; preds = %250, %188
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %12, align 4
  br label %136

254:                                              ; preds = %136
  br label %255

255:                                              ; preds = %254, %82
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %11, align 4
  br label %65

258:                                              ; preds = %65
  store i32 0, i32* %2, align 4
  br label %259

259:                                              ; preds = %258, %248, %132, %114, %62, %48
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i32 @warnx(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
