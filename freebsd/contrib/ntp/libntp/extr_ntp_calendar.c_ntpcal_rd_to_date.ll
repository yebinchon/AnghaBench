; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_rd_to_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_rd_to_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calendar = type { i32, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i64 }

@DAYSPERWEEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntpcal_rd_to_date(%struct.calendar* %0, i32 %1) #0 {
  %3 = alloca %struct.calendar*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  store %struct.calendar* %0, %struct.calendar** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DAYSPERWEEK, align 4
  %12 = srem i32 %10, %11
  %13 = load %struct.calendar*, %struct.calendar** %3, align 8
  %14 = getelementptr inbounds %struct.calendar, %struct.calendar* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.calendar*, %struct.calendar** %3, align 8
  %16 = getelementptr inbounds %struct.calendar, %struct.calendar* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DAYSPERWEEK, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @DAYSPERWEEK, align 4
  %22 = load %struct.calendar*, %struct.calendar** %3, align 8
  %23 = getelementptr inbounds %struct.calendar, %struct.calendar* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call { i32, i64 } @ntpcal_split_eradays(i32 %28, i32* %6)
  %30 = bitcast %struct.TYPE_4__* %8 to { i32, i64 }*
  %31 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %30, i32 0, i32 0
  %32 = extractvalue { i32, i64 } %29, 0
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %30, i32 0, i32 1
  %34 = extractvalue { i32, i64 } %29, 1
  store i64 %34, i64* %33, align 8
  %35 = bitcast %struct.TYPE_4__* %5 to i8*
  %36 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 16
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = sub i32 0, %44
  store i32 %45, i32* %7, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.calendar*, %struct.calendar** %3, align 8
  %53 = getelementptr inbounds %struct.calendar, %struct.calendar* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = getelementptr i8, i8* %56, i64 1
  %58 = load %struct.calendar*, %struct.calendar** %3, align 8
  %59 = getelementptr inbounds %struct.calendar, %struct.calendar* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call { i32, i64 } @ntpcal_split_yeardays(i64 %61, i32 %62)
  %64 = bitcast %struct.TYPE_4__* %9 to { i32, i64 }*
  %65 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %64, i32 0, i32 0
  %66 = extractvalue { i32, i64 } %63, 0
  store i32 %66, i32* %65, align 8
  %67 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %64, i32 0, i32 1
  %68 = extractvalue { i32, i64 } %63, 1
  store i64 %68, i64* %67, align 8
  %69 = bitcast %struct.TYPE_4__* %5 to i8*
  %70 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = getelementptr i8, i8* %74, i64 1
  %76 = load %struct.calendar*, %struct.calendar** %3, align 8
  %77 = getelementptr inbounds %struct.calendar, %struct.calendar* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = getelementptr i8, i8* %80, i64 1
  %82 = load %struct.calendar*, %struct.calendar** %3, align 8
  %83 = getelementptr inbounds %struct.calendar, %struct.calendar* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %26
  %87 = load i32, i32* %6, align 4
  br label %89

88:                                               ; preds = %26
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ -1, %88 ]
  ret i32 %90
}

declare dso_local { i32, i64 } @ntpcal_split_eradays(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i32, i64 } @ntpcal_split_yeardays(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
