; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_file_header_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_file_header_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.lha = type { i64, i32, i64, i32, i8*, i8*, i8* }

@H3_FIXED_SIZE = common dso_local global i64 0, align 8
@H3_FIELD_LEN_OFFSET = common dso_local global i32 0, align 4
@H3_HEADER_SIZE_OFFSET = common dso_local global i32 0, align 4
@H3_COMP_SIZE_OFFSET = common dso_local global i32 0, align 4
@H3_ORIG_SIZE_OFFSET = common dso_local global i32 0, align 4
@H3_TIME_OFFSET = common dso_local global i32 0, align 4
@H3_CRC_OFFSET = common dso_local global i32 0, align 4
@CRC_IS_SET = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"LHa header CRC error\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid LHa header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.lha*)* @lha_read_file_header_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lha_read_file_header_3(%struct.archive_read* %0, %struct.lha* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.lha*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.lha* %1, %struct.lha** %5, align 8
  %10 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %11 = load i64, i64* @H3_FIXED_SIZE, align 8
  %12 = call i8* @__archive_read_ahead(%struct.archive_read* %10, i64 %11, i32* null)
  store i8* %12, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %16 = call i32 @truncated_error(%struct.archive_read* %15)
  store i32 %16, i32* %3, align 4
  br label %114

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @H3_FIELD_LEN_OFFSET, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = call i32 @archive_le16dec(i8* %21)
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %108

25:                                               ; preds = %17
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @H3_HEADER_SIZE_OFFSET, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = call i8* @archive_le32dec(i8* %29)
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.lha*, %struct.lha** %5, align 8
  %33 = getelementptr inbounds %struct.lha, %struct.lha* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @H3_COMP_SIZE_OFFSET, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = call i8* @archive_le32dec(i8* %37)
  %39 = load %struct.lha*, %struct.lha** %5, align 8
  %40 = getelementptr inbounds %struct.lha, %struct.lha* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @H3_ORIG_SIZE_OFFSET, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = call i8* @archive_le32dec(i8* %44)
  %46 = load %struct.lha*, %struct.lha** %5, align 8
  %47 = getelementptr inbounds %struct.lha, %struct.lha* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @H3_TIME_OFFSET, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = call i8* @archive_le32dec(i8* %51)
  %53 = load %struct.lha*, %struct.lha** %5, align 8
  %54 = getelementptr inbounds %struct.lha, %struct.lha* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @H3_CRC_OFFSET, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = call i32 @archive_le16dec(i8* %58)
  %60 = load %struct.lha*, %struct.lha** %5, align 8
  %61 = getelementptr inbounds %struct.lha, %struct.lha* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @CRC_IS_SET, align 4
  %63 = load %struct.lha*, %struct.lha** %5, align 8
  %64 = getelementptr inbounds %struct.lha, %struct.lha* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.lha*, %struct.lha** %5, align 8
  %68 = getelementptr inbounds %struct.lha, %struct.lha* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @H3_FIXED_SIZE, align 8
  %71 = add nsw i64 %70, 4
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %25
  br label %108

74:                                               ; preds = %25
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* @H3_FIXED_SIZE, align 8
  %77 = call i64 @lha_crc16(i32 0, i8* %75, i64 %76)
  store i64 %77, i64* %9, align 8
  %78 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %79 = load i64, i64* @H3_FIXED_SIZE, align 8
  %80 = call i32 @__archive_read_consume(%struct.archive_read* %78, i64 %79)
  %81 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %82 = load %struct.lha*, %struct.lha** %5, align 8
  %83 = load %struct.lha*, %struct.lha** %5, align 8
  %84 = getelementptr inbounds %struct.lha, %struct.lha* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @H3_FIXED_SIZE, align 8
  %87 = sub nsw i64 %85, %86
  %88 = call i32 @lha_read_file_extended_header(%struct.archive_read* %81, %struct.lha* %82, i64* %9, i32 4, i64 %87, i64* %7)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @ARCHIVE_WARN, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %74
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %114

94:                                               ; preds = %74
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.lha*, %struct.lha** %5, align 8
  %97 = getelementptr inbounds %struct.lha, %struct.lha* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %102 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %101, i32 0, i32 0
  %103 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %104 = call i32 @archive_set_error(i32* %102, i32 %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %105, i32* %3, align 4
  br label %114

106:                                              ; preds = %94
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %114

108:                                              ; preds = %73, %24
  %109 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %110 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %109, i32 0, i32 0
  %111 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %112 = call i32 @archive_set_error(i32* %110, i32 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %106, %100, %92, %14
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local i32 @truncated_error(%struct.archive_read*) #1

declare dso_local i32 @archive_le16dec(i8*) #1

declare dso_local i8* @archive_le32dec(i8*) #1

declare dso_local i64 @lha_crc16(i32, i8*, i64) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @lha_read_file_extended_header(%struct.archive_read*, %struct.lha*, i64*, i32, i64, i64*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
