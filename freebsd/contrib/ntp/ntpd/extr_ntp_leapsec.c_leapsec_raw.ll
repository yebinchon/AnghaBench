; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_leapsec_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_leapsec_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.calendar = type { i32, i32, i64, i64, i64 }
%struct.TYPE_19__ = type { i32, i64, i64, %struct.TYPE_17__ }

@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @leapsec_raw(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.calendar, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = call i32 @ucmpv64(%struct.TYPE_17__* %21, i32* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %31, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %30, %20
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @ERANGE, align 4
  store i32 %46, i32* @errno, align 4
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %5, align 4
  br label %106

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %5, align 4
  br label %106

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = call i32 @ntpcal_ntp64_to_date(%struct.calendar* %11, %struct.TYPE_17__* %55)
  %57 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %64, %60, %54
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* @errno, align 4
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %5, align 4
  br label %106

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  %79 = call i64 @ntpcal_date_to_ntp64(%struct.calendar* %11)
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = bitcast %struct.TYPE_17__* %10 to i8*
  %83 = bitcast %struct.TYPE_17__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 8, i1 false)
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 3
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %86 = bitcast %struct.TYPE_17__* %84 to i8*
  %87 = bitcast %struct.TYPE_17__* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 8, i1 false)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  store i64 %95, i64* %96, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  store i64 %98, i64* %99, align 8
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %105 = call i32 @add_range(%struct.TYPE_18__* %104, %struct.TYPE_19__* %12)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %75, %72, %51, %45
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @ucmpv64(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ntpcal_ntp64_to_date(%struct.calendar*, %struct.TYPE_17__*) #1

declare dso_local i64 @ntpcal_date_to_ntp64(%struct.calendar*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_range(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
