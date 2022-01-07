; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_setup_boot_information.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_setup_boot_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.isoent* }
%struct.isoent = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Boot file(%jd) is too small\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't read temporary file(%jd)\00", align 1
@SYSTEM_AREA_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @setup_boot_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_boot_information(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca %struct.isoent*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %12 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %13 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %12, i32 0, i32 1
  %14 = load %struct.iso9660*, %struct.iso9660** %13, align 8
  store %struct.iso9660* %14, %struct.iso9660** %4, align 8
  %15 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %16 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.isoent*, %struct.isoent** %17, align 8
  store %struct.isoent* %18, %struct.isoent** %5, align 8
  %19 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %20 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.isoent*, %struct.isoent** %5, align 8
  %23 = getelementptr inbounds %struct.isoent, %struct.isoent* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 64
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i32 @lseek(i32 %21, i64 %28, i32 %29)
  %31 = load %struct.isoent*, %struct.isoent** %5, align 8
  %32 = getelementptr inbounds %struct.isoent, %struct.isoent* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @archive_entry_size(i32 %35)
  %37 = sub nsw i64 %36, 64
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %1
  %41 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %42 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %41, i32 0, i32 0
  %43 = load i32, i32* @errno, align 4
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %44, 64
  %46 = call i32 @archive_set_error(i32* %42, i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %47, i32* %2, align 4
  br label %147

48:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %89, %48
  %50 = load i64, i64* %6, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %93

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  %54 = icmp sgt i64 %53, 4096
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i64 4096, i64* %9, align 8
  br label %58

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %56, %55
  %59 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %60 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @read(i32 %61, i8* %62, i64 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %69 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %68, i32 0, i32 0
  %70 = load i32, i32* @errno, align 4
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @archive_set_error(i32* %69, i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %73, i32* %2, align 4
  br label %147

74:                                               ; preds = %58
  store i64 0, i64* %10, align 8
  br label %75

75:                                               ; preds = %86, %74
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = call i64 @archive_le32dec(i8* %82)
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %79
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, 4
  store i64 %88, i64* %10, align 8
  br label %75

89:                                               ; preds = %75
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %6, align 8
  %92 = sub nsw i64 %91, %90
  store i64 %92, i64* %6, align 8
  br label %49

93:                                               ; preds = %49
  %94 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %95 = load i64, i64* @SYSTEM_AREA_BLOCK, align 8
  %96 = call i32 @set_num_731(i8* %94, i64 %95)
  %97 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %98 = getelementptr inbounds i8, i8* %97, i64 4
  %99 = load %struct.isoent*, %struct.isoent** %5, align 8
  %100 = getelementptr inbounds %struct.isoent, %struct.isoent* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @set_num_731(i8* %98, i64 %104)
  %106 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %107 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @fd_boot_image_size(i32 %109)
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* %6, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %93
  %114 = load %struct.isoent*, %struct.isoent** %5, align 8
  %115 = getelementptr inbounds %struct.isoent, %struct.isoent* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @archive_entry_size(i32 %118)
  store i64 %119, i64* %6, align 8
  br label %120

120:                                              ; preds = %113, %93
  %121 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %122 = getelementptr inbounds i8, i8* %121, i64 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @set_num_731(i8* %122, i64 %123)
  %125 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %126 = getelementptr inbounds i8, i8* %125, i64 12
  %127 = load i64, i64* %7, align 8
  %128 = call i32 @set_num_731(i8* %126, i64 %127)
  %129 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %130 = getelementptr inbounds i8, i8* %129, i64 16
  %131 = call i32 @memset(i8* %130, i32 0, i32 40)
  %132 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %133 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.isoent*, %struct.isoent** %5, align 8
  %136 = getelementptr inbounds %struct.isoent, %struct.isoent* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 8
  %142 = load i32, i32* @SEEK_SET, align 4
  %143 = call i32 @lseek(i32 %134, i64 %141, i32 %142)
  %144 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %145 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %146 = call i32 @write_to_temp(%struct.archive_write* %144, i8* %145, i32 56)
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %120, %67, %40
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i64 @archive_entry_size(i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @archive_le32dec(i8*) #1

declare dso_local i32 @set_num_731(i8*, i64) #1

declare dso_local i64 @fd_boot_image_size(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @write_to_temp(%struct.archive_write*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
