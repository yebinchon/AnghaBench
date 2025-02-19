; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_edate_to_yeardays.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_edate_to_yeardays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@real_month_table = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntpcal_edate_to_yeardays(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 0, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 12
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load i64**, i64*** @real_month_table, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @is_leapyear(i32 %18)
  %20 = getelementptr inbounds i64*, i64** %17, i64 %19
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %55

30:                                               ; preds = %11, %3
  %31 = load i32, i32* %5, align 4
  %32 = call { i32, i64 } @ntpcal_days_in_months(i32 %31)
  %33 = bitcast %struct.TYPE_3__* %8 to { i32, i64 }*
  %34 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %33, i32 0, i32 0
  %35 = extractvalue { i32, i64 } %32, 0
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %33, i32 0, i32 1
  %37 = extractvalue { i32, i64 } %32, 1
  store i64 %37, i64* %36, align 8
  %38 = bitcast %struct.TYPE_3__* %7 to i8*
  %39 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %42, %44
  %46 = call i64 @ntpcal_days_in_years(i32 %45)
  %47 = add nsw i64 %41, %46
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @ntpcal_days_in_years(i32 %48)
  %50 = sub nsw i64 %47, %49
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %30, %14
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @is_leapyear(i32) #1

declare dso_local { i32, i64 } @ntpcal_days_in_months(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ntpcal_days_in_years(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
