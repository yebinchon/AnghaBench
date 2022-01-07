; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_entropy.c_fillpool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_entropy.c_fillpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@RND_POOLBITS = common dso_local global i32 0, align 4
@THRESHOLD_BITS = common dso_local global i32 0, align 4
@ENTROPY_SOURCETYPE_FILE = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@ENTROPY_SOURCETYPE_CALLBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i32)* @fillpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fillpool(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = call i32 @VALID_ENTROPY(%struct.TYPE_12__* %15)
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @REQUIRE(i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RND_POOLBITS, align 4
  %32 = sdiv i32 %31, 4
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RND_POOLBITS, align 4
  %40 = sdiv i32 %39, 4
  %41 = icmp sle i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %219

43:                                               ; preds = %34, %21
  %44 = load i32, i32* @THRESHOLD_BITS, align 4
  %45 = mul nsw i32 %44, 4
  store i32 %45, i32* %9, align 4
  br label %53

46:                                               ; preds = %3
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @THRESHOLD_BITS, align 4
  %49 = call i32 @ISC_MAX(i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @RND_POOLBITS, align 4
  %52 = call i32 @ISC_MIN(i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %46, %43
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @RND_POOLBITS, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %55, %59
  %61 = call i32 @ISC_MIN(i32 %54, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @THRESHOLD_BITS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %53
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @THRESHOLD_BITS, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %69, %72
  %74 = call i32 @ISC_MAX(i32 %68, i32 %73)
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %67, %53
  store i32 0, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %8, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = icmp eq %struct.TYPE_11__* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @ISC_LIST_HEAD(i32 %84)
  %86 = bitcast i8* %85 to %struct.TYPE_11__*
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = icmp eq %struct.TYPE_11__* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %219

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %11, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %12, align 8
  br label %100

100:                                              ; preds = %163, %95
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %142, %100
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ult i32 %102, %105
  br i1 %106, label %107, label %145

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %145

111:                                              ; preds = %107
  store i32 0, i32* %13, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ENTROPY_SOURCETYPE_FILE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @get_from_filesource(%struct.TYPE_11__* %118, i32 %119)
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %117, %111
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @ISC_MIN(i32 %125, i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = sub i32 %128, %127
  store i32 %129, i32* %8, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %131 = load i32, i32* @link, align 4
  %132 = call %struct.TYPE_11__* @ISC_LIST_NEXT(%struct.TYPE_11__* %130, i32 %131)
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %11, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %134 = icmp eq %struct.TYPE_11__* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %121
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @ISC_LIST_HEAD(i32 %138)
  %140 = bitcast i8* %139 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %140, %struct.TYPE_11__** %11, align 8
  br label %141

141:                                              ; preds = %135, %121
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %101

145:                                              ; preds = %110, %101
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  store %struct.TYPE_11__* %146, %struct.TYPE_11__** %148, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %153 = icmp eq %struct.TYPE_11__* %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i32, i32* %7, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %154, %145
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %100

164:                                              ; preds = %160, %157
  br label %165

165:                                              ; preds = %164, %154
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @ISC_LIST_HEAD(i32 %168)
  %170 = bitcast i8* %169 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %170, %struct.TYPE_11__** %11, align 8
  br label %171

171:                                              ; preds = %203, %165
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %176 = icmp ne %struct.TYPE_11__* %175, null
  br label %177

177:                                              ; preds = %174, %171
  %178 = phi i1 [ false, %171 ], [ %176, %174 ]
  br i1 %178, label %179, label %207

179:                                              ; preds = %177
  store i32 0, i32* %14, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @ENTROPY_SOURCETYPE_CALLBACK, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @get_from_callback(%struct.TYPE_11__* %186, i32 %187, i32 %188)
  store i32 %189, i32* %14, align 4
  br label %190

190:                                              ; preds = %185, %179
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %7, align 4
  %193 = add i32 %192, %191
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @ISC_MIN(i32 %194, i32 %195)
  %197 = load i32, i32* %8, align 4
  %198 = sub i32 %197, %196
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp uge i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %190
  br label %207

203:                                              ; preds = %190
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %205 = load i32, i32* @link, align 4
  %206 = call %struct.TYPE_11__* @ISC_LIST_NEXT(%struct.TYPE_11__* %204, i32 %205)
  store %struct.TYPE_11__* %206, %struct.TYPE_11__** %11, align 8
  br label %171

207:                                              ; preds = %202, %177
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @THRESHOLD_BITS, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = add i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %42, %93, %213, %207
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_ENTROPY(%struct.TYPE_12__*) #1

declare dso_local i32 @ISC_MAX(i32, i32) #1

declare dso_local i32 @ISC_MIN(i32, i32) #1

declare dso_local i8* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @get_from_filesource(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @ISC_LIST_NEXT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @get_from_callback(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
