; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os.h_os_reltime_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os.h_os_reltime_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_reltime = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.os_reltime*, %struct.os_reltime*, %struct.os_reltime*)* @os_reltime_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @os_reltime_sub(%struct.os_reltime* %0, %struct.os_reltime* %1, %struct.os_reltime* %2) #0 {
  %4 = alloca %struct.os_reltime*, align 8
  %5 = alloca %struct.os_reltime*, align 8
  %6 = alloca %struct.os_reltime*, align 8
  store %struct.os_reltime* %0, %struct.os_reltime** %4, align 8
  store %struct.os_reltime* %1, %struct.os_reltime** %5, align 8
  store %struct.os_reltime* %2, %struct.os_reltime** %6, align 8
  %7 = load %struct.os_reltime*, %struct.os_reltime** %4, align 8
  %8 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.os_reltime*, %struct.os_reltime** %5, align 8
  %11 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %15 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.os_reltime*, %struct.os_reltime** %4, align 8
  %17 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.os_reltime*, %struct.os_reltime** %5, align 8
  %20 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %24 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %26 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %31 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %35 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1000000
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %29, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
