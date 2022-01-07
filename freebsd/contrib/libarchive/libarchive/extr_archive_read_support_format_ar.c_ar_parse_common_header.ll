; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_ar.c_ar_parse_common_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_ar.c_ar_parse_common_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar = type { i32, i32, i64 }
%struct.archive_entry = type { i32 }

@AE_IFREG = common dso_local global i32 0, align 4
@AR_date_offset = common dso_local global i32 0, align 4
@AR_date_size = common dso_local global i32 0, align 4
@AR_uid_offset = common dso_local global i32 0, align 4
@AR_uid_size = common dso_local global i32 0, align 4
@AR_gid_offset = common dso_local global i32 0, align 4
@AR_gid_size = common dso_local global i32 0, align 4
@AR_mode_offset = common dso_local global i32 0, align 4
@AR_mode_size = common dso_local global i32 0, align 4
@AR_size_offset = common dso_local global i32 0, align 4
@AR_size_size = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar*, %struct.archive_entry*, i8*)* @ar_parse_common_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar_parse_common_header(%struct.ar* %0, %struct.archive_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.ar*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ar* %0, %struct.ar** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %9 = load i32, i32* @AE_IFREG, align 4
  %10 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %8, i32 %9)
  %11 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @AR_date_offset, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i32, i32* @AR_date_size, align 4
  %17 = call i32 @ar_atol10(i8* %15, i32 %16)
  %18 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %11, i32 %17, i64 0)
  %19 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @AR_uid_offset, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i32, i32* @AR_uid_size, align 4
  %25 = call i32 @ar_atol10(i8* %23, i32 %24)
  %26 = call i32 @archive_entry_set_uid(%struct.archive_entry* %19, i32 %25)
  %27 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @AR_gid_offset, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i32, i32* @AR_gid_size, align 4
  %33 = call i32 @ar_atol10(i8* %31, i32 %32)
  %34 = call i32 @archive_entry_set_gid(%struct.archive_entry* %27, i32 %33)
  %35 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @AR_mode_offset, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* @AR_mode_size, align 4
  %41 = call i64 @ar_atol8(i8* %39, i32 %40)
  %42 = trunc i64 %41 to i32
  %43 = call i32 @archive_entry_set_mode(%struct.archive_entry* %35, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @AR_size_offset, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i32, i32* @AR_size_size, align 4
  %49 = call i32 @ar_atol10(i8* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.ar*, %struct.ar** %4, align 8
  %51 = getelementptr inbounds %struct.ar, %struct.ar* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = srem i32 %52, 2
  %54 = load %struct.ar*, %struct.ar** %4, align 8
  %55 = getelementptr inbounds %struct.ar, %struct.ar* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @archive_entry_set_size(%struct.archive_entry* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ar*, %struct.ar** %4, align 8
  %61 = getelementptr inbounds %struct.ar, %struct.ar* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %62
}

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i64) #1

declare dso_local i32 @ar_atol10(i8*, i32) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i64 @ar_atol8(i8*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
