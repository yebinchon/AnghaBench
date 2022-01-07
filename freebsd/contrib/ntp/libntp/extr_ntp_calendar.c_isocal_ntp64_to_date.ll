; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_isocal_ntp64_to_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_isocal_ntp64_to_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isodate = type { i8*, i64, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32 }

@DAY_NTP_STARTS = common dso_local global i32 0, align 4
@DAYSPERWEEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isocal_ntp64_to_date(%struct.isodate* %0, i32* %1) #0 {
  %3 = alloca %struct.isodate*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca [3 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  store %struct.isodate* %0, %struct.isodate** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @ntpcal_daysplit(i32* %12)
  %14 = bitcast %struct.TYPE_4__* %10 to i64*
  store i64 %13, i64* %14, align 4
  %15 = bitcast %struct.TYPE_4__* %5 to i8*
  %16 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 8, i1 false)
  %17 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @priv_timesplit(i64* %17, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %20
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %27 = load i64, i64* %26, align 16
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.isodate*, %struct.isodate** %3, align 8
  %30 = getelementptr inbounds %struct.isodate, %struct.isodate* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.isodate*, %struct.isodate** %3, align 8
  %35 = getelementptr inbounds %struct.isodate, %struct.isodate* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %37 = load i64, i64* %36, align 16
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.isodate*, %struct.isodate** %3, align 8
  %40 = getelementptr inbounds %struct.isodate, %struct.isodate* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @DAY_NTP_STARTS, align 4
  %42 = sub nsw i32 %41, 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @int32_sflag(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @int32_to_uint32_2cpl(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = xor i32 %53, %54
  %56 = load i32, i32* @DAYSPERWEEK, align 4
  %57 = sdiv i32 %55, %56
  %58 = xor i32 %52, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @DAYSPERWEEK, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @uint32_2cpl_to_int32(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = getelementptr i8, i8* %72, i64 1
  %74 = load %struct.isodate*, %struct.isodate** %3, align 8
  %75 = getelementptr inbounds %struct.isodate, %struct.isodate* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @isocal_split_eraweeks(i32 %77)
  %79 = bitcast %struct.TYPE_4__* %11 to i64*
  store i64 %78, i64* %79, align 4
  %80 = bitcast %struct.TYPE_4__* %5 to i8*
  %81 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 8, i1 false)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, 1
  %86 = load %struct.isodate*, %struct.isodate** %3, align 8
  %87 = getelementptr inbounds %struct.isodate, %struct.isodate* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = getelementptr i8, i8* %91, i64 1
  %93 = load %struct.isodate*, %struct.isodate** %3, align 8
  %94 = getelementptr inbounds %struct.isodate, %struct.isodate* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 65535
  br label %102

102:                                              ; preds = %98, %2
  %103 = phi i1 [ false, %2 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  ret i32 %104
}

declare dso_local i64 @ntpcal_daysplit(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @priv_timesplit(i64*, i32) #1

declare dso_local i32 @int32_sflag(i32) #1

declare dso_local i32 @int32_to_uint32_2cpl(i32) #1

declare dso_local i32 @uint32_2cpl_to_int32(i32) #1

declare dso_local i64 @isocal_split_eraweeks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
