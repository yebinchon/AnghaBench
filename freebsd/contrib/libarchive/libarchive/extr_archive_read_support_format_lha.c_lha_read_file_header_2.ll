; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_file_header_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_file_header_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.lha = type { i64, i64, i32, i8*, i8*, i8*, i8* }

@H2_FIXED_SIZE = common dso_local global i64 0, align 8
@H2_HEADER_SIZE_OFFSET = common dso_local global i32 0, align 4
@H2_COMP_SIZE_OFFSET = common dso_local global i32 0, align 4
@H2_ORIG_SIZE_OFFSET = common dso_local global i32 0, align 4
@H2_TIME_OFFSET = common dso_local global i32 0, align 4
@H2_CRC_OFFSET = common dso_local global i32 0, align 4
@CRC_IS_SET = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid LHa header size\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"LHa header CRC error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.lha*)* @lha_read_file_header_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lha_read_file_header_2(%struct.archive_read* %0, %struct.lha* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.lha*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.lha* %1, %struct.lha** %5, align 8
  %11 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %12 = load i64, i64* @H2_FIXED_SIZE, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i8* @__archive_read_ahead(%struct.archive_read* %11, i32 %13, i32* null)
  store i8* %14, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %18 = call i32 @truncated_error(%struct.archive_read* %17)
  store i32 %18, i32* %3, align 4
  br label %136

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @H2_HEADER_SIZE_OFFSET, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = call i8* @archive_le16dec(i8* %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.lha*, %struct.lha** %5, align 8
  %27 = getelementptr inbounds %struct.lha, %struct.lha* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @H2_COMP_SIZE_OFFSET, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = call i8* @archive_le32dec(i8* %31)
  %33 = load %struct.lha*, %struct.lha** %5, align 8
  %34 = getelementptr inbounds %struct.lha, %struct.lha* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @H2_ORIG_SIZE_OFFSET, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = call i8* @archive_le32dec(i8* %38)
  %40 = load %struct.lha*, %struct.lha** %5, align 8
  %41 = getelementptr inbounds %struct.lha, %struct.lha* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @H2_TIME_OFFSET, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = call i8* @archive_le32dec(i8* %45)
  %47 = load %struct.lha*, %struct.lha** %5, align 8
  %48 = getelementptr inbounds %struct.lha, %struct.lha* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @H2_CRC_OFFSET, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = call i8* @archive_le16dec(i8* %52)
  %54 = load %struct.lha*, %struct.lha** %5, align 8
  %55 = getelementptr inbounds %struct.lha, %struct.lha* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @CRC_IS_SET, align 4
  %57 = load %struct.lha*, %struct.lha** %5, align 8
  %58 = getelementptr inbounds %struct.lha, %struct.lha* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.lha*, %struct.lha** %5, align 8
  %62 = getelementptr inbounds %struct.lha, %struct.lha* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @H2_FIXED_SIZE, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %19
  %67 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %68 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %67, i32 0, i32 0
  %69 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %70 = call i32 @archive_set_error(i32* %68, i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %71, i32* %3, align 4
  br label %136

72:                                               ; preds = %19
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* @H2_FIXED_SIZE, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i64 @lha_crc16(i64 0, i8* %73, i32 %75)
  store i64 %76, i64* %10, align 8
  %77 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %78 = load i64, i64* @H2_FIXED_SIZE, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @__archive_read_consume(%struct.archive_read* %77, i32 %79)
  %81 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %82 = load %struct.lha*, %struct.lha** %5, align 8
  %83 = load %struct.lha*, %struct.lha** %5, align 8
  %84 = getelementptr inbounds %struct.lha, %struct.lha* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @H2_FIXED_SIZE, align 8
  %87 = sub nsw i64 %85, %86
  %88 = call i32 @lha_read_file_extended_header(%struct.archive_read* %81, %struct.lha* %82, i64* %10, i32 2, i64 %87, i64* %7)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @ARCHIVE_WARN, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %72
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %136

94:                                               ; preds = %72
  %95 = load %struct.lha*, %struct.lha** %5, align 8
  %96 = getelementptr inbounds %struct.lha, %struct.lha* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i64, i64* @H2_FIXED_SIZE, align 8
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = sub nsw i32 %98, %102
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %94
  %107 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i8* @__archive_read_ahead(%struct.archive_read* %107, i32 %108, i32* null)
  store i8* %109, i8** %6, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %113 = call i32 @truncated_error(%struct.archive_read* %112)
  store i32 %113, i32* %3, align 4
  br label %136

114:                                              ; preds = %106
  %115 = load i64, i64* %10, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @lha_crc16(i64 %115, i8* %116, i32 %117)
  store i64 %118, i64* %10, align 8
  %119 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @__archive_read_consume(%struct.archive_read* %119, i32 %120)
  br label %122

122:                                              ; preds = %114, %94
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.lha*, %struct.lha** %5, align 8
  %125 = getelementptr inbounds %struct.lha, %struct.lha* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %130 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %129, i32 0, i32 0
  %131 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %132 = call i32 @archive_set_error(i32* %130, i32 %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %133, i32* %3, align 4
  br label %136

134:                                              ; preds = %122
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %128, %111, %92, %66, %16
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @truncated_error(%struct.archive_read*) #1

declare dso_local i8* @archive_le16dec(i8*) #1

declare dso_local i8* @archive_le32dec(i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @lha_crc16(i64, i8*, i32) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

declare dso_local i32 @lha_read_file_extended_header(%struct.archive_read*, %struct.lha*, i64*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
