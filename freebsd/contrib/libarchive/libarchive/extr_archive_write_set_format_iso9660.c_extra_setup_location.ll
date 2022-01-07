; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_setup_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_setup_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.extr_rec*, %struct.extr_rec* }
%struct.extr_rec = type { %struct.extr_rec*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isoent*, i32)* @extra_setup_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extra_setup_location(%struct.isoent* %0, i32 %1) #0 {
  %3 = alloca %struct.isoent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.extr_rec*, align 8
  %6 = alloca i32, align 4
  store %struct.isoent* %0, %struct.isoent** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.isoent*, %struct.isoent** %3, align 8
  %8 = getelementptr inbounds %struct.isoent, %struct.isoent* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.extr_rec*, %struct.extr_rec** %9, align 8
  store %struct.extr_rec* %10, %struct.extr_rec** %5, align 8
  %11 = load %struct.extr_rec*, %struct.extr_rec** %5, align 8
  %12 = load %struct.isoent*, %struct.isoent** %3, align 8
  %13 = getelementptr inbounds %struct.isoent, %struct.isoent* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.extr_rec* %11, %struct.extr_rec** %14, align 8
  br label %15

15:                                               ; preds = %18, %2
  %16 = load %struct.extr_rec*, %struct.extr_rec** %5, align 8
  %17 = icmp ne %struct.extr_rec* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = load %struct.extr_rec*, %struct.extr_rec** %5, align 8
  %24 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.extr_rec*, %struct.extr_rec** %5, align 8
  %26 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.extr_rec*, %struct.extr_rec** %5, align 8
  %28 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %27, i32 0, i32 0
  %29 = load %struct.extr_rec*, %struct.extr_rec** %28, align 8
  store %struct.extr_rec* %29, %struct.extr_rec** %5, align 8
  br label %15

30:                                               ; preds = %15
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
