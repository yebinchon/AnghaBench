; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_IofCompleteRequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_IofCompleteRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i64, i32, %struct.TYPE_17__*, %struct.TYPE_16__, i32*, %struct.TYPE_15__, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, i32*, i32* }

@STATUS_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"incorrect IRP(%p) status (STATUS_PENDING)\00", align 1
@SL_PENDING_RETURNED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@SL_INVOKE_ON_SUCCESS = common dso_local global i32 0, align 4
@SL_INVOKE_ON_ERROR = common dso_local global i32 0, align 4
@SL_INVOKE_ON_CANCEL = common dso_local global i32 0, align 4
@STATUS_MORE_PROCESSING_REQUIRED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@IRP_ASSOCIATED_IRP = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@IRP_PAGING_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IofCompleteRequest(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STATUS_PENDING, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = bitcast %struct.TYPE_18__* %19 to i8*
  %21 = call i32 @KASSERT(i32 %18, i8* %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = call %struct.TYPE_19__* @IoGetCurrentIrpStackLocation(%struct.TYPE_18__* %22)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %7, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = call i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_18__* %24)
  br label %26

26:                                               ; preds = %137, %2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SL_PENDING_RETURNED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i64, i64* @TRUE, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = call %struct.TYPE_19__* @IoGetCurrentIrpStackLocation(%struct.TYPE_18__* %47)
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %6, align 8
  br label %52

51:                                               ; preds = %37
  store i32* null, i32** %6, align 8
  br label %52

52:                                               ; preds = %51, %46
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %114

57:                                               ; preds = %52
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @STATUS_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SL_INVOKE_ON_SUCCESS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %98, label %71

71:                                               ; preds = %64, %57
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @STATUS_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SL_INVOKE_ON_ERROR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %78, %71
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TRUE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %85
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SL_INVOKE_ON_CANCEL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %91, %78, %64
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %8, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @MSCALL3(i32* %102, i32* %103, %struct.TYPE_18__* %104, i32 %107)
  store i64 %108, i64* %5, align 8
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* @STATUS_MORE_PROCESSING_REQUIRED, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %230

113:                                              ; preds = %98
  br label %132

114:                                              ; preds = %91, %85, %52
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp sle i64 %117, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %114
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TRUE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %130 = call i32 @IoMarkIrpPending(%struct.TYPE_18__* %129)
  br label %131

131:                                              ; preds = %128, %122, %114
  br label %132

132:                                              ; preds = %131, %113
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %134 = call i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_18__* %133)
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 1
  store %struct.TYPE_19__* %136, %struct.TYPE_19__** %7, align 8
  br label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  %145 = icmp sle i64 %140, %144
  br i1 %145, label %26, label %146

146:                                              ; preds = %137
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 9
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = icmp ne %struct.TYPE_15__* %149, null
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 9
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 8
  %157 = bitcast %struct.TYPE_15__* %154 to i8*
  %158 = bitcast %struct.TYPE_15__* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %157, i8* align 8 %158, i64 8, i1 false)
  br label %159

159:                                              ; preds = %151, %146
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 7
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 7
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @FALSE, align 4
  %170 = call i32 @KeSetEvent(i32* %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %164, %159
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @IRP_ASSOCIATED_IRP, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %210

178:                                              ; preds = %171
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  store %struct.TYPE_18__* %182, %struct.TYPE_18__** %10, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = call i64 @InterlockedDecrement(i32* %185)
  store i64 %186, i64* %9, align 8
  br label %187

187:                                              ; preds = %192, %178
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  store %struct.TYPE_17__* %190, %struct.TYPE_17__** %11, align 8
  %191 = icmp ne %struct.TYPE_17__* %190, null
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 5
  store %struct.TYPE_17__* %195, %struct.TYPE_17__** %197, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %199 = call i32 @IoFreeMdl(%struct.TYPE_17__* %198)
  br label %187

200:                                              ; preds = %187
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %202 = call i32 @IoFreeIrp(%struct.TYPE_18__* %201)
  %203 = load i64, i64* %9, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %207 = load i32, i32* @IO_NO_INCREMENT, align 4
  %208 = call i32 @IoCompleteRequest(%struct.TYPE_18__* %206, i32 %207)
  br label %209

209:                                              ; preds = %205, %200
  br label %230

210:                                              ; preds = %171
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @IRP_PAGING_IO, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %210
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 5
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = icmp ne %struct.TYPE_17__* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 5
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %224, align 8
  %226 = call i32 @IoFreeMdl(%struct.TYPE_17__* %225)
  br label %227

227:                                              ; preds = %222, %217
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %229 = call i32 @IoFreeIrp(%struct.TYPE_18__* %228)
  br label %230

230:                                              ; preds = %112, %209, %227, %210
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_19__* @IoGetCurrentIrpStackLocation(%struct.TYPE_18__*) #1

declare dso_local i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_18__*) #1

declare dso_local i64 @MSCALL3(i32*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @IoMarkIrpPending(%struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

declare dso_local i64 @InterlockedDecrement(i32*) #1

declare dso_local i32 @IoFreeMdl(%struct.TYPE_17__*) #1

declare dso_local i32 @IoFreeIrp(%struct.TYPE_18__*) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
