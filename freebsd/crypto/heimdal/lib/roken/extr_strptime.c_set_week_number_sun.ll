; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_strptime.c_set_week_number_sun.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_strptime.c_set_week_number_sun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i64 }

@tm_year_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*, i32)* @set_week_number_sun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_week_number_sun(%struct.tm* %0, i32 %1) #0 {
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
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 %12, 7
  %14 = load %struct.tm*, %struct.tm** %3, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load %struct.tm*, %struct.tm** %3, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.tm*, %struct.tm** %3, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.tm*, %struct.tm** %3, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.tm*, %struct.tm** %3, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @first_day(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
