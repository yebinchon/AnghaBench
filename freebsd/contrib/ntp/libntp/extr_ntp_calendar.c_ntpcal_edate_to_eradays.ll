; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_edate_to_eradays.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_edate_to_eradays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ntpcal_edate_to_eradays(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = call { i64, i64 } @ntpcal_days_in_months(i64 %13)
  %15 = bitcast %struct.TYPE_3__* %9 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = extractvalue { i64, i64 } %14, 0
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = extractvalue { i64, i64 } %14, 1
  store i64 %19, i64* %18, align 8
  %20 = bitcast %struct.TYPE_3__* %7 to i8*
  %21 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %22, %24
  %26 = call i64 @ntpcal_days_in_years(i64 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %26, %28
  store i64 %29, i64* %8, align 8
  br label %33

30:                                               ; preds = %3
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @ntpcal_days_in_years(i64 %31)
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %30, %12
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  ret i64 %37
}

declare dso_local { i64, i64 } @ntpcal_days_in_months(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ntpcal_days_in_years(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
