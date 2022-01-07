; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_file_header_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_file_header_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.lha = type { i8, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }

@H0_FIXED_SIZE = common dso_local global i32 0, align 4
@H0_HEADER_SIZE_OFFSET = common dso_local global i64 0, align 8
@H0_HEADER_SUM_OFFSET = common dso_local global i64 0, align 8
@H0_COMP_SIZE_OFFSET = common dso_local global i32 0, align 4
@H0_ORIG_SIZE_OFFSET = common dso_local global i32 0, align 4
@H0_DOS_TIME_OFFSET = common dso_local global i32 0, align 4
@H0_NAME_LEN_OFFSET = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid LHa header\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@H0_FILE_NAME_OFFSET = common dso_local global i32 0, align 4
@CRC_IS_SET = common dso_local global i32 0, align 4
@UNIX_MODE_IS_SET = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"LHa header sum error\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.lha*)* @lha_read_file_header_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lha_read_file_header_0(%struct.archive_read* %0, %struct.lha* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.lha*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.lha* %1, %struct.lha** %5, align 8
  %11 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %12 = load i32, i32* @H0_FIXED_SIZE, align 4
  %13 = call i8* @__archive_read_ahead(%struct.archive_read* %11, i32 %12, i32* null)
  store i8* %13, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %17 = call i32 @truncated_error(%struct.archive_read* %16)
  store i32 %17, i32* %3, align 4
  br label %191

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* @H0_HEADER_SIZE_OFFSET, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %23, 2
  %25 = trunc i32 %24 to i8
  %26 = load %struct.lha*, %struct.lha** %5, align 8
  %27 = getelementptr inbounds %struct.lha, %struct.lha* %26, i32 0, i32 0
  store i8 %25, i8* %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* @H0_HEADER_SUM_OFFSET, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %9, align 1
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @H0_COMP_SIZE_OFFSET, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = call i8* @archive_le32dec(i8* %35)
  %37 = load %struct.lha*, %struct.lha** %5, align 8
  %38 = getelementptr inbounds %struct.lha, %struct.lha* %37, i32 0, i32 9
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @H0_ORIG_SIZE_OFFSET, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i8* @archive_le32dec(i8* %42)
  %44 = load %struct.lha*, %struct.lha** %5, align 8
  %45 = getelementptr inbounds %struct.lha, %struct.lha* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @H0_DOS_TIME_OFFSET, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = call i8* @lha_dos_time(i8* %49)
  %51 = load %struct.lha*, %struct.lha** %5, align 8
  %52 = getelementptr inbounds %struct.lha, %struct.lha* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* @H0_NAME_LEN_OFFSET, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load %struct.lha*, %struct.lha** %5, align 8
  %59 = getelementptr inbounds %struct.lha, %struct.lha* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 8
  %61 = zext i8 %60 to i32
  %62 = load i32, i32* @H0_FIXED_SIZE, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 221
  br i1 %67, label %71, label %68

68:                                               ; preds = %18
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68, %18
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, -2
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %76 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %75, i32 0, i32 0
  %77 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %78 = call i32 @archive_set_error(i32* %76, i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %79, i32* %3, align 4
  br label %191

80:                                               ; preds = %71, %68
  %81 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %82 = load %struct.lha*, %struct.lha** %5, align 8
  %83 = getelementptr inbounds %struct.lha, %struct.lha* %82, i32 0, i32 0
  %84 = load i8, i8* %83, align 8
  %85 = zext i8 %84 to i32
  %86 = call i8* @__archive_read_ahead(%struct.archive_read* %81, i32 %85, i32* null)
  store i8* %86, i8** %6, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %90 = call i32 @truncated_error(%struct.archive_read* %89)
  store i32 %90, i32* %3, align 4
  br label %191

91:                                               ; preds = %80
  %92 = load %struct.lha*, %struct.lha** %5, align 8
  %93 = getelementptr inbounds %struct.lha, %struct.lha* %92, i32 0, i32 7
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* @H0_FILE_NAME_OFFSET, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @archive_strncpy(i32* %93, i8* %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %91
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* @H0_FILE_NAME_OFFSET, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = call i8* @archive_le16dec(i8* %109)
  %111 = load %struct.lha*, %struct.lha** %5, align 8
  %112 = getelementptr inbounds %struct.lha, %struct.lha* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* @CRC_IS_SET, align 4
  %114 = load %struct.lha*, %struct.lha** %5, align 8
  %115 = getelementptr inbounds %struct.lha, %struct.lha* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %102, %91
  %119 = load i8*, i8** %6, align 8
  %120 = load %struct.lha*, %struct.lha** %5, align 8
  %121 = getelementptr inbounds %struct.lha, %struct.lha* %120, i32 0, i32 0
  %122 = load i8, i8* %121, align 8
  %123 = zext i8 %122 to i32
  %124 = sub nsw i32 %123, 2
  %125 = call zeroext i8 @lha_calcsum(i32 0, i8* %119, i32 2, i32 %124)
  store i8 %125, i8* %10, align 1
  %126 = load i32, i32* %7, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %171

128:                                              ; preds = %118
  %129 = load i32, i32* @H0_FILE_NAME_OFFSET, align 4
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %129, %130
  %132 = add nsw i32 %131, 2
  %133 = load i8*, i8** %6, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %6, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 85
  br i1 %140, label %141, label %170

141:                                              ; preds = %128
  %142 = load i32, i32* %7, align 4
  %143 = icmp eq i32 %142, 12
  br i1 %143, label %144, label %170

144:                                              ; preds = %141
  %145 = load i8*, i8** %6, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  %147 = call i8* @archive_le32dec(i8* %146)
  %148 = load %struct.lha*, %struct.lha** %5, align 8
  %149 = getelementptr inbounds %struct.lha, %struct.lha* %148, i32 0, i32 5
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 6
  %152 = call i8* @archive_le16dec(i8* %151)
  %153 = load %struct.lha*, %struct.lha** %5, align 8
  %154 = getelementptr inbounds %struct.lha, %struct.lha* %153, i32 0, i32 4
  store i8* %152, i8** %154, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 8
  %157 = call i8* @archive_le16dec(i8* %156)
  %158 = load %struct.lha*, %struct.lha** %5, align 8
  %159 = getelementptr inbounds %struct.lha, %struct.lha* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** %6, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 10
  %162 = call i8* @archive_le16dec(i8* %161)
  %163 = load %struct.lha*, %struct.lha** %5, align 8
  %164 = getelementptr inbounds %struct.lha, %struct.lha* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* @UNIX_MODE_IS_SET, align 4
  %166 = load %struct.lha*, %struct.lha** %5, align 8
  %167 = getelementptr inbounds %struct.lha, %struct.lha* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %144, %141, %128
  br label %171

171:                                              ; preds = %170, %118
  %172 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %173 = load %struct.lha*, %struct.lha** %5, align 8
  %174 = getelementptr inbounds %struct.lha, %struct.lha* %173, i32 0, i32 0
  %175 = load i8, i8* %174, align 8
  %176 = zext i8 %175 to i32
  %177 = call i32 @__archive_read_consume(%struct.archive_read* %172, i32 %176)
  %178 = load i8, i8* %10, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8, i8* %9, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp ne i32 %179, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %171
  %184 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %185 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %184, i32 0, i32 0
  %186 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %187 = call i32 @archive_set_error(i32* %185, i32 %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %188 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %188, i32* %3, align 4
  br label %191

189:                                              ; preds = %171
  %190 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %189, %183, %88, %74, %15
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @truncated_error(%struct.archive_read*) #1

declare dso_local i8* @archive_le32dec(i8*) #1

declare dso_local i8* @lha_dos_time(i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @archive_strncpy(i32*, i8*, i32) #1

declare dso_local i8* @archive_le16dec(i8*) #1

declare dso_local zeroext i8 @lha_calcsum(i32, i8*, i32, i32) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
