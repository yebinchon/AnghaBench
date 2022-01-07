; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_old_tar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_old_tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32, i32, i32 }
%struct.archive_entry = type { i32 }
%struct.archive_entry_header_ustar = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Pathname\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*)* @header_old_tar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @header_old_tar(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.tar*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.archive_entry_header_ustar*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.tar* %1, %struct.tar** %7, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.archive_entry_header_ustar*
  store %struct.archive_entry_header_ustar* %15, %struct.archive_entry_header_ustar** %10, align 8
  %16 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %17 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %18 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tar*, %struct.tar** %7, align 8
  %21 = getelementptr inbounds %struct.tar, %struct.tar* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @archive_entry_copy_pathname_l(%struct.archive_entry* %16, i32 %19, i32 4, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %27 = load %struct.tar*, %struct.tar** %7, align 8
  %28 = getelementptr inbounds %struct.tar, %struct.tar* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @set_conversion_failed_error(%struct.archive_read* %26, i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @ARCHIVE_FATAL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %57

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %4
  %38 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %39 = load %struct.tar*, %struct.tar** %7, align 8
  %40 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @header_common(%struct.archive_read* %38, %struct.tar* %39, %struct.archive_entry* %40, i8* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %37
  %49 = load %struct.tar*, %struct.tar** %7, align 8
  %50 = getelementptr inbounds %struct.tar, %struct.tar* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 0, %51
  %53 = and i32 511, %52
  %54 = load %struct.tar*, %struct.tar** %7, align 8
  %55 = getelementptr inbounds %struct.tar, %struct.tar* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %48, %34
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @archive_entry_copy_pathname_l(%struct.archive_entry*, i32, i32, i32) #1

declare dso_local i32 @set_conversion_failed_error(%struct.archive_read*, i32, i8*) #1

declare dso_local i32 @header_common(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
