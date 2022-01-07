; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_file_extra_htime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_file_extra_htime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_entry = type { i32 }
%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, %struct.rar5*, i64*)* @parse_file_extra_htime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_file_extra_htime(%struct.archive_read* %0, %struct.archive_entry* %1, %struct.rar5* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.rar5*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %7, align 8
  store %struct.rar5* %2, %struct.rar5** %8, align 8
  store i64* %3, i64** %9, align 8
  store i8 0, i8* %10, align 1
  %13 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %14 = call i32 @read_var_sized(%struct.archive_read* %13, i64* %11, i64* %12)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %17, i32* %5, align 4
  br label %107

18:                                               ; preds = %4
  %19 = load i64, i64* %12, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %21, %19
  store i64 %22, i64* %20, align 8
  %23 = load i64, i64* @ARCHIVE_OK, align 8
  %24 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @consume(%struct.archive_read* %24, i64 %25)
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %29, i32* %5, align 4
  br label %107

30:                                               ; preds = %18
  %31 = load i64, i64* %11, align 8
  %32 = and i64 %31, 1
  %33 = trunc i64 %32 to i8
  store i8 %33, i8* %10, align 1
  %34 = load i64, i64* %11, align 8
  %35 = and i64 %34, 2
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %39 = load i8, i8* %10, align 1
  %40 = load %struct.rar5*, %struct.rar5** %8, align 8
  %41 = getelementptr inbounds %struct.rar5, %struct.rar5* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i64*, i64** %9, align 8
  %44 = call i32 @parse_htime_item(%struct.archive_read* %38, i8 signext %39, i32* %42, i64* %43)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %46 = load %struct.rar5*, %struct.rar5** %8, align 8
  %47 = getelementptr inbounds %struct.rar5, %struct.rar5* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %45, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %37, %30
  %52 = load i64, i64* %11, align 8
  %53 = and i64 %52, 4
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %57 = load i8, i8* %10, align 1
  %58 = load %struct.rar5*, %struct.rar5** %8, align 8
  %59 = getelementptr inbounds %struct.rar5, %struct.rar5* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64*, i64** %9, align 8
  %62 = call i32 @parse_htime_item(%struct.archive_read* %56, i8 signext %57, i32* %60, i64* %61)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %64 = load %struct.rar5*, %struct.rar5** %8, align 8
  %65 = getelementptr inbounds %struct.rar5, %struct.rar5* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %63, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %55, %51
  %70 = load i64, i64* %11, align 8
  %71 = and i64 %70, 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %75 = load i8, i8* %10, align 1
  %76 = load %struct.rar5*, %struct.rar5** %8, align 8
  %77 = getelementptr inbounds %struct.rar5, %struct.rar5* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64*, i64** %9, align 8
  %80 = call i32 @parse_htime_item(%struct.archive_read* %74, i8 signext %75, i32* %78, i64* %79)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %82 = load %struct.rar5*, %struct.rar5** %8, align 8
  %83 = getelementptr inbounds %struct.rar5, %struct.rar5* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @archive_entry_set_atime(%struct.archive_entry* %81, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %73, %69
  %88 = load i64, i64* %11, align 8
  %89 = and i64 %88, 16
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %93 = load %struct.rar5*, %struct.rar5** %8, align 8
  %94 = getelementptr inbounds %struct.rar5, %struct.rar5* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = call i32 @read_u32(%struct.archive_read* %92, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %99, i32* %5, align 4
  br label %107

100:                                              ; preds = %91
  %101 = load i64*, i64** %9, align 8
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, 4
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %100, %87
  %105 = load i64, i64* @ARCHIVE_OK, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %104, %98, %28, %16
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @read_var_sized(%struct.archive_read*, i64*, i64*) #1

declare dso_local i64 @consume(%struct.archive_read*, i64) #1

declare dso_local i32 @parse_htime_item(%struct.archive_read*, i8 signext, i32*, i64*) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @read_u32(%struct.archive_read*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
