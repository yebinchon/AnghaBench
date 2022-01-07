; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_calculate_update_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_calculate_update_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_reltime = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calculate_update_time(%struct.os_reltime* %0, i32 %1, %struct.os_reltime* %2) #0 {
  %4 = alloca %struct.os_reltime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.os_reltime*, align 8
  %7 = alloca i32, align 4
  store %struct.os_reltime* %0, %struct.os_reltime** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.os_reltime* %2, %struct.os_reltime** %6, align 8
  %8 = load %struct.os_reltime*, %struct.os_reltime** %4, align 8
  %9 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %12 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load %struct.os_reltime*, %struct.os_reltime** %4, align 8
  %14 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %17 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = udiv i32 %18, 1000
  %20 = zext i32 %19 to i64
  %21 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %22 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load i32, i32* %5, align 4
  %26 = urem i32 %25, 1000
  %27 = mul i32 %26, 1000
  store i32 %27, i32* %7, align 4
  %28 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %29 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %35 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %39 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add i32 %40, 1000000
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %33, %3
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %45 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub i32 %46, %43
  store i32 %47, i32* %45, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
