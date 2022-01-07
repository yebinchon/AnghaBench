; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_strptime.c_set_week_number_mon.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_strptime.c_set_week_number_mon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i64 }

@tm_year_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*, i32)* @set_week_number_mon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_week_number_mon(%struct.tm* %0, i32 %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tm*, %struct.tm** %3, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @tm_year_base, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @first_day(i64 %10)
  %12 = add nsw i32 %11, 6
  %13 = srem i32 %12, 7
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 7
  %16 = load %struct.tm*, %struct.tm** %3, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 6
  %20 = srem i32 %19, 7
  %21 = add nsw i32 %15, %20
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load %struct.tm*, %struct.tm** %3, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tm*, %struct.tm** %3, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = srem i32 %32, 7
  %34 = load %struct.tm*, %struct.tm** %3, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tm*, %struct.tm** %3, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @first_day(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
