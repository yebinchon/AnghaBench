; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_ModifyNodeCommonPart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_ModifyNodeCommonPart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i64 }
%struct.TYPE_8__ = type { i32, i64, i32* }
%struct.TYPE_7__ = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Next engine and required action structure\00", align 1
@CC_PC_FF_IPV4TTL = common dso_local global i64 0, align 8
@CC_PC_FF_IPV6HOP_LIMIT = common dso_local global i64 0, align 8
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"nodeId of CC_PC_FF_IPV4TTL or CC_PC_FF_IPV6HOP_LIMIT can not be used for this operation\00", align 1
@CC_PC_GENERIC_IC_HASH_INDEXED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [75 x i8] c"nodeId of CC_PC_GENERIC_IC_HASH_INDEXED can not be used for this operation\00", align 1
@FM_PCD_MAX_NUM_OF_CC_GROUPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Allocation of internal data structure FAILED\00", align 1
@e_MODIFY_STATE_ADD = common dso_local global i64 0, align 8
@e_MODIFY_STATE_REMOVE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i64, i32, i64, i32, i32, i32)* @ModifyNodeCommonPart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @ModifyNodeCommonPart(i64 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %17, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %18, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* @E_INVALID_HANDLE, align 4
  %25 = call i32 @SANITY_CHECK_RETURN_VALUE(i64 %23, i32 %24, i32* null)
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %96, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* %8, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %18, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %20, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = call i64 @XX_Malloc(i32 %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %21, align 8
  %41 = load i32*, i32** %21, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* @MAJOR, align 4
  %45 = load i32, i32* @E_NO_MEMORY, align 4
  %46 = call i32 @REPORT_ERROR(i32 %44, i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  br label %216

47:                                               ; preds = %28
  %48 = load i32*, i32** %21, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %20, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(i32* %48, i32* %51, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %47
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CC_PC_FF_IPV4TTL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CC_PC_FF_IPV6HOP_LIMIT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66, %60
  %73 = load i32*, i32** %21, align 8
  %74 = call i32 @XX_Free(i32* %73)
  %75 = load i32, i32* @MAJOR, align 4
  %76 = load i32, i32* @E_INVALID_VALUE, align 4
  %77 = call i32 @REPORT_ERROR(i32 %75, i32 %76, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  br label %216

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CC_PC_GENERIC_IC_HASH_INDEXED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32*, i32** %21, align 8
  %90 = call i32 @XX_Free(i32* %89)
  %91 = load i32, i32* @MAJOR, align 4
  %92 = load i32, i32* @E_INVALID_VALUE, align 4
  %93 = call i32 @REPORT_ERROR(i32 %91, i32 %92, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  br label %216

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %79
  br label %124

96:                                               ; preds = %6
  %97 = load i64, i64* %8, align 8
  %98 = inttoptr i64 %97 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %19, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 4, %103
  %105 = trunc i64 %104 to i32
  %106 = call i64 @XX_Malloc(i32 %105)
  %107 = inttoptr i64 %106 to i32*
  store i32* %107, i32** %21, align 8
  %108 = load i32*, i32** %21, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %96
  %111 = load i32, i32* @MAJOR, align 4
  %112 = load i32, i32* @E_NO_MEMORY, align 4
  %113 = call i32 @REPORT_ERROR(i32 %111, i32 %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  br label %216

114:                                              ; preds = %96
  %115 = load i32*, i32** %21, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memcpy(i32* %115, i32* %118, i32 %122)
  br label %124

124:                                              ; preds = %114, %95
  %125 = call i64 @XX_Malloc(i32 24)
  %126 = inttoptr i64 %125 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %126, %struct.TYPE_6__** %14, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %128 = icmp ne %struct.TYPE_6__* %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = load i32*, i32** %21, align 8
  %131 = call i32 @XX_Free(i32* %130)
  %132 = load i32, i32* @MAJOR, align 4
  %133 = load i32, i32* @E_NO_MEMORY, align 4
  %134 = call i32 @REPORT_ERROR(i32 %132, i32 %133, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  br label %216

135:                                              ; preds = %124
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %137 = call i32 @memset(%struct.TYPE_6__* %136, i32 0, i32 24)
  %138 = load i64, i64* %8, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %188, %135
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %189

148:                                              ; preds = %144
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %172

152:                                              ; preds = %148
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %172, label %155

155:                                              ; preds = %152
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* @e_MODIFY_STATE_ADD, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %170

162:                                              ; preds = %155
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* @e_MODIFY_STATE_REMOVE, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %166, %162
  br label %170

170:                                              ; preds = %169, %159
  %171 = load i32, i32* @TRUE, align 4
  store i32 %171, i32* %17, align 4
  br label %188

172:                                              ; preds = %152, %148
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32*, i32** %21, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = call i32 @memcpy(i32* %178, i32* %182, i32 4)
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %15, align 4
  %186 = load i32, i32* %16, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %16, align 4
  br label %188

188:                                              ; preds = %172, %170
  br label %144

189:                                              ; preds = %144
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %20, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %189
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* @e_MODIFY_STATE_ADD, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %16, align 4
  br label %200

200:                                              ; preds = %197, %193
  br label %201

201:                                              ; preds = %200, %189
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32*, i32** %21, align 8
  %209 = load i32, i32* %20, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = call i32 @memcpy(i32* %207, i32* %211, i32 4)
  %213 = load i32*, i32** %21, align 8
  %214 = call i32 @XX_Free(i32* %213)
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %215, %struct.TYPE_6__** %7, align 8
  br label %216

216:                                              ; preds = %201, %129, %110, %88, %72, %43
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %217
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(i64, i32, i32*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @XX_Free(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
