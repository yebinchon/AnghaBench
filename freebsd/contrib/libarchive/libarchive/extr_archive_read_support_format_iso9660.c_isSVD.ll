; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_isSVD.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_isSVD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660 = type { i32 }

@SVD_type_offset = common dso_local global i64 0, align 8
@SVD_reserved1_offset = common dso_local global i32 0, align 4
@SVD_reserved1_size = common dso_local global i32 0, align 4
@SVD_reserved2_offset = common dso_local global i32 0, align 4
@SVD_reserved2_size = common dso_local global i32 0, align 4
@SVD_reserved3_offset = common dso_local global i32 0, align 4
@SVD_reserved3_size = common dso_local global i32 0, align 4
@SVD_file_structure_version_offset = common dso_local global i64 0, align 8
@SVD_logical_block_size_offset = common dso_local global i32 0, align 4
@SVD_volume_space_size_offset = common dso_local global i32 0, align 4
@SYSTEM_AREA_BLOCK = common dso_local global i64 0, align 8
@SVD_type_L_path_table_offset = common dso_local global i32 0, align 4
@SVD_type_M_path_table_offset = common dso_local global i32 0, align 4
@SVD_root_directory_record_offset = common dso_local global i32 0, align 4
@DR_length_offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iso9660*, i8*)* @isSVD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isSVD(%struct.iso9660* %0, i8* %1) #0 {
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
  %12 = load i64, i64* @SVD_type_offset, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %116

18:                                               ; preds = %2
  %19 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @SVD_reserved1_offset, align 4
  %22 = load i32, i32* @SVD_reserved1_size, align 4
  %23 = call i32 @isNull(%struct.iso9660* %19, i8* %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %116

26:                                               ; preds = %18
  %27 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @SVD_reserved2_offset, align 4
  %30 = load i32, i32* @SVD_reserved2_size, align 4
  %31 = call i32 @isNull(%struct.iso9660* %27, i8* %28, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %116

34:                                               ; preds = %26
  %35 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @SVD_reserved3_offset, align 4
  %38 = load i32, i32* @SVD_reserved3_size, align 4
  %39 = call i32 @isNull(%struct.iso9660* %35, i8* %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %116

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* @SVD_file_structure_version_offset, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %116

50:                                               ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @SVD_logical_block_size_offset, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = call i64 @archive_le16dec(i8* %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %116

59:                                               ; preds = %50
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @SVD_volume_space_size_offset, align 4
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
  br label %116

70:                                               ; preds = %59
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* @SVD_type_L_path_table_offset, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = call i64 @archive_le32dec(i8* %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @SYSTEM_AREA_BLOCK, align 8
  %78 = add nsw i64 %77, 2
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %70
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %70
  store i32 0, i32* %3, align 4
  br label %116

85:                                               ; preds = %80
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* @SVD_type_M_path_table_offset, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = call i64 @archive_be32dec(i8* %89)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @SYSTEM_AREA_BLOCK, align 8
  %96 = add nsw i64 %95, 2
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %93, %85
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98, %93
  store i32 0, i32* %3, align 4
  br label %116

103:                                              ; preds = %98
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* @SVD_root_directory_record_offset, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8* %107, i8** %6, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load i64, i64* @DR_length_offset, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp ne i32 %112, 34
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %116

115:                                              ; preds = %103
  store i32 48, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %114, %102, %84, %69, %58, %49, %41, %33, %25, %17
  %117 = load i32, i32* %3, align 4
  ret i32 %117
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
