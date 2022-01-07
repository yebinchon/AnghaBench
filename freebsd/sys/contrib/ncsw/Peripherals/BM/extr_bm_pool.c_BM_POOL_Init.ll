; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_pool.c_BM_POOL_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_pool.c_BM_POOL_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, %struct.TYPE_7__*, %struct.bm_buffer*, i32, i32, i64, i32, i64, i64 }
%struct.bm_buffer = type { i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@BMAN_POOL_FLAG_DYNAMIC_BPID = common dso_local global i32 0, align 4
@BMAN_POOL_FLAG_STOCKPILE = common dso_local global i32 0, align 4
@BMAN_POOL_FLAG_DEPLETION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ILLEGAL_BASE = common dso_local global i64 0, align 8
@CRITICAL = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't allocate new dynamic pool id\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"can't force pool id %d\00", align 1
@MAJOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"can't set thresh for pool bpid %d\00", align 1
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Bm Pool Stockpile\00", align 1
@E_OK = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BM_POOL_Init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = load i32, i32* @E_INVALID_HANDLE, align 4
  %9 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__* %7, i32 %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = load i32, i32* @E_INVALID_HANDLE, align 4
  %14 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__* %12, i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @BMAN_POOL_FLAG_DYNAMIC_BPID, align 4
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 11
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @BMAN_POOL_FLAG_STOCKPILE, align 4
  br label %39

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %39
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 9
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @BMAN_POOL_FLAG_DEPLETION, align 4
  br label %59

58:                                               ; preds = %49, %39
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BMAN_POOL_FLAG_DYNAMIC_BPID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %59
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i64 @BmBpidGet(i32 %74, i32 %75, i64 0)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* @ILLEGAL_BASE, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = call i32 @BM_POOL_Free(%struct.TYPE_7__* %82)
  %84 = load i32, i32* @CRITICAL, align 4
  %85 = load i32, i32* @E_INVALID_STATE, align 4
  %86 = call i32 @RETURN_ERROR(i32 %84, i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %81, %71
  br label %110

88:                                               ; preds = %59
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @TRUE, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @BmBpidGet(i32 %91, i32 %92, i64 %95)
  %97 = load i64, i64* @ILLEGAL_BASE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %88
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = call i32 @BM_POOL_Free(%struct.TYPE_7__* %100)
  %102 = load i32, i32* @CRITICAL, align 4
  %103 = load i32, i32* @E_INVALID_STATE, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @RETURN_ERROR(i32 %102, i32 %103, i8* %107)
  br label %109

109:                                              ; preds = %99, %88
  br label %110

110:                                              ; preds = %109, %87
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @BMAN_POOL_FLAG_DEPLETION, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %144

117:                                              ; preds = %110
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @BmSetPoolThresholds(i32 %120, i64 %123, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %117
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = call i32 @BM_POOL_Free(%struct.TYPE_7__* %132)
  %134 = load i32, i32* @MAJOR, align 4
  %135 = load i32, i32* @E_INVALID_STATE, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = call i32 @RETURN_ERROR(i32 %134, i32 %135, i8* %139)
  br label %141

141:                                              ; preds = %131, %117
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = call i32 @depletion_link(%struct.TYPE_7__* %142)
  br label %144

144:                                              ; preds = %141, %110
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @BMAN_POOL_FLAG_STOCKPILE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %183

151:                                              ; preds = %144
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = mul i64 4, %155
  %157 = trunc i64 %156 to i32
  %158 = call i64 @XX_Malloc(i32 %157)
  %159 = inttoptr i64 %158 to %struct.bm_buffer*
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 6
  store %struct.bm_buffer* %159, %struct.bm_buffer** %161, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 6
  %164 = load %struct.bm_buffer*, %struct.bm_buffer** %163, align 8
  %165 = icmp ne %struct.bm_buffer* %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %151
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %168 = call i32 @BM_POOL_Free(%struct.TYPE_7__* %167)
  %169 = load i32, i32* @MAJOR, align 4
  %170 = load i32, i32* @E_NO_MEMORY, align 4
  %171 = call i32 @RETURN_ERROR(i32 %169, i32 %170, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %172

172:                                              ; preds = %166, %151
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 6
  %175 = load %struct.bm_buffer*, %struct.bm_buffer** %174, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = mul i64 4, %179
  %181 = trunc i64 %180 to i32
  %182 = call i32 @memset(%struct.bm_buffer* %175, i32 0, i32 %181)
  br label %183

183:                                              ; preds = %172, %144
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = call i32 @XX_Free(%struct.TYPE_7__* %186)
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %189, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @BM_POOL_FillBufs(%struct.TYPE_7__* %190, i32 %193, i32 %196)
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* @E_OK, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %183
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %202 = call i32 @BM_POOL_Free(%struct.TYPE_7__* %201)
  %203 = load i32, i32* @MAJOR, align 4
  %204 = load i32, i32* %4, align 4
  %205 = load i8*, i8** @NO_MSG, align 8
  %206 = call i32 @RETURN_ERROR(i32 %203, i32 %204, i8* %205)
  br label %207

207:                                              ; preds = %200, %183
  %208 = load i32, i32* @E_OK, align 4
  ret i32 %208
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @BmBpidGet(i32, i32, i64) #1

declare dso_local i32 @BM_POOL_Free(%struct.TYPE_7__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @BmSetPoolThresholds(i32, i64, i32) #1

declare dso_local i32 @depletion_link(%struct.TYPE_7__*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @memset(%struct.bm_buffer*, i32, i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_7__*) #1

declare dso_local i32 @BM_POOL_FillBufs(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
