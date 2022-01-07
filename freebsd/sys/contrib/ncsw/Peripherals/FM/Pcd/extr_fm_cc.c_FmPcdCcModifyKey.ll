; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcModifyKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcModifyKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"keyIndex > previously cleared last index + 1\00", align 1
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"size for ModifyKey has to be the same as defined in SetNode\00", align 1
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
define dso_local i64 @FmPcdCcModifyKey(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %22 = load i64, i64* %9, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %14, align 8
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %20, align 4
  %25 = load i64, i64* @E_OK, align 8
  store i64 %25, i64* %21, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load i32, i32* @MAJOR, align 4
  %33 = load i64, i64* @E_INVALID_STATE, align 8
  %34 = call i32 @RETURN_ERROR(i32 %32, i64 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %6
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @MAJOR, align 4
  %43 = load i64, i64* @E_INVALID_VALUE, align 8
  %44 = call i32 @RETURN_ERROR(i32 %42, i64 %43, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @MAJOR, align 4
  %53 = load i64, i64* @E_INVALID_VALUE, align 8
  %54 = call i32 @RETURN_ERROR(i32 %52, i64 %53, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %45
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = load i64*, i64** %13, align 8
  %60 = call i64 @FindKeyIndex(i64 %56, i64 %57, i64* %58, i64* %59, i64* %19)
  store i64 %60, i64* %21, align 8
  %61 = load i64, i64* %21, align 8
  %62 = call i64 @GET_ERROR_TYPE(i64 %61)
  %63 = load i64, i64* @E_NOT_FOUND, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @MINOR, align 4
  %67 = load i64, i64* @E_ALREADY_EXISTS, align 8
  %68 = call i32 @RETURN_ERROR(i32 %66, i64 %67, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %55
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %15, align 8
  %74 = call i32 @INIT_LIST(i32* %16)
  %75 = call i32 @INIT_LIST(i32* %17)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* @e_MODIFY_STATE_CHANGE, align 4
  %79 = load i32, i32* @TRUE, align 4
  %80 = load i32, i32* @TRUE, align 4
  %81 = load i32, i32* @FALSE, align 4
  %82 = call i32* @ModifyNodeCommonPart(%struct.TYPE_7__* %76, i64 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  store i32* %82, i32** %18, align 8
  %83 = load i32*, i32** %18, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %69
  %86 = load i32, i32* @MAJOR, align 4
  %87 = load i64, i64* @E_INVALID_STATE, align 8
  %88 = load i8*, i8** @NO_MSG, align 8
  %89 = call i32 @RETURN_ERROR(i32 %86, i64 %87, i8* %88)
  br label %90

90:                                               ; preds = %85, %69
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = call i32 @TRY_LOCK(i32 %98, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %95
  %104 = load i32*, i32** %18, align 8
  %105 = call i32 @XX_Free(i32* %104)
  %106 = load i32, i32* @E_BUSY, align 4
  %107 = call i64 @ERROR_CODE(i32 %106)
  store i64 %107, i64* %7, align 8
  br label %177

108:                                              ; preds = %95
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %20, align 4
  br label %110

110:                                              ; preds = %108, %90
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64*, i64** %12, align 8
  %114 = load i64*, i64** %13, align 8
  %115 = load i32*, i32** %18, align 8
  %116 = call i64 @BuildNewNodeModifyKey(%struct.TYPE_7__* %111, i64 %112, i64* %113, i64* %114, i32* %115)
  store i64 %116, i64* %21, align 8
  %117 = load i64, i64* %21, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %110
  %120 = load i32*, i32** %18, align 8
  %121 = call i32 @XX_Free(i32* %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @RELEASE_LOCK(i32 %129)
  br label %131

131:                                              ; preds = %126, %119
  %132 = load i32, i32* @MAJOR, align 4
  %133 = load i64, i64* %21, align 8
  %134 = load i8*, i8** @NO_MSG, align 8
  %135 = call i32 @RETURN_ERROR(i32 %132, i64 %133, i8* %134)
  br label %136

136:                                              ; preds = %131, %110
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %138 = load i32*, i32** %18, align 8
  %139 = call i64 @UpdatePtrWhichPointOnCrntMdfNode(%struct.TYPE_7__* %137, i32* %138, i32* %16, i32* %17)
  store i64 %139, i64* %21, align 8
  %140 = load i64, i64* %21, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %136
  %143 = load i32*, i32** %18, align 8
  %144 = call i32 @ReleaseNewNodeCommonPart(i32* %143)
  %145 = load i32*, i32** %18, align 8
  %146 = call i32 @XX_Free(i32* %145)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %142
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @RELEASE_LOCK(i32 %154)
  br label %156

156:                                              ; preds = %151, %142
  %157 = load i32, i32* @MAJOR, align 4
  %158 = load i64, i64* %21, align 8
  %159 = load i8*, i8** @NO_MSG, align 8
  %160 = call i32 @RETURN_ERROR(i32 %157, i64 %158, i8* %159)
  br label %161

161:                                              ; preds = %156, %136
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %163 = load i32*, i32** %18, align 8
  %164 = load i32, i32* %20, align 4
  %165 = call i64 @DoDynamicChange(%struct.TYPE_8__* %162, i32* %16, i32* %17, i32* %163, i32 %164)
  store i64 %165, i64* %21, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %161
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @RELEASE_LOCK(i32 %173)
  br label %175

175:                                              ; preds = %170, %161
  %176 = load i64, i64* %21, align 8
  store i64 %176, i64* %7, align 8
  br label %177

177:                                              ; preds = %175, %103
  %178 = load i64, i64* %7, align 8
  ret i64 %178
}

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @FindKeyIndex(i64, i64, i64*, i64*, i64*) #1

declare dso_local i64 @GET_ERROR_TYPE(i64) #1

declare dso_local i32 @INIT_LIST(i32*) #1

declare dso_local i32* @ModifyNodeCommonPart(%struct.TYPE_7__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @TRY_LOCK(i32, i32*) #1

declare dso_local i32 @XX_Free(i32*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i64 @BuildNewNodeModifyKey(%struct.TYPE_7__*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i64 @UpdatePtrWhichPointOnCrntMdfNode(%struct.TYPE_7__*, i32*, i32*, i32*) #1

declare dso_local i32 @ReleaseNewNodeCommonPart(i32*) #1

declare dso_local i64 @DoDynamicChange(%struct.TYPE_8__*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
