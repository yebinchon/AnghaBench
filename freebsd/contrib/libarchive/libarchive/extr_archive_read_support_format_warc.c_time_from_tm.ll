; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c_time_from_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c_time_from_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tm*)* @time_from_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @time_from_tm(%struct.tm* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tm*, align 8
  store %struct.tm* %0, %struct.tm** %3, align 8
  %4 = load %struct.tm*, %struct.tm** %3, align 8
  %5 = call i64 @mktime(%struct.tm* %4)
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 -1, i64* %2, align 8
  br label %55

8:                                                ; preds = %1
  %9 = load %struct.tm*, %struct.tm** %3, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tm*, %struct.tm** %3, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 60
  %16 = add nsw i32 %11, %15
  %17 = load %struct.tm*, %struct.tm** %3, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 3600
  %21 = add nsw i32 %16, %20
  %22 = load %struct.tm*, %struct.tm** %3, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 86400
  %26 = add nsw i32 %21, %25
  %27 = load %struct.tm*, %struct.tm** %3, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 70
  %31 = mul nsw i32 %30, 31536000
  %32 = add nsw i32 %26, %31
  %33 = load %struct.tm*, %struct.tm** %3, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 69
  %37 = sdiv i32 %36, 4
  %38 = mul nsw i32 %37, 86400
  %39 = add nsw i32 %32, %38
  %40 = load %struct.tm*, %struct.tm** %3, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sdiv i32 %43, 100
  %45 = mul nsw i32 %44, 86400
  %46 = sub nsw i32 %39, %45
  %47 = load %struct.tm*, %struct.tm** %3, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 299
  %51 = sdiv i32 %50, 400
  %52 = mul nsw i32 %51, 86400
  %53 = add nsw i32 %46, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %2, align 8
  br label %55

55:                                               ; preds = %8, %7
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i64 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
