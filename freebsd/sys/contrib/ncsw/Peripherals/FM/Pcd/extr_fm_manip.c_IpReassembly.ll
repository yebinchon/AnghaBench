; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_IpReassembly.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_IpReassembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i32, i32, i64, %struct.TYPE_14__, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, i64, i32*, i32* }
%struct.TYPE_19__ = type { i64 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"timeoutThresholdForReassmProcess should be 1msec - 8sec\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"maxNumFramesInProcess has to be less than (maximun set number * number of ways / 2)\00", align 1
@HEADER_TYPE_IPv6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"minFragSize[1] must be >= 256\00", align 1
@HEADER_TYPE_IPv4 = common dso_local global i64 0, align 8
@E_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_18__*)* @IpReassembly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IpReassembly(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 10000, i32* %6, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = bitcast %struct.TYPE_17__* %7 to i8*
  %13 = bitcast %struct.TYPE_17__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 64, i1 false)
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @E_INVALID_HANDLE, align 4
  %18 = call i32 @SANITY_CHECK_RETURN_ERROR(i64 %16, i32 %17)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_19__*
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @E_INVALID_HANDLE, align 4
  %26 = call i32 @SANITY_CHECK_RETURN_ERROR(i64 %24, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 1000
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 8000000
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %2
  %35 = load i32, i32* @MAJOR, align 4
  %36 = load i32, i32* @E_INVALID_VALUE, align 4
  %37 = call i32 @RETURN_ERROR(i32 %35, i32 %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sdiv i32 %44, 2
  %46 = icmp sgt i32 %40, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @MAJOR, align 4
  %49 = load i32, i32* @E_INVALID_VALUE, align 4
  %50 = call i32 @RETURN_ERROR(i32 %48, i32 %49, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %38
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HEADER_TYPE_IPv6, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 256
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @MAJOR, align 4
  %65 = load i32, i32* @E_INVALID_VALUE, align 4
  %66 = call i32 @RETURN_ERROR(i32 %64, i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %57, %51
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 10
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %71, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 10
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %81, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 9
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %91, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 9
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %101, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %111, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 %121, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 8
  store i32 %134, i32* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 7
  store i32 %139, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 6
  store i32 %149, i32* %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 5
  store i32 %154, i32* %157, align 4
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %159 = call i32 @CreateReassCommonTable(%struct.TYPE_18__* %158)
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @HEADER_TYPE_IPv6, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %173, label %166

166:                                              ; preds = %67
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @HEADER_TYPE_IPv4, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %166, %67
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %175 = call i64 @SetIpv4ReassmManip(%struct.TYPE_18__* %174)
  store i64 %175, i64* %8, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* @E_OK, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i64, i64* %8, align 8
  store i64 %180, i64* %3, align 8
  br label %200

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %166
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @HEADER_TYPE_IPv6, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %182
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %191 = call i64 @SetIpv6ReassmManip(%struct.TYPE_18__* %190)
  store i64 %191, i64* %8, align 8
  %192 = load i64, i64* %8, align 8
  %193 = load i64, i64* @E_OK, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i64, i64* %8, align 8
  store i64 %196, i64* %3, align 8
  br label %200

197:                                              ; preds = %189
  br label %198

198:                                              ; preds = %197, %182
  %199 = load i64, i64* @E_OK, align 8
  store i64 %199, i64* %3, align 8
  br label %200

200:                                              ; preds = %198, %195, %179
  %201 = load i64, i64* %3, align 8
  ret i64 %201
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i64, i32) #2

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #2

declare dso_local i32 @CreateReassCommonTable(%struct.TYPE_18__*) #2

declare dso_local i64 @SetIpv4ReassmManip(%struct.TYPE_18__*) #2

declare dso_local i64 @SetIpv6ReassmManip(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
