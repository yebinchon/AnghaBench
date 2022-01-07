; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ar.c_archive_write_ar_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ar.c_archive_write_ar_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32* }
%struct.ar_w = type { i64, %struct.ar_w* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @archive_write_ar_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_ar_free(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.ar_w*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %5 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %6 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to %struct.ar_w*
  store %struct.ar_w* %8, %struct.ar_w** %4, align 8
  %9 = load %struct.ar_w*, %struct.ar_w** %4, align 8
  %10 = icmp eq %struct.ar_w* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.ar_w*, %struct.ar_w** %4, align 8
  %15 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.ar_w*, %struct.ar_w** %4, align 8
  %20 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %19, i32 0, i32 1
  %21 = load %struct.ar_w*, %struct.ar_w** %20, align 8
  %22 = call i32 @free(%struct.ar_w* %21)
  %23 = load %struct.ar_w*, %struct.ar_w** %4, align 8
  %24 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %23, i32 0, i32 1
  store %struct.ar_w* null, %struct.ar_w** %24, align 8
  br label %25

25:                                               ; preds = %18, %13
  %26 = load %struct.ar_w*, %struct.ar_w** %4, align 8
  %27 = call i32 @free(%struct.ar_w* %26)
  %28 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @free(%struct.ar_w*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
