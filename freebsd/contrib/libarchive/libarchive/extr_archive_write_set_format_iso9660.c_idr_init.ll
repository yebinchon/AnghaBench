; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_idr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_idr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vdd = type { i64 }
%struct.idr = type { i32, i64, i32* }

@VDD_JOLIET = common dso_local global i64 0, align 8
@d_characters_map = common dso_local global i32 0, align 4
@d1_characters_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso9660*, %struct.vdd*, %struct.idr*)* @idr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idr_init(%struct.iso9660* %0, %struct.vdd* %1, %struct.idr* %2) #0 {
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca %struct.vdd*, align 8
  %6 = alloca %struct.idr*, align 8
  store %struct.iso9660* %0, %struct.iso9660** %4, align 8
  store %struct.vdd* %1, %struct.vdd** %5, align 8
  store %struct.idr* %2, %struct.idr** %6, align 8
  %7 = load %struct.idr*, %struct.idr** %6, align 8
  %8 = getelementptr inbounds %struct.idr, %struct.idr* %7, i32 0, i32 2
  store i32* null, i32** %8, align 8
  %9 = load %struct.idr*, %struct.idr** %6, align 8
  %10 = getelementptr inbounds %struct.idr, %struct.idr* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.vdd*, %struct.vdd** %5, align 8
  %12 = getelementptr inbounds %struct.vdd, %struct.vdd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VDD_JOLIET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %3
  %17 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %18 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 3
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.idr*, %struct.idr** %6, align 8
  %24 = getelementptr inbounds %struct.idr, %struct.idr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @d_characters_map, align 4
  %27 = call i32 @memcpy(i32 %25, i32 %26, i32 4)
  br label %38

28:                                               ; preds = %16
  %29 = load %struct.idr*, %struct.idr** %6, align 8
  %30 = getelementptr inbounds %struct.idr, %struct.idr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @d1_characters_map, align 4
  %33 = call i32 @memcpy(i32 %31, i32 %32, i32 4)
  %34 = load %struct.idr*, %struct.idr** %6, align 8
  %35 = getelementptr inbounds %struct.idr, %struct.idr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @idr_relaxed_filenames(i32 %36)
  br label %38

38:                                               ; preds = %28, %22
  br label %39

39:                                               ; preds = %38, %3
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @idr_relaxed_filenames(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
