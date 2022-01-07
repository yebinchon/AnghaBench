; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct._7zip = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct._7zip* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @_7z_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_7z_free(%struct.archive_write* %0) #0 {
  %2 = alloca %struct.archive_write*, align 8
  %3 = alloca %struct._7zip*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %2, align 8
  %4 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %5 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct._7zip*
  store %struct._7zip* %7, %struct._7zip** %3, align 8
  %8 = load %struct._7zip*, %struct._7zip** %3, align 8
  %9 = getelementptr inbounds %struct._7zip, %struct._7zip* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct._7zip*, %struct._7zip** %3, align 8
  %14 = getelementptr inbounds %struct._7zip, %struct._7zip* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @close(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct._7zip*, %struct._7zip** %3, align 8
  %19 = call i32 @file_free_register(%struct._7zip* %18)
  %20 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 0
  %22 = load %struct._7zip*, %struct._7zip** %3, align 8
  %23 = getelementptr inbounds %struct._7zip, %struct._7zip* %22, i32 0, i32 2
  %24 = call i32 @compression_end(i32* %21, i32* %23)
  %25 = load %struct._7zip*, %struct._7zip** %3, align 8
  %26 = getelementptr inbounds %struct._7zip, %struct._7zip* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct._7zip*, %struct._7zip** %27, align 8
  %29 = call i32 @free(%struct._7zip* %28)
  %30 = load %struct._7zip*, %struct._7zip** %3, align 8
  %31 = call i32 @free(%struct._7zip* %30)
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %32
}

declare dso_local i32 @close(i64) #1

declare dso_local i32 @file_free_register(%struct._7zip*) #1

declare dso_local i32 @compression_end(i32*, i32*) #1

declare dso_local i32 @free(%struct._7zip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
