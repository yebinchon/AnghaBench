; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_caltontp.c_caltontp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_caltontp.c_caltontp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calendar = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MINSPERHR = common dso_local global i64 0, align 8
@SECSPERMIN = common dso_local global i64 0, align 8
@DAY_NTP_STARTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caltontp(%struct.calendar* %0) #0 {
  %2 = alloca %struct.calendar*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  store %struct.calendar* %0, %struct.calendar** %2, align 8
  %6 = load %struct.calendar*, %struct.calendar** %2, align 8
  %7 = icmp ne %struct.calendar* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @REQUIRE(i32 %8)
  %10 = load %struct.calendar*, %struct.calendar** %2, align 8
  %11 = getelementptr inbounds %struct.calendar, %struct.calendar* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 13
  %14 = zext i1 %13 to i32
  %15 = call i32 @REQUIRE(i32 %14)
  %16 = load %struct.calendar*, %struct.calendar** %2, align 8
  %17 = getelementptr inbounds %struct.calendar, %struct.calendar* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 32
  %20 = zext i1 %19 to i32
  %21 = call i32 @REQUIRE(i32 %20)
  %22 = load %struct.calendar*, %struct.calendar** %2, align 8
  %23 = getelementptr inbounds %struct.calendar, %struct.calendar* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %24, 366
  %26 = zext i1 %25 to i32
  %27 = call i32 @REQUIRE(i32 %26)
  %28 = load %struct.calendar*, %struct.calendar** %2, align 8
  %29 = getelementptr inbounds %struct.calendar, %struct.calendar* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 24
  %32 = zext i1 %31 to i32
  %33 = call i32 @REQUIRE(i32 %32)
  %34 = load %struct.calendar*, %struct.calendar** %2, align 8
  %35 = getelementptr inbounds %struct.calendar, %struct.calendar* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MINSPERHR, align 8
  %38 = icmp sle i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @REQUIRE(i32 %39)
  %41 = load %struct.calendar*, %struct.calendar** %2, align 8
  %42 = getelementptr inbounds %struct.calendar, %struct.calendar* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SECSPERMIN, align 8
  %45 = icmp sle i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @REQUIRE(i32 %46)
  %48 = load %struct.calendar*, %struct.calendar** %2, align 8
  %49 = getelementptr inbounds %struct.calendar, %struct.calendar* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %1
  %53 = load %struct.calendar*, %struct.calendar** %2, align 8
  %54 = getelementptr inbounds %struct.calendar, %struct.calendar* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @ntpcal_year_to_ystart(i32 %55)
  %57 = load %struct.calendar*, %struct.calendar** %2, align 8
  %58 = getelementptr inbounds %struct.calendar, %struct.calendar* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = sub nsw i64 %61, 1
  store i64 %62, i64* %3, align 8
  br label %66

63:                                               ; preds = %1
  %64 = load %struct.calendar*, %struct.calendar** %2, align 8
  %65 = call i64 @ntpcal_date_to_rd(%struct.calendar* %64)
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %63, %52
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @DAY_NTP_STARTS, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load %struct.calendar*, %struct.calendar** %2, align 8
  %71 = getelementptr inbounds %struct.calendar, %struct.calendar* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.calendar*, %struct.calendar** %2, align 8
  %74 = getelementptr inbounds %struct.calendar, %struct.calendar* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.calendar*, %struct.calendar** %2, align 8
  %77 = getelementptr inbounds %struct.calendar, %struct.calendar* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @ntpcal_etime_to_seconds(i32 %72, i64 %75, i64 %78)
  %80 = call i32 @ntpcal_dayjoin(i64 %69, i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = bitcast %struct.TYPE_5__* %4 to i8*
  %84 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 4, i1 false)
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  ret i32 %87
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @ntpcal_year_to_ystart(i32) #1

declare dso_local i64 @ntpcal_date_to_rd(%struct.calendar*) #1

declare dso_local i32 @ntpcal_dayjoin(i64, i32) #1

declare dso_local i32 @ntpcal_etime_to_seconds(i32, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
