; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parseutil.c_sldns_year_and_yday_from_days_since_epoch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parseutil.c_sldns_year_and_yday_from_days_since_epoch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.tm*)* @sldns_year_and_yday_from_days_since_epoch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sldns_year_and_yday_from_days_since_epoch(i64 %0, %struct.tm* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  store i32 1970, i32* %5, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i64, i64* %3, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @is_leap_year(i32 %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 366, i32 365
  %17 = sext i32 %16 to i64
  %18 = icmp sge i64 %11, %17
  br label %19

19:                                               ; preds = %10, %7
  %20 = phi i1 [ true, %7 ], [ %18, %10 ]
  br i1 %20, label %21, label %40

21:                                               ; preds = %19
  %22 = load i32, i32* %5, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @LDNS_DIV(i64 %23, i32 365)
  %25 = trunc i64 %24 to i32
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %27, %28
  %30 = mul nsw i32 %29, 365
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %3, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @leap_days(i32 %34, i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %3, align 8
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %5, align 4
  br label %7

40:                                               ; preds = %19
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.tm*, %struct.tm** %4, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %3, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.tm*, %struct.tm** %4, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local i64 @is_leap_year(i32) #1

declare dso_local i64 @LDNS_DIV(i64, i32) #1

declare dso_local i64 @leap_days(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
