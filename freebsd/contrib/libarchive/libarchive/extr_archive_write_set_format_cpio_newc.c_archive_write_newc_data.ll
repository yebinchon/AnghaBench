; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio_newc.c_archive_write_newc_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio_newc.c_archive_write_newc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct.cpio = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_write*, i8*, i64)* @archive_write_newc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @archive_write_newc_data(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cpio*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cpio*
  store %struct.cpio* %13, %struct.cpio** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.cpio*, %struct.cpio** %8, align 8
  %16 = getelementptr inbounds %struct.cpio, %struct.cpio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.cpio*, %struct.cpio** %8, align 8
  %21 = getelementptr inbounds %struct.cpio, %struct.cpio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @__archive_write_output(%struct.archive_write* %24, i8* %25, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.cpio*, %struct.cpio** %8, align 8
  %30 = getelementptr inbounds %struct.cpio, %struct.cpio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %4, align 8
  br label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %37, %35
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
