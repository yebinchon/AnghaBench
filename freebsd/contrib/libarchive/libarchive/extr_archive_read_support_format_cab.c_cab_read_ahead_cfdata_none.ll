; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_read_ahead_cfdata_none.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_read_ahead_cfdata_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cab = type { %struct.cfdata* }
%struct.cfdata = type { i64, i8*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.archive_read*, i64*)* @cab_read_ahead_cfdata_none to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cab_read_ahead_cfdata_none(%struct.archive_read* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.cab*, align 8
  %7 = alloca %struct.cfdata*, align 8
  %8 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %10 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.cab*
  store %struct.cab* %14, %struct.cab** %6, align 8
  %15 = load %struct.cab*, %struct.cab** %6, align 8
  %16 = getelementptr inbounds %struct.cab, %struct.cab* %15, i32 0, i32 0
  %17 = load %struct.cfdata*, %struct.cfdata** %16, align 8
  store %struct.cfdata* %17, %struct.cfdata** %7, align 8
  %18 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = call i8* @__archive_read_ahead(%struct.archive_read* %18, i32 1, i64* %19)
  store i8* %20, i8** %8, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %26 = call i64 @truncated_error(%struct.archive_read* %25)
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  store i8* null, i8** %3, align 8
  br label %54

28:                                               ; preds = %2
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %32 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %37 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %42 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %45 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %49 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %52 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %8, align 8
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %40, %24
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i64*) #1

declare dso_local i64 @truncated_error(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
