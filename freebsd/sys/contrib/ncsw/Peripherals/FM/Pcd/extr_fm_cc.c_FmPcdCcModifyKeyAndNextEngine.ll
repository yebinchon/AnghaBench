; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcModifyKeyAndNextEngine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcModifyKeyAndNextEngine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"keyIndex > previously cleared last index + 1\00", align 1
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"keySize has to be defined as it was defined in initialization step\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"handler to FmPcd is different from the handle provided at node initialization time\00", align 1
@E_NOT_FOUND = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@E_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [89 x i8] c"The received key and mask pair was already found in the match table of the provided node\00", align 1
@e_MODIFY_STATE_CHANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmPcdCcModifyKeyAndNextEngine(i64 %0, i64 %1, i64 %2, i64 %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
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
  store i32 %22, i32* %18, align 4
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
  %31 = load i64, i64* @E_INVALID_STATE, align 8
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
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @FindKeyIndex(i64 %54, i64 %55, i32 %58, i32 %61, i64* %17)
  store i64 %62, i64* %19, align 8
  %63 = load i64, i64* %19, align 8
  %64 = call i64 @GET_ERROR_TYPE(i64 %63)
  %65 = load i64, i64* @E_NOT_FOUND, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load i32, i32* @MINOR, align 4
  %69 = load i64, i64* @E_ALREADY_EXISTS, align 8
  %70 = call i32 @RETURN_ERROR(i32 %68, i64 %69, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %53
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %13, align 8
  %76 = call i32 @INIT_LIST(i32* %14)
  %77 = call i32 @INIT_LIST(i32* %15)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* @e_MODIFY_STATE_CHANGE, align 4
  %81 = load i32, i32* @TRUE, align 4
  %82 = load i32, i32* @TRUE, align 4
  %83 = load i32, i32* @FALSE, align 4
  %84 = call i32* @ModifyNodeCommonPart(%struct.TYPE_10__* %78, i64 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  store i32* %84, i32** %16, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %71
  %88 = load i32, i32* @MAJOR, align 4
  %89 = load i64, i64* @E_INVALID_STATE, align 8
  %90 = load i8*, i8** @NO_MSG, align 8
  %91 = call i32 @RETURN_ERROR(i32 %88, i64 %89, i8* %90)
  br label %92

92:                                               ; preds = %87, %71
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = call i32 @TRY_LOCK(i32 %100, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %97
  %106 = load i32*, i32** %16, align 8
  %107 = call i32 @XX_Free(i32* %106)
  %108 = load i32, i32* @E_BUSY, align 4
  %109 = call i64 @ERROR_CODE(i32 %108)
  store i64 %109, i64* %6, align 8
  br label %182

110:                                              ; preds = %97
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %18, align 4
  br label %112

112:                                              ; preds = %110, %92
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %117 = load i32*, i32** %16, align 8
  %118 = load i32, i32* @FALSE, align 4
  %119 = call i64 @BuildNewNodeAddOrMdfyKeyAndNextEngine(i64 %113, %struct.TYPE_10__* %114, i64 %115, %struct.TYPE_11__* %116, i32* %117, i32 %118)
  store i64 %119, i64* %19, align 8
  %120 = load i64, i64* %19, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %112
  %123 = load i32*, i32** %16, align 8
  %124 = call i32 @ReleaseNewNodeCommonPart(i32* %123)
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @XX_Free(i32* %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @RELEASE_LOCK(i32 %134)
  br label %136

136:                                              ; preds = %131, %122
  %137 = load i32, i32* @MAJOR, align 4
  %138 = load i64, i64* %19, align 8
  %139 = load i8*, i8** @NO_MSG, align 8
  %140 = call i32 @RETURN_ERROR(i32 %137, i64 %138, i8* %139)
  br label %141

141:                                              ; preds = %136, %112
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %143 = load i32*, i32** %16, align 8
  %144 = call i64 @UpdatePtrWhichPointOnCrntMdfNode(%struct.TYPE_10__* %142, i32* %143, i32* %14, i32* %15)
  store i64 %144, i64* %19, align 8
  %145 = load i64, i64* %19, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %141
  %148 = load i32*, i32** %16, align 8
  %149 = call i32 @ReleaseNewNodeCommonPart(i32* %148)
  %150 = load i32*, i32** %16, align 8
  %151 = call i32 @XX_Free(i32* %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %147
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @RELEASE_LOCK(i32 %159)
  br label %161

161:                                              ; preds = %156, %147
  %162 = load i32, i32* @MAJOR, align 4
  %163 = load i64, i64* %19, align 8
  %164 = load i8*, i8** @NO_MSG, align 8
  %165 = call i32 @RETURN_ERROR(i32 %162, i64 %163, i8* %164)
  br label %166

166:                                              ; preds = %161, %141
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %168 = load i32*, i32** %16, align 8
  %169 = load i32, i32* %18, align 4
  %170 = call i64 @DoDynamicChange(%struct.TYPE_12__* %167, i32* %14, i32* %15, i32* %168, i32 %169)
  store i64 %170, i64* %19, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %166
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @RELEASE_LOCK(i32 %178)
  br label %180

180:                                              ; preds = %175, %166
  %181 = load i64, i64* %19, align 8
  store i64 %181, i64* %6, align 8
  br label %182

182:                                              ; preds = %180, %105
  %183 = load i64, i64* %6, align 8
  ret i64 %183
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
