; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_archive_read_format_cpio_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_archive_read_format_cpio_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cpio = type { i64, i64, i64 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_cpio_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_cpio_skip(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.cpio*, align 8
  %5 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %6 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %7 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.cpio*
  store %struct.cpio* %11, %struct.cpio** %4, align 8
  %12 = load %struct.cpio*, %struct.cpio** %4, align 8
  %13 = getelementptr inbounds %struct.cpio, %struct.cpio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cpio*, %struct.cpio** %4, align 8
  %16 = getelementptr inbounds %struct.cpio, %struct.cpio* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.cpio*, %struct.cpio** %4, align 8
  %20 = getelementptr inbounds %struct.cpio, %struct.cpio* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @__archive_read_consume(%struct.archive_read* %24, i64 %25)
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %29, i32* %2, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.cpio*, %struct.cpio** %4, align 8
  %32 = getelementptr inbounds %struct.cpio, %struct.cpio* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.cpio*, %struct.cpio** %4, align 8
  %34 = getelementptr inbounds %struct.cpio, %struct.cpio* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.cpio*, %struct.cpio** %4, align 8
  %36 = getelementptr inbounds %struct.cpio, %struct.cpio* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %30, %28
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @__archive_read_consume(%struct.archive_read*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
