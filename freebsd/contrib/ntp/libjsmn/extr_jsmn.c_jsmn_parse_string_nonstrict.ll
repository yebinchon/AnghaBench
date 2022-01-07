; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn.c_jsmn_parse_string_nonstrict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn.c_jsmn_parse_string_nonstrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@JSMN_ERROR_NOMEM = common dso_local global i32 0, align 4
@JSMN_STRING = common dso_local global i32 0, align 4
@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@JSMN_ERROR_PART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i64, %struct.TYPE_9__*, i64)* @jsmn_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsmn_parse_string(%struct.TYPE_10__* %0, i8* %1, i64 %2, %struct.TYPE_9__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %216, %5
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %30, %23
  %41 = phi i1 [ false, %23 ], [ %39, %30 ]
  br i1 %41, label %42, label %221

42:                                               ; preds = %40
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %14, align 1
  %50 = load i8, i8* %14, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 34
  br i1 %52, label %53, label %78

53:                                               ; preds = %42
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = icmp eq %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %226

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call %struct.TYPE_9__* @jsmn_alloc_token(%struct.TYPE_10__* %58, %struct.TYPE_9__* %59, i64 %60)
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %12, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = icmp eq %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @JSMN_ERROR_NOMEM, align 4
  store i32 %68, i32* %6, align 4
  br label %226

69:                                               ; preds = %57
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %71 = load i32, i32* @JSMN_STRING, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @jsmn_fill_token(%struct.TYPE_9__* %70, i32 %71, i32 %73, i32 %76)
  store i32 0, i32* %6, align 4
  br label %226

78:                                               ; preds = %42
  %79 = load i8, i8* %14, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 92
  br i1 %81, label %82, label %215

82:                                               ; preds = %78
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %9, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %215

90:                                               ; preds = %82
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %95, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  switch i32 %102, label %209 [
    i32 34, label %103
    i32 47, label %103
    i32 92, label %103
    i32 98, label %103
    i32 102, label %103
    i32 114, label %103
    i32 110, label %103
    i32 116, label %103
    i32 117, label %104
  ]

103:                                              ; preds = %90, %90, %90, %90, %90, %90, %90, %90
  br label %214

104:                                              ; preds = %90
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %201, %104
  %110 = load i32, i32* %15, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %112, label %129

112:                                              ; preds = %109
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %9, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = load i8*, i8** %8, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br label %129

129:                                              ; preds = %119, %112, %109
  %130 = phi i1 [ false, %112 ], [ false, %109 ], [ %128, %119 ]
  br i1 %130, label %131, label %204

131:                                              ; preds = %129
  %132 = load i8*, i8** %8, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp sge i32 %139, 48
  br i1 %140, label %141, label %151

141:                                              ; preds = %131
  %142 = load i8*, i8** %8, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp sle i32 %149, 57
  br i1 %150, label %196, label %151

151:                                              ; preds = %141, %131
  %152 = load i8*, i8** %8, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %152, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sge i32 %159, 65
  br i1 %160, label %161, label %171

161:                                              ; preds = %151
  %162 = load i8*, i8** %8, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %162, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp sle i32 %169, 70
  br i1 %170, label %196, label %171

171:                                              ; preds = %161, %151
  %172 = load i8*, i8** %8, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %172, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp sge i32 %179, 97
  br i1 %180, label %181, label %191

181:                                              ; preds = %171
  %182 = load i8*, i8** %8, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp sle i32 %189, 102
  br i1 %190, label %196, label %191

191:                                              ; preds = %181, %171
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %195, i32* %6, align 4
  br label %226

196:                                              ; preds = %181, %161, %141
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %196
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %15, align 4
  br label %109

204:                                              ; preds = %129
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %206, align 4
  br label %214

209:                                              ; preds = %90
  %210 = load i32, i32* %13, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %213, i32* %6, align 4
  br label %226

214:                                              ; preds = %204, %103
  br label %215

215:                                              ; preds = %214, %82, %78
  br label %216

216:                                              ; preds = %215
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  br label %23

221:                                              ; preds = %40
  %222 = load i32, i32* %13, align 4
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @JSMN_ERROR_PART, align 4
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %221, %209, %191, %69, %64, %56
  %227 = load i32, i32* %6, align 4
  ret i32 %227
}

declare dso_local %struct.TYPE_9__* @jsmn_alloc_token(%struct.TYPE_10__*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @jsmn_fill_token(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
