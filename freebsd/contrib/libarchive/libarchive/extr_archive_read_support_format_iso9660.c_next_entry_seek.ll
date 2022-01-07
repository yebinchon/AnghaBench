; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_next_entry_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_next_entry_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.iso9660 = type { i64, i64 }
%struct.file_info = type { i64, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.iso9660*, %struct.file_info**)* @next_entry_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_entry_seek(%struct.archive_read* %0, %struct.iso9660* %1, %struct.file_info** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.iso9660*, align 8
  %7 = alloca %struct.file_info**, align 8
  %8 = alloca %struct.file_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.iso9660* %1, %struct.iso9660** %6, align 8
  store %struct.file_info** %2, %struct.file_info*** %7, align 8
  %11 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %12 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %13 = load %struct.file_info**, %struct.file_info*** %7, align 8
  %14 = call i32 @next_cache_entry(%struct.archive_read* %11, %struct.iso9660* %12, %struct.file_info** %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %78

20:                                               ; preds = %3
  %21 = load %struct.file_info**, %struct.file_info*** %7, align 8
  %22 = load %struct.file_info*, %struct.file_info** %21, align 8
  store %struct.file_info* %22, %struct.file_info** %8, align 8
  %23 = load %struct.file_info*, %struct.file_info** %8, align 8
  %24 = getelementptr inbounds %struct.file_info, %struct.file_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %29 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.file_info*, %struct.file_info** %8, align 8
  %32 = getelementptr inbounds %struct.file_info, %struct.file_info* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %35 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %40 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %41 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @__archive_read_consume(%struct.archive_read* %39, i64 %42)
  %44 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %45 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %38, %33
  %47 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %48 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.file_info*, %struct.file_info** %8, align 8
  %51 = getelementptr inbounds %struct.file_info, %struct.file_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %46
  %55 = load %struct.file_info*, %struct.file_info** %8, align 8
  %56 = getelementptr inbounds %struct.file_info, %struct.file_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %59 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  store i64 %61, i64* %10, align 8
  %62 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i64 @__archive_read_consume(%struct.archive_read* %62, i64 %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i64, i64* %10, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %78

70:                                               ; preds = %54
  %71 = load %struct.file_info*, %struct.file_info** %8, align 8
  %72 = getelementptr inbounds %struct.file_info, %struct.file_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %75 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %46
  %77 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %67, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @next_cache_entry(%struct.archive_read*, %struct.iso9660*, %struct.file_info**) #1

declare dso_local i64 @__archive_read_consume(%struct.archive_read*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
