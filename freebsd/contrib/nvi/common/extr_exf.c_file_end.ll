; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32, i64, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32 }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_22__*)* }

@FR_CURSORSET = common dso_local global i32 0, align 4
@FR_DONTDELETE = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"240|%s: remove\00", align 1
@FR_TMPFILE = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"241|%s: close\00", align 1
@F_RCV_NORM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"242|%s: remove\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"243|%s: remove\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_end(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %10 = icmp eq %struct.TYPE_21__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %6, align 8
  br label %15

15:                                               ; preds = %11, %3
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %219

22:                                               ; preds = %15
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %8, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %37 = load i32, i32* @FR_CURSORSET, align 4
  %38 = call i32 @F_SET(%struct.TYPE_21__* %36, i32 %37)
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %40 = load i32, i32* @FR_DONTDELETE, align 4
  %41 = call i64 @F_ISSET(%struct.TYPE_21__* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %96, label %43

43:                                               ; preds = %22
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %45, align 8
  %47 = icmp ne %struct.TYPE_21__* %46, null
  br i1 %47, label %48, label %96

48:                                               ; preds = %43
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  %52 = call i64 @unlink(%struct.TYPE_21__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = load i32, i32* @M_SYSERR, align 4
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = call i32 @msgq_str(%struct.TYPE_20__* %55, i32 %56, %struct.TYPE_21__* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = call i32 @free(%struct.TYPE_21__* %64)
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %67, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %69 = load i32, i32* @FR_TMPFILE, align 4
  %70 = call i64 @F_ISSET(%struct.TYPE_21__* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %61
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %79 = load i32, i32* @q, align 4
  %80 = call i32 @TAILQ_REMOVE(i32 %77, %struct.TYPE_21__* %78, i32 %79)
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 6
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = icmp ne %struct.TYPE_21__* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %72
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = call i32 @free(%struct.TYPE_21__* %88)
  br label %90

90:                                               ; preds = %85, %72
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %92 = call i32 @free(%struct.TYPE_21__* %91)
  br label %93

93:                                               ; preds = %90, %61
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %95, align 8
  br label %96

96:                                               ; preds = %93, %43, %22
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 7
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i64 (%struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*)** %100, align 8
  %102 = icmp ne i64 (%struct.TYPE_22__*)* %101, null
  br i1 %102, label %103, label %128

103:                                              ; preds = %96
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 7
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i64 (%struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*)** %107, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 7
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = call i64 %108(%struct.TYPE_22__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %103
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %119 = load i32, i32* @M_SYSERR, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 6
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = call i32 @msgq_str(%struct.TYPE_20__* %118, i32 %119, %struct.TYPE_21__* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  store i32 1, i32* %4, align 4
  br label %219

128:                                              ; preds = %114, %103, %96
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %131 = call i32 @log_end(%struct.TYPE_20__* %129, %struct.TYPE_21__* %130)
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %134 = call i32 @mark_end(%struct.TYPE_20__* %132, %struct.TYPE_21__* %133)
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %136 = load i32, i32* @F_RCV_NORM, align 4
  %137 = call i64 @F_ISSET(%struct.TYPE_21__* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %176, label %139

139:                                              ; preds = %128
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %141, align 8
  %143 = icmp ne %struct.TYPE_21__* %142, null
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %146, align 8
  %148 = call i64 @unlink(%struct.TYPE_21__* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %144
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %152 = load i32, i32* @M_SYSERR, align 4
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = call i32 @msgq_str(%struct.TYPE_20__* %151, i32 %152, %struct.TYPE_21__* %155, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %157

157:                                              ; preds = %150, %144, %139
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %159, align 8
  %161 = icmp ne %struct.TYPE_21__* %160, null
  br i1 %161, label %162, label %175

162:                                              ; preds = %157
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  %166 = call i64 @unlink(%struct.TYPE_21__* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %162
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %170 = load i32, i32* @M_SYSERR, align 4
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = call i32 @msgq_str(%struct.TYPE_20__* %169, i32 %170, %struct.TYPE_21__* %173, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %175

175:                                              ; preds = %168, %162, %157
  br label %176

176:                                              ; preds = %175, %128
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, -1
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @close(i32 %184)
  br label %186

186:                                              ; preds = %181, %176
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 5
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %188, align 8
  %190 = icmp ne %struct.TYPE_21__* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 5
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %193, align 8
  %195 = call i32 @free(%struct.TYPE_21__* %194)
  br label %196

196:                                              ; preds = %191, %186
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %198, align 8
  %200 = icmp ne %struct.TYPE_21__* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %203, align 8
  %205 = call i32 @free(%struct.TYPE_21__* %204)
  br label %206

206:                                              ; preds = %201, %196
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %213, align 8
  %215 = call i32 @free(%struct.TYPE_21__* %214)
  br label %216

216:                                              ; preds = %211, %206
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %218 = call i32 @free(%struct.TYPE_21__* %217)
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %216, %117, %21
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @F_SET(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @unlink(%struct.TYPE_21__*) #1

declare dso_local i32 @msgq_str(%struct.TYPE_20__*, i32, %struct.TYPE_21__*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_21__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @log_end(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @mark_end(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
