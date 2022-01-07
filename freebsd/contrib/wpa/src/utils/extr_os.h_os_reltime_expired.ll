; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os.h_os_reltime_expired.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os.h_os_reltime_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_reltime = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.os_reltime*, %struct.os_reltime*, i64)* @os_reltime_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_reltime_expired(%struct.os_reltime* %0, %struct.os_reltime* %1, i64 %2) #0 {
  %4 = alloca %struct.os_reltime*, align 8
  %5 = alloca %struct.os_reltime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.os_reltime, align 8
  store %struct.os_reltime* %0, %struct.os_reltime** %4, align 8
  store %struct.os_reltime* %1, %struct.os_reltime** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.os_reltime*, %struct.os_reltime** %4, align 8
  %9 = load %struct.os_reltime*, %struct.os_reltime** %5, align 8
  %10 = call i32 @os_reltime_sub(%struct.os_reltime* %8, %struct.os_reltime* %9, %struct.os_reltime* %7)
  %11 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %7, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %7, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i1 [ false, %15 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi i1 [ true, %3 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i32 @os_reltime_sub(%struct.os_reltime*, %struct.os_reltime*, %struct.os_reltime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
