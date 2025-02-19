; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parseutil.c_sldns_mon_and_mday_from_year_and_yday.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parseutil.c_sldns_mon_and_mday_from_year_and_yday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i32, i32 }

@leap_year_mdays = common dso_local global i32* null, align 8
@mdays = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*)* @sldns_mon_and_mday_from_year_and_yday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sldns_mon_and_mday_from_year_and_yday(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.tm* %0, %struct.tm** %2, align 8
  %5 = load %struct.tm*, %struct.tm** %2, align 8
  %6 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.tm*, %struct.tm** %2, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @is_leap_year(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32*, i32** @leap_year_mdays, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load i32*, i32** @mdays, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32* [ %14, %13 ], [ %16, %15 ]
  store i32* %18, i32** %4, align 8
  %19 = load %struct.tm*, %struct.tm** %2, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %30, %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.tm*, %struct.tm** %2, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %22, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.tm*, %struct.tm** %2, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = getelementptr inbounds i32, i32* %31, i64 %34
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.tm*, %struct.tm** %2, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  ret void
}

declare dso_local i64 @is_leap_year(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
