; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_isEVD.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_isEVD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660 = type { i32 }

@PVD_type_offset = common dso_local global i64 0, align 8
@PVD_version_offset = common dso_local global i64 0, align 8
@PVD_reserved1_offset = common dso_local global i64 0, align 8
@PVD_reserved2_offset = common dso_local global i32 0, align 4
@PVD_reserved2_size = common dso_local global i32 0, align 4
@PVD_reserved3_offset = common dso_local global i32 0, align 4
@PVD_reserved3_size = common dso_local global i32 0, align 4
@PVD_logical_block_size_offset = common dso_local global i32 0, align 4
@PVD_volume_space_size_offset = common dso_local global i32 0, align 4
@SYSTEM_AREA_BLOCK = common dso_local global i64 0, align 8
@PVD_file_structure_version_offset = common dso_local global i64 0, align 8
@PVD_type_1_path_table_offset = common dso_local global i32 0, align 4
@PVD_type_m_path_table_offset = common dso_local global i32 0, align 4
@PVD_reserved4_offset = common dso_local global i32 0, align 4
@PVD_reserved4_size = common dso_local global i32 0, align 4
@PVD_reserved5_offset = common dso_local global i32 0, align 4
@PVD_reserved5_size = common dso_local global i32 0, align 4
@PVD_root_directory_record_offset = common dso_local global i32 0, align 4
@DR_length_offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iso9660*, i8*)* @isEVD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isEVD(%struct.iso9660* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.iso9660* %0, %struct.iso9660** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* @PVD_type_offset, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %140

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* @PVD_version_offset, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %140

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* @PVD_reserved1_offset, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %140

34:                                               ; preds = %26
  %35 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @PVD_reserved2_offset, align 4
  %38 = load i32, i32* @PVD_reserved2_size, align 4
  %39 = call i32 @isNull(%struct.iso9660* %35, i8* %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %140

42:                                               ; preds = %34
  %43 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @PVD_reserved3_offset, align 4
  %46 = load i32, i32* @PVD_reserved3_size, align 4
  %47 = call i32 @isNull(%struct.iso9660* %43, i8* %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %140

50:                                               ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @PVD_logical_block_size_offset, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = call i64 @archive_le16dec(i8* %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %140

59:                                               ; preds = %50
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @PVD_volume_space_size_offset, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = call i64 @archive_le32dec(i8* %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @SYSTEM_AREA_BLOCK, align 8
  %67 = add nsw i64 %66, 4
  %68 = icmp sle i64 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %140

70:                                               ; preds = %59
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* @PVD_file_structure_version_offset, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %75, 2
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %140

78:                                               ; preds = %70
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* @PVD_type_1_path_table_offset, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = call i64 @archive_le32dec(i8* %82)
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @SYSTEM_AREA_BLOCK, align 8
  %86 = add nsw i64 %85, 2
  %87 = icmp slt i64 %84, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %78
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %78
  store i32 0, i32* %3, align 4
  br label %140

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* @PVD_type_m_path_table_offset, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = call i64 @archive_be32dec(i8* %97)
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %9, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* @SYSTEM_AREA_BLOCK, align 8
  %104 = add nsw i64 %103, 2
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %101, %93
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %101
  store i32 0, i32* %3, align 4
  br label %140

111:                                              ; preds = %106
  %112 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* @PVD_reserved4_offset, align 4
  %115 = load i32, i32* @PVD_reserved4_size, align 4
  %116 = call i32 @isNull(%struct.iso9660* %112, i8* %113, i32 %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %140

119:                                              ; preds = %111
  %120 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* @PVD_reserved5_offset, align 4
  %123 = load i32, i32* @PVD_reserved5_size, align 4
  %124 = call i32 @isNull(%struct.iso9660* %120, i8* %121, i32 %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %140

127:                                              ; preds = %119
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* @PVD_root_directory_record_offset, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8* %131, i8** %6, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i64, i64* @DR_length_offset, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp ne i32 %136, 34
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %140

139:                                              ; preds = %127
  store i32 48, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %138, %126, %118, %110, %92, %77, %69, %58, %49, %41, %33, %25, %17
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @isNull(%struct.iso9660*, i8*, i32, i32) #1

declare dso_local i64 @archive_le16dec(i8*) #1

declare dso_local i64 @archive_le32dec(i8*) #1

declare dso_local i64 @archive_be32dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
