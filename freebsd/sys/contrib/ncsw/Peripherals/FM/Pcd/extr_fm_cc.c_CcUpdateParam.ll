; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_CcUpdateParam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_CcUpdateParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64, i64 }

@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@e_FM_PCD_CC = common dso_local global i64 0, align 8
@e_FM_PCD_INVALID = common dso_local global i64 0, align 8
@E_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, %struct.TYPE_14__*, i32, i32*, i32, i32, i32*, i32)* @CcUpdateParam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CcUpdateParam(i32* %0, i32* %1, i32* %2, %struct.TYPE_14__* %3, i32 %4, i32* %5, i32 %6, i32 %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %26 = load i32*, i32** %19, align 8
  %27 = bitcast i32* %26 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %25, align 8
  %28 = load i32, i32* %18, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %18, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %10
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32*, i32** %19, align 8
  %44 = load i32, i32* %20, align 4
  %45 = call i64 @FmPcdManipUpdate(i32* %35, i32* %36, i32* %37, i64 %40, i32* null, i32 %41, i32 %42, i32* %43, i32 %44)
  store i64 %45, i64* %22, align 8
  %46 = load i64, i64* %22, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load i32, i32* @MAJOR, align 4
  %50 = load i64, i64* %22, align 8
  %51 = load i32, i32* @NO_MSG, align 4
  %52 = call i32 @RETURN_ERROR(i32 %49, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %34
  br label %54

54:                                               ; preds = %53, %10
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32*, i32** %19, align 8
  %69 = load i32, i32* %20, align 4
  %70 = call i64 @FmPcdManipUpdate(i32* %60, i32* %61, i32* %62, i64 %65, i32* null, i32 %66, i32 %67, i32* %68, i32 %69)
  store i64 %70, i64* %22, align 8
  %71 = load i64, i64* %22, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %59
  %74 = load i32, i32* @MAJOR, align 4
  %75 = load i64, i64* %22, align 8
  %76 = load i32, i32* @NO_MSG, align 4
  %77 = call i32 @RETURN_ERROR(i32 %74, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %59
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %241

82:                                               ; preds = %79
  store i32 0, i32* %24, align 4
  br label %83

83:                                               ; preds = %237, %82
  %84 = load i32, i32* %24, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %240

87:                                               ; preds = %83
  %88 = load i32, i32* %24, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %94 = mul nsw i32 %92, %93
  %95 = call i32* @PTR_MOVE(i32* %91, i32 %94)
  store i32* %95, i32** %16, align 8
  br label %100

96:                                               ; preds = %87
  %97 = load i32*, i32** %16, align 8
  %98 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %99 = call i32* @PTR_MOVE(i32* %97, i32 %98)
  store i32* %99, i32** %16, align 8
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %102 = load i32, i32* %24, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @e_FM_PCD_CC, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %202

110:                                              ; preds = %100
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %112 = load i32, i32* %24, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  store %struct.TYPE_13__* %119, %struct.TYPE_13__** %21, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %121 = call i32 @ASSERT_COND(%struct.TYPE_13__* %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %123 = load i32, i32* %24, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %110
  %131 = load i32*, i32** %11, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %134 = load i32, i32* %24, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32*, i32** %16, align 8
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32*, i32** %19, align 8
  %144 = load i32, i32* %20, align 4
  %145 = call i64 @FmPcdManipUpdate(i32* %131, i32* null, i32* %132, i64 %139, i32* %140, i32 %141, i32 %142, i32* %143, i32 %144)
  store i64 %145, i64* %22, align 8
  %146 = load i64, i64* %22, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %130
  %149 = load i32, i32* @MAJOR, align 4
  %150 = load i64, i64* %22, align 8
  %151 = load i32, i32* @NO_MSG, align 4
  %152 = call i32 @RETURN_ERROR(i32 %149, i64 %150, i32 %151)
  br label %153

153:                                              ; preds = %148, %130
  br label %154

154:                                              ; preds = %153, %110
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @e_FM_PCD_INVALID, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %154
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, 1
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %23, align 4
  br label %178

173:                                              ; preds = %154
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %23, align 4
  br label %178

178:                                              ; preds = %173, %167
  %179 = load i32*, i32** %11, align 8
  %180 = load i32*, i32** %12, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = load i32, i32* %23, align 4
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %18, align 4
  %191 = load i32*, i32** %19, align 8
  %192 = load i32, i32* %20, align 4
  %193 = call i64 @CcUpdateParam(i32* %179, i32* %180, i32* %181, %struct.TYPE_14__* %184, i32 %185, i32* %188, i32 %189, i32 %190, i32* %191, i32 %192)
  store i64 %193, i64* %22, align 8
  %194 = load i64, i64* %22, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %178
  %197 = load i32, i32* @MAJOR, align 4
  %198 = load i64, i64* %22, align 8
  %199 = load i32, i32* @NO_MSG, align 4
  %200 = call i32 @RETURN_ERROR(i32 %197, i64 %198, i32 %199)
  br label %201

201:                                              ; preds = %196, %178
  br label %236

202:                                              ; preds = %100
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %204 = load i32, i32* %24, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %235

211:                                              ; preds = %202
  %212 = load i32*, i32** %11, align 8
  %213 = load i32*, i32** %13, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %215 = load i32, i32* %24, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i32*, i32** %16, align 8
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %18, align 4
  %224 = load i32*, i32** %19, align 8
  %225 = load i32, i32* %20, align 4
  %226 = call i64 @FmPcdManipUpdate(i32* %212, i32* null, i32* %213, i64 %220, i32* %221, i32 %222, i32 %223, i32* %224, i32 %225)
  store i64 %226, i64* %22, align 8
  %227 = load i64, i64* %22, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %211
  %230 = load i32, i32* @MAJOR, align 4
  %231 = load i64, i64* %22, align 8
  %232 = load i32, i32* @NO_MSG, align 4
  %233 = call i32 @RETURN_ERROR(i32 %230, i64 %231, i32 %232)
  br label %234

234:                                              ; preds = %229, %211
  br label %235

235:                                              ; preds = %234, %202
  br label %236

236:                                              ; preds = %235, %201
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %24, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %24, align 4
  br label %83

240:                                              ; preds = %83
  br label %241

241:                                              ; preds = %240, %79
  %242 = load i64, i64* @E_OK, align 8
  ret i64 %242
}

declare dso_local i64 @FmPcdManipUpdate(i32*, i32*, i32*, i64, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i32) #1

declare dso_local i32* @PTR_MOVE(i32*, i32) #1

declare dso_local i32 @ASSERT_COND(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
