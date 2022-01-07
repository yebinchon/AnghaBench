; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_data_lzh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_data_lzh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.lha = type { i32, i64, i32, i64, i64, i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i64, i32, i64, i8*, i32, i64 }

@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unsupported lzh compression method -%c%c%c-\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Couldn't allocate memory for lzh decompression\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Truncated LHa file body\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Bad lzh data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i64*)* @lha_read_data_lzh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lha_read_data_lzh(%struct.archive_read* %0, i8** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.lha*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %14 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.lha*
  store %struct.lha* %18, %struct.lha** %10, align 8
  %19 = load %struct.lha*, %struct.lha** %10, align 8
  %20 = getelementptr inbounds %struct.lha, %struct.lha* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %73, label %23

23:                                               ; preds = %4
  %24 = load %struct.lha*, %struct.lha** %10, align 8
  %25 = getelementptr inbounds %struct.lha, %struct.lha* %24, i32 0, i32 6
  %26 = load %struct.lha*, %struct.lha** %10, align 8
  %27 = getelementptr inbounds %struct.lha, %struct.lha* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @lzh_decode_init(%struct.TYPE_5__* %25, i32* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %58 [
    i32 128, label %31
    i32 129, label %32
  ]

31:                                               ; preds = %23
  br label %64

32:                                               ; preds = %23
  %33 = load i8**, i8*** %7, align 8
  store i8* null, i8** %33, align 8
  %34 = load i64*, i64** %8, align 8
  store i64 0, i64* %34, align 8
  %35 = load i64*, i64** %9, align 8
  store i64 0, i64* %35, align 8
  %36 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %37 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %36, i32 0, i32 0
  %38 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %39 = load %struct.lha*, %struct.lha** %10, align 8
  %40 = getelementptr inbounds %struct.lha, %struct.lha* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lha*, %struct.lha** %10, align 8
  %45 = getelementptr inbounds %struct.lha, %struct.lha* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lha*, %struct.lha** %10, align 8
  %50 = getelementptr inbounds %struct.lha, %struct.lha* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %37, i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %48, i32 %53)
  %55 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %56 = call i32 @archive_read_format_lha_read_data_skip(%struct.archive_read* %55)
  %57 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %57, i32* %5, align 4
  br label %195

58:                                               ; preds = %23
  %59 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %60 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %59, i32 0, i32 0
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %60, i32 %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %63, i32* %5, align 4
  br label %195

64:                                               ; preds = %31
  %65 = load %struct.lha*, %struct.lha** %10, align 8
  %66 = getelementptr inbounds %struct.lha, %struct.lha* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.lha*, %struct.lha** %10, align 8
  %68 = getelementptr inbounds %struct.lha, %struct.lha* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.lha*, %struct.lha** %10, align 8
  %71 = getelementptr inbounds %struct.lha, %struct.lha* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %64, %4
  %74 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %75 = call i32 @__archive_read_ahead(%struct.archive_read* %74, i32 1, i64* %11)
  %76 = load %struct.lha*, %struct.lha** %10, align 8
  %77 = getelementptr inbounds %struct.lha, %struct.lha* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  store i32 %75, i32* %78, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %83 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %82, i32 0, i32 0
  %84 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %85 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %83, i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %86, i32* %5, align 4
  br label %195

87:                                               ; preds = %73
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.lha*, %struct.lha** %10, align 8
  %90 = getelementptr inbounds %struct.lha, %struct.lha* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.lha*, %struct.lha** %10, align 8
  %95 = getelementptr inbounds %struct.lha, %struct.lha* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %11, align 8
  br label %97

97:                                               ; preds = %93, %87
  %98 = load i64, i64* %11, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.lha*, %struct.lha** %10, align 8
  %101 = getelementptr inbounds %struct.lha, %struct.lha* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 8
  %103 = load %struct.lha*, %struct.lha** %10, align 8
  %104 = getelementptr inbounds %struct.lha, %struct.lha* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.lha*, %struct.lha** %10, align 8
  %107 = getelementptr inbounds %struct.lha, %struct.lha* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.lha*, %struct.lha** %10, align 8
  %110 = getelementptr inbounds %struct.lha, %struct.lha* %109, i32 0, i32 6
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.lha*, %struct.lha** %10, align 8
  %113 = getelementptr inbounds %struct.lha, %struct.lha* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @lzh_decode(%struct.TYPE_5__* %110, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  switch i32 %118, label %123 [
    i32 128, label %119
    i32 130, label %120
  ]

119:                                              ; preds = %97
  br label %128

120:                                              ; preds = %97
  %121 = load %struct.lha*, %struct.lha** %10, align 8
  %122 = getelementptr inbounds %struct.lha, %struct.lha* %121, i32 0, i32 2
  store i32 1, i32* %122, align 8
  br label %128

123:                                              ; preds = %97
  %124 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %125 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %124, i32 0, i32 0
  %126 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %127 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %125, i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 129, i32* %5, align 4
  br label %195

128:                                              ; preds = %120, %119
  %129 = load %struct.lha*, %struct.lha** %10, align 8
  %130 = getelementptr inbounds %struct.lha, %struct.lha* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.lha*, %struct.lha** %10, align 8
  %134 = getelementptr inbounds %struct.lha, %struct.lha* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  %135 = load %struct.lha*, %struct.lha** %10, align 8
  %136 = getelementptr inbounds %struct.lha, %struct.lha* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.lha*, %struct.lha** %10, align 8
  %140 = getelementptr inbounds %struct.lha, %struct.lha* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %141, %138
  store i64 %142, i64* %140, align 8
  %143 = load %struct.lha*, %struct.lha** %10, align 8
  %144 = getelementptr inbounds %struct.lha, %struct.lha* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %128
  %149 = load %struct.lha*, %struct.lha** %10, align 8
  %150 = getelementptr inbounds %struct.lha, %struct.lha* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %9, align 8
  store i64 %151, i64* %152, align 8
  %153 = load %struct.lha*, %struct.lha** %10, align 8
  %154 = getelementptr inbounds %struct.lha, %struct.lha* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64*, i64** %8, align 8
  store i64 %156, i64* %157, align 8
  %158 = load %struct.lha*, %struct.lha** %10, align 8
  %159 = getelementptr inbounds %struct.lha, %struct.lha* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = load i8**, i8*** %7, align 8
  store i8* %161, i8** %162, align 8
  %163 = load %struct.lha*, %struct.lha** %10, align 8
  %164 = getelementptr inbounds %struct.lha, %struct.lha* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = load i8**, i8*** %7, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = load i64*, i64** %8, align 8
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @lha_crc16(i32 %165, i8* %167, i64 %169)
  %171 = load %struct.lha*, %struct.lha** %10, align 8
  %172 = getelementptr inbounds %struct.lha, %struct.lha* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  %173 = load i64*, i64** %8, align 8
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.lha*, %struct.lha** %10, align 8
  %176 = getelementptr inbounds %struct.lha, %struct.lha* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, %174
  store i64 %178, i64* %176, align 8
  br label %194

179:                                              ; preds = %128
  %180 = load %struct.lha*, %struct.lha** %10, align 8
  %181 = getelementptr inbounds %struct.lha, %struct.lha* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** %9, align 8
  store i64 %182, i64* %183, align 8
  %184 = load i64*, i64** %8, align 8
  store i64 0, i64* %184, align 8
  %185 = load i8**, i8*** %7, align 8
  store i8* null, i8** %185, align 8
  %186 = load %struct.lha*, %struct.lha** %10, align 8
  %187 = getelementptr inbounds %struct.lha, %struct.lha* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %179
  %191 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %192 = call i32 @lha_end_of_entry(%struct.archive_read* %191)
  store i32 %192, i32* %5, align 4
  br label %195

193:                                              ; preds = %179
  br label %194

194:                                              ; preds = %193, %148
  store i32 128, i32* %5, align 4
  br label %195

195:                                              ; preds = %194, %190, %123, %81, %58, %32
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @lzh_decode_init(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @archive_read_format_lha_read_data_skip(%struct.archive_read*) #1

declare dso_local i32 @__archive_read_ahead(%struct.archive_read*, i32, i64*) #1

declare dso_local i32 @lzh_decode(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lha_crc16(i32, i8*, i64) #1

declare dso_local i32 @lha_end_of_entry(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
