; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_strptime.c_set_week_number_mon4.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_strptime.c_set_week_number_mon4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i64 }

@tm_year_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*, i32)* @set_week_number_mon4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_week_number_mon4(%struct.tm* %0, i32 %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tm*, %struct.tm** %3, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @tm_year_base, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @first_day(i64 %11)
  %13 = add nsw i32 %12, 6
  %14 = srem i32 %13, 7
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 7
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  %24 = mul nsw i32 %23, 7
  %25 = add nsw i32 %21, %24
  %26 = load %struct.tm*, %struct.tm** %3, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load %struct.tm*, %struct.tm** %3, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tm*, %struct.tm** %3, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %20
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.tm*, %struct.tm** %3, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.tm*, %struct.tm** %3, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %38, %20
  ret void
}

declare dso_local i32 @first_day(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
