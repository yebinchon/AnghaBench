; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcAddKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcAddKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NOT_IN_RANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"keyIndex > previously cleared last index + 1\00", align 1
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"keySize has to be defined as it was defined in initialization step\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"handler to FmPcd is different from the handle provided at node initialization time\00", align 1
@E_FULL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [87 x i8] c"number of keys exceeds the maximal number of keys provided at node initialization time\00", align 1
@FM_PCD_MAX_NUM_OF_KEYS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"number of keys can not be larger than %d\00", align 1
@E_NOT_FOUND = common dso_local global i64 0, align 8
@E_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [89 x i8] c"The received key and mask pair was already found in the match table of the provided node\00", align 1
@e_MODIFY_STATE_ADD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i64 0, align 8
@NO_MSG = common dso_local global i8* null, align 8
@E_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmPcdCcAddKey(i64 %0, i64 %1, i64 %2, i64 %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %12, align 8
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %17, align 4
  %23 = load i64, i64* @E_OK, align 8
  store i64 %23, i64* %19, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @MAJOR, align 4
  %31 = load i64, i64* @E_NOT_IN_RANGE, align 8
  %32 = call i32 @RETURN_ERROR(i32 %30, i64 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %5
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @MAJOR, align 4
  %41 = load i64, i64* @E_INVALID_VALUE, align 8
  %42 = call i32 @RETURN_ERROR(i32 %40, i64 %41, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @MAJOR, align 4
  %51 = load i64, i64* @E_INVALID_VALUE, align 8
  %52 = call i32 @RETURN_ERROR(i32 %50, i64 %51, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @MAJOR, align 4
  %68 = load i64, i64* @E_FULL, align 8
  %69 = call i32 @RETURN_ERROR(i32 %67, i64 %68, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %58
  br label %84

71:                                               ; preds = %53
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FM_PCD_MAX_NUM_OF_KEYS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* @MAJOR, align 4
  %79 = load i64, i64* @E_INVALID_VALUE, align 8
  %80 = load i64, i64* @FM_PCD_MAX_NUM_OF_KEYS, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @RETURN_ERROR(i32 %78, i64 %79, i8* %81)
  br label %83

83:                                               ; preds = %77, %71
  br label %84

84:                                               ; preds = %83, %70
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @FindKeyIndex(i64 %85, i64 %86, i32 %89, i32 %92, i64* %18)
  store i64 %93, i64* %19, align 8
  %94 = load i64, i64* %19, align 8
  %95 = call i64 @GET_ERROR_TYPE(i64 %94)
  %96 = load i64, i64* @E_NOT_FOUND, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load i32, i32* @MAJOR, align 4
  %100 = load i64, i64* @E_ALREADY_EXISTS, align 8
  %101 = call i32 @RETURN_ERROR(i32 %99, i64 %100, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %84
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %13, align 8
  %107 = call i32 @INIT_LIST(i32* %15)
  %108 = call i32 @INIT_LIST(i32* %16)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* @e_MODIFY_STATE_ADD, align 4
  %112 = load i32, i32* @TRUE, align 4
  %113 = load i32, i32* @TRUE, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i32* @ModifyNodeCommonPart(%struct.TYPE_10__* %109, i64 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  store i32* %115, i32** %14, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %102
  %119 = load i32, i32* @MAJOR, align 4
  %120 = load i64, i64* @E_INVALID_STATE, align 8
  %121 = load i8*, i8** @NO_MSG, align 8
  %122 = call i32 @RETURN_ERROR(i32 %119, i64 %120, i8* %121)
  br label %123

123:                                              ; preds = %118, %102
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %123
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = call i32 @TRY_LOCK(i32 %131, i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %128
  %137 = load i32*, i32** %14, align 8
  %138 = call i32 @XX_Free(i32* %137)
  %139 = load i32, i32* @E_BUSY, align 4
  %140 = call i64 @ERROR_CODE(i32 %139)
  store i64 %140, i64* %6, align 8
  br label %213

141:                                              ; preds = %128
  %142 = load i32, i32* @TRUE, align 4
  store i32 %142, i32* %17, align 4
  br label %143

143:                                              ; preds = %141, %123
  %144 = load i64, i64* %7, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load i32, i32* @TRUE, align 4
  %150 = call i64 @BuildNewNodeAddOrMdfyKeyAndNextEngine(i64 %144, %struct.TYPE_10__* %145, i64 %146, %struct.TYPE_11__* %147, i32* %148, i32 %149)
  store i64 %150, i64* %19, align 8
  %151 = load i64, i64* %19, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %143
  %154 = load i32*, i32** %14, align 8
  %155 = call i32 @ReleaseNewNodeCommonPart(i32* %154)
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @XX_Free(i32* %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %153
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @RELEASE_LOCK(i32 %165)
  br label %167

167:                                              ; preds = %162, %153
  %168 = load i32, i32* @MAJOR, align 4
  %169 = load i64, i64* %19, align 8
  %170 = load i8*, i8** @NO_MSG, align 8
  %171 = call i32 @RETURN_ERROR(i32 %168, i64 %169, i8* %170)
  br label %172

172:                                              ; preds = %167, %143
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %174 = load i32*, i32** %14, align 8
  %175 = call i64 @UpdatePtrWhichPointOnCrntMdfNode(%struct.TYPE_10__* %173, i32* %174, i32* %15, i32* %16)
  store i64 %175, i64* %19, align 8
  %176 = load i64, i64* %19, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %172
  %179 = load i32*, i32** %14, align 8
  %180 = call i32 @ReleaseNewNodeCommonPart(i32* %179)
  %181 = load i32*, i32** %14, align 8
  %182 = call i32 @XX_Free(i32* %181)
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %178
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @RELEASE_LOCK(i32 %190)
  br label %192

192:                                              ; preds = %187, %178
  %193 = load i32, i32* @MAJOR, align 4
  %194 = load i64, i64* %19, align 8
  %195 = load i8*, i8** @NO_MSG, align 8
  %196 = call i32 @RETURN_ERROR(i32 %193, i64 %194, i8* %195)
  br label %197

197:                                              ; preds = %192, %172
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %199 = load i32*, i32** %14, align 8
  %200 = load i32, i32* %17, align 4
  %201 = call i64 @DoDynamicChange(%struct.TYPE_12__* %198, i32* %15, i32* %16, i32* %199, i32 %200)
  store i64 %201, i64* %19, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %197
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @RELEASE_LOCK(i32 %209)
  br label %211

211:                                              ; preds = %206, %197
  %212 = load i64, i64* %19, align 8
  store i64 %212, i64* %6, align 8
  br label %213

213:                                              ; preds = %211, %136
  %214 = load i64, i64* %6, align 8
  ret i64 %214
}

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @FindKeyIndex(i64, i64, i32, i32, i64*) #1

declare dso_local i64 @GET_ERROR_TYPE(i64) #1

declare dso_local i32 @INIT_LIST(i32*) #1

declare dso_local i32* @ModifyNodeCommonPart(%struct.TYPE_10__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @TRY_LOCK(i32, i32*) #1

declare dso_local i32 @XX_Free(i32*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i64 @BuildNewNodeAddOrMdfyKeyAndNextEngine(i64, %struct.TYPE_10__*, i64, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @ReleaseNewNodeCommonPart(i32*) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i64 @UpdatePtrWhichPointOnCrntMdfNode(%struct.TYPE_10__*, i32*, i32*, i32*) #1

declare dso_local i64 @DoDynamicChange(%struct.TYPE_12__*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
