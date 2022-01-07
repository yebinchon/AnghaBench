; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_leapsec_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_leapsec_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i64, i64, %struct.TYPE_18__, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64, i64, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__ }

@FALSE = common dso_local global i32 0, align 4
@LSPROX_SCHEDULE = common dso_local global i32 0, align 4
@SECSPERDAY = common dso_local global i64 0, align 8
@LSPROX_ANNOUNCE = common dso_local global i32 0, align 4
@LSPROX_ALERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @leapsec_query(%struct.TYPE_20__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca %struct.TYPE_18__, align 8
  %16 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @ntpcal_ntp_to_ntp(i64 %18, i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = bitcast %struct.TYPE_18__* %9 to i8*
  %24 = bitcast %struct.TYPE_18__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  %25 = load i32, i32* @FALSE, align 4
  %26 = call %struct.TYPE_19__* @leapsec_get_table(i32 %25)
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %8, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = call i32 @memset(%struct.TYPE_20__* %27, i32 0, i32 56)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 6
  %32 = call i64 @ucmpv64(%struct.TYPE_18__* %9, %struct.TYPE_18__* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = call i32 @reload_limits(%struct.TYPE_19__* %35, %struct.TYPE_18__* %9)
  br label %106

37:                                               ; preds = %3
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  %41 = call i64 @ucmpv64(%struct.TYPE_18__* %9, %struct.TYPE_18__* %40)
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %105

43:                                               ; preds = %37
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 3
  %47 = call i64 @addv64i32(%struct.TYPE_18__* %46, i32 3)
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = bitcast %struct.TYPE_18__* %10 to i8*
  %51 = bitcast %struct.TYPE_18__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 8, i1 false)
  %52 = call i64 @ucmpv64(%struct.TYPE_18__* %9, %struct.TYPE_18__* %10)
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %56 = call i32 @reload_limits(%struct.TYPE_19__* %55, %struct.TYPE_18__* %9)
  br label %104

57:                                               ; preds = %43
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 5
  %61 = bitcast %struct.TYPE_18__* %10 to i8*
  %62 = bitcast %struct.TYPE_18__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 8, i1 false)
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %65, %71
  %73 = trunc i64 %72 to i32
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @addv64i32(%struct.TYPE_18__* %9, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = bitcast %struct.TYPE_18__* %11 to i8*
  %83 = bitcast %struct.TYPE_18__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 8, i1 false)
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = call i32 @reload_limits(%struct.TYPE_19__* %84, %struct.TYPE_18__* %11)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 6
  %89 = call i64 @ucmpv64(%struct.TYPE_18__* %88, %struct.TYPE_18__* %10)
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %57
  %95 = bitcast %struct.TYPE_18__* %9 to i8*
  %96 = bitcast %struct.TYPE_18__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 8, i1 false)
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %6, align 8
  br label %103

100:                                              ; preds = %57
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %94
  br label %104

104:                                              ; preds = %103, %54
  br label %105

105:                                              ; preds = %104, %37
  br label %106

106:                                              ; preds = %105, %34
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 7
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 6
  %118 = bitcast %struct.TYPE_18__* %114 to i8*
  %119 = bitcast %struct.TYPE_18__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 8, i1 false)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 5
  %125 = bitcast %struct.TYPE_18__* %121 to i8*
  %126 = bitcast %struct.TYPE_18__* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 8, i1 false)
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 4
  %130 = call i64 @ucmpv64(%struct.TYPE_18__* %9, %struct.TYPE_18__* %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %106
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %4, align 4
  br label %192

134:                                              ; preds = %106
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %12, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %144, %148
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 4
  store i64 %149, i64* %151, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %6, align 8
  %154 = sub nsw i64 %152, %153
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* @LSPROX_SCHEDULE, align 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* @SECSPERDAY, align 8
  %168 = sub nsw i64 %166, %167
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @betweenu32(i64 %168, i64 %169, i64 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %134
  %174 = load i32, i32* %13, align 4
  store i32 %174, i32* %4, align 4
  br label %192

175:                                              ; preds = %134
  %176 = load i32, i32* @LSPROX_ANNOUNCE, align 4
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i64, i64* %12, align 8
  %180 = sub nsw i64 %179, 10
  %181 = load i64, i64* %6, align 8
  %182 = load i64, i64* %12, align 8
  %183 = call i32 @betweenu32(i64 %180, i64 %181, i64 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %175
  %186 = load i32, i32* %13, align 4
  store i32 %186, i32* %4, align 4
  br label %192

187:                                              ; preds = %175
  %188 = load i32, i32* @LSPROX_ALERT, align 4
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %187, %185, %173, %132
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i64 @ntpcal_ntp_to_ntp(i64, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_19__* @leapsec_get_table(i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @ucmpv64(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @reload_limits(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i64 @addv64i32(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @betweenu32(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
