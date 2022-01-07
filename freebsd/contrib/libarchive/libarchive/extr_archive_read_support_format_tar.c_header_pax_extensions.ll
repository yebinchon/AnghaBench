; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_pax_extensions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_pax_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32, i32, i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*)* @header_pax_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @header_pax_extensions(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.tar*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.tar* %1, %struct.tar** %8, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %15 = load %struct.tar*, %struct.tar** %8, align 8
  %16 = load %struct.tar*, %struct.tar** %8, align 8
  %17 = getelementptr inbounds %struct.tar, %struct.tar* %16, i32 0, i32 2
  %18 = load i8*, i8** %10, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = call i32 @read_body_to_string(%struct.archive_read* %14, %struct.tar* %15, i32* %17, i8* %18, i64* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %59

26:                                               ; preds = %5
  %27 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %28 = load %struct.tar*, %struct.tar** %8, align 8
  %29 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = call i32 @tar_read_header(%struct.archive_read* %27, %struct.tar* %28, %struct.archive_entry* %29, i64* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @ARCHIVE_WARN, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %59

41:                                               ; preds = %35, %26
  %42 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %43 = load %struct.tar*, %struct.tar** %8, align 8
  %44 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %45 = load %struct.tar*, %struct.tar** %8, align 8
  %46 = getelementptr inbounds %struct.tar, %struct.tar* %45, i32 0, i32 2
  %47 = call i32 @pax_header(%struct.archive_read* %42, %struct.tar* %43, %struct.archive_entry* %44, i32* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @err_combine(i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.tar*, %struct.tar** %8, align 8
  %52 = getelementptr inbounds %struct.tar, %struct.tar* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 0, %53
  %55 = and i32 511, %54
  %56 = load %struct.tar*, %struct.tar** %8, align 8
  %57 = getelementptr inbounds %struct.tar, %struct.tar* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %41, %39, %24
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @read_body_to_string(%struct.archive_read*, %struct.tar*, i32*, i8*, i64*) #1

declare dso_local i32 @tar_read_header(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i64*) #1

declare dso_local i32 @pax_header(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i32*) #1

declare dso_local i32 @err_combine(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
