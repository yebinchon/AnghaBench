; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_init_sector0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_init_sector0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dos_partition* }
%struct.dos_partition = type { i64, i64, i32, i32 }

@mboot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DOSPTYP_386BSD = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i32 0, align 4
@dos_sectors = common dso_local global i64 0, align 8
@disksecs = common dso_local global i32 0, align 4
@dos_cylsecs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @init_sector0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sector0(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dos_partition*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.dos_partition*, %struct.dos_partition** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 0), align 8
  %5 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %4, i64 0
  store %struct.dos_partition* %5, %struct.dos_partition** %3, align 8
  %6 = call i32 (...) @init_boot()
  %7 = load i32, i32* @DOSPTYP_386BSD, align 4
  %8 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %9 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @ACTIVE, align 4
  %11 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %12 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @dos_sectors, align 8
  %15 = call i64 @roundup(i64 %13, i64 %14)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @dos_sectors, align 8
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i64, i64* %2, align 8
  %22 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %23 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @disksecs, align 4
  %25 = load i32, i32* @dos_cylsecs, align 4
  %26 = call i64 @rounddown(i32 %24, i32 %25)
  %27 = load i64, i64* %2, align 8
  %28 = sub i64 %26, %27
  %29 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %30 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %32 = call i32 @dos(%struct.dos_partition* %31)
  ret void
}

declare dso_local i32 @init_boot(...) #1

declare dso_local i64 @roundup(i64, i64) #1

declare dso_local i64 @rounddown(i32, i32) #1

declare dso_local i32 @dos(%struct.dos_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
