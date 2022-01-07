; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_ar.c_archive_read_format_ar_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_ar.c_archive_read_format_ar_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.ar = type { i32 }

@ARCHIVE_FORMAT_AR = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @archive_read_format_ar_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_ar_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.ar*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %10 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ar*
  store %struct.ar* %15, %struct.ar** %6, align 8
  %16 = load %struct.ar*, %struct.ar** %6, align 8
  %17 = getelementptr inbounds %struct.ar, %struct.ar* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %22 = call i32 @__archive_read_consume(%struct.archive_read* %21, i64 8)
  %23 = load %struct.ar*, %struct.ar** %6, align 8
  %24 = getelementptr inbounds %struct.ar, %struct.ar* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @ARCHIVE_FORMAT_AR, align 4
  %26 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %27 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  br label %29

29:                                               ; preds = %20, %2
  %30 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %31 = call i8* @__archive_read_ahead(%struct.archive_read* %30, i32 60, i32* null)
  store i8* %31, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %29
  store i64 60, i64* %7, align 8
  %36 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %37 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %38 = load %struct.ar*, %struct.ar** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @_ar_read_header(%struct.archive_read* %36, %struct.archive_entry* %37, %struct.ar* %38, i8* %39, i64* %7)
  store i32 %40, i32* %9, align 4
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @__archive_read_consume(%struct.archive_read* %44, i64 %45)
  br label %47

47:                                               ; preds = %43, %35
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %33
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @_ar_read_header(%struct.archive_read*, %struct.archive_entry*, %struct.ar*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
