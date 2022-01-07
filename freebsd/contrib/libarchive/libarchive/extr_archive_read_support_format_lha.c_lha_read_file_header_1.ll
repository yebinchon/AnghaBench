; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_file_header_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_file_header_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.lha = type { i8, i64, i32, i32, i32, i32, i8* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@H1_FIXED_SIZE = common dso_local global i32 0, align 4
@H1_HEADER_SIZE_OFFSET = common dso_local global i64 0, align 8
@H1_HEADER_SUM_OFFSET = common dso_local global i64 0, align 8
@H1_COMP_SIZE_OFFSET = common dso_local global i32 0, align 4
@H1_ORIG_SIZE_OFFSET = common dso_local global i32 0, align 4
@H1_DOS_TIME_OFFSET = common dso_local global i32 0, align 4
@H1_NAME_LEN_OFFSET = common dso_local global i64 0, align 8
@H1_FILE_NAME_OFFSET = common dso_local global i32 0, align 4
@CRC_IS_SET = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"LHa header sum error\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid LHa header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.lha*)* @lha_read_file_header_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lha_read_file_header_1(%struct.archive_read* %0, %struct.lha* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.lha*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.lha* %1, %struct.lha** %5, align 8
  %15 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %17 = load i32, i32* @H1_FIXED_SIZE, align 4
  %18 = call i8* @__archive_read_ahead(%struct.archive_read* %16, i32 %17, i32* null)
  store i8* %18, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %22 = call i32 @truncated_error(%struct.archive_read* %21)
  store i32 %22, i32* %3, align 4
  br label %197

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* @H1_HEADER_SIZE_OFFSET, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %28, 2
  %30 = trunc i32 %29 to i8
  %31 = load %struct.lha*, %struct.lha** %5, align 8
  %32 = getelementptr inbounds %struct.lha, %struct.lha* %31, i32 0, i32 0
  store i8 %30, i8* %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* @H1_HEADER_SUM_OFFSET, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %13, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @H1_COMP_SIZE_OFFSET, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = call i8* @archive_le32dec(i8* %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.lha*, %struct.lha** %5, align 8
  %44 = getelementptr inbounds %struct.lha, %struct.lha* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @H1_ORIG_SIZE_OFFSET, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = call i8* @archive_le32dec(i8* %48)
  %50 = load %struct.lha*, %struct.lha** %5, align 8
  %51 = getelementptr inbounds %struct.lha, %struct.lha* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* @H1_DOS_TIME_OFFSET, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = call i32 @lha_dos_time(i8* %55)
  %57 = load %struct.lha*, %struct.lha** %5, align 8
  %58 = getelementptr inbounds %struct.lha, %struct.lha* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* @H1_NAME_LEN_OFFSET, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %11, align 4
  %64 = load %struct.lha*, %struct.lha** %5, align 8
  %65 = getelementptr inbounds %struct.lha, %struct.lha* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 8
  %67 = zext i8 %66 to i32
  %68 = load i32, i32* @H1_FIXED_SIZE, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp sgt i32 %72, 230
  br i1 %73, label %77, label %74

74:                                               ; preds = %23
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74, %23
  br label %191

78:                                               ; preds = %74
  %79 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %80 = load %struct.lha*, %struct.lha** %5, align 8
  %81 = getelementptr inbounds %struct.lha, %struct.lha* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 8
  %83 = zext i8 %82 to i32
  %84 = call i8* @__archive_read_ahead(%struct.archive_read* %79, i32 %83, i32* null)
  store i8* %84, i8** %6, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %88 = call i32 @truncated_error(%struct.archive_read* %87)
  store i32 %88, i32* %3, align 4
  br label %197

89:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %106, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @H1_FILE_NAME_OFFSET, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %95, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 255
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %191

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %90

109:                                              ; preds = %90
  %110 = load %struct.lha*, %struct.lha** %5, align 8
  %111 = getelementptr inbounds %struct.lha, %struct.lha* %110, i32 0, i32 4
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* @H1_FILE_NAME_OFFSET, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @archive_strncpy(i32* %111, i8* %115, i32 %116)
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* @H1_FILE_NAME_OFFSET, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = call i32 @archive_le16dec(i8* %124)
  %126 = load %struct.lha*, %struct.lha** %5, align 8
  %127 = getelementptr inbounds %struct.lha, %struct.lha* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @CRC_IS_SET, align 4
  %129 = load %struct.lha*, %struct.lha** %5, align 8
  %130 = getelementptr inbounds %struct.lha, %struct.lha* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = load %struct.lha*, %struct.lha** %5, align 8
  %135 = getelementptr inbounds %struct.lha, %struct.lha* %134, i32 0, i32 0
  %136 = load i8, i8* %135, align 8
  %137 = zext i8 %136 to i32
  %138 = sub nsw i32 %137, 2
  %139 = call zeroext i8 @lha_calcsum(i32 0, i8* %133, i32 2, i32 %138)
  store i8 %139, i8* %14, align 1
  %140 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %141 = load %struct.lha*, %struct.lha** %5, align 8
  %142 = getelementptr inbounds %struct.lha, %struct.lha* %141, i32 0, i32 0
  %143 = load i8, i8* %142, align 8
  %144 = zext i8 %143 to i32
  %145 = sub nsw i32 %144, 2
  %146 = call i32 @__archive_read_consume(%struct.archive_read* %140, i32 %145)
  %147 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %148 = load %struct.lha*, %struct.lha** %5, align 8
  %149 = load %struct.lha*, %struct.lha** %5, align 8
  %150 = getelementptr inbounds %struct.lha, %struct.lha* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, 2
  %153 = call i32 @lha_read_file_extended_header(%struct.archive_read* %147, %struct.lha* %148, i32* null, i32 2, i64 %152, i64* %7)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @ARCHIVE_WARN, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %109
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %3, align 4
  br label %197

159:                                              ; preds = %109
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %163, %159
  %166 = load i64, i64* %7, align 8
  %167 = sub i64 %166, 2
  %168 = load %struct.lha*, %struct.lha** %5, align 8
  %169 = getelementptr inbounds %struct.lha, %struct.lha* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = sub i64 %170, %167
  store i64 %171, i64* %169, align 8
  %172 = load %struct.lha*, %struct.lha** %5, align 8
  %173 = getelementptr inbounds %struct.lha, %struct.lha* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ult i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %165
  br label %191

177:                                              ; preds = %165
  %178 = load i8, i8* %14, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8, i8* %13, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp ne i32 %179, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %185 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %184, i32 0, i32 0
  %186 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %187 = call i32 @archive_set_error(i32* %185, i32 %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %188 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %188, i32* %3, align 4
  br label %197

189:                                              ; preds = %177
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %3, align 4
  br label %197

191:                                              ; preds = %176, %104, %77
  %192 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %193 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %192, i32 0, i32 0
  %194 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %195 = call i32 @archive_set_error(i32* %193, i32 %194, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %196 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %191, %189, %183, %157, %86, %20
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @truncated_error(%struct.archive_read*) #1

declare dso_local i8* @archive_le32dec(i8*) #1

declare dso_local i32 @lha_dos_time(i8*) #1

declare dso_local i32 @archive_strncpy(i32*, i8*, i32) #1

declare dso_local i32 @archive_le16dec(i8*) #1

declare dso_local zeroext i8 @lha_calcsum(i32, i8*, i32, i32) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

declare dso_local i32 @lha_read_file_extended_header(%struct.archive_read*, %struct.lha*, i32*, i32, i64, i64*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
