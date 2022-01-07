; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_base_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_base_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_entry = type { i32 }
%struct.rar5 = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Base block header is too large\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Header CRC error\00", align 1
@HFL_SPLIT_AFTER = common dso_local global i64 0, align 8
@HFL_SPLIT_BEFORE = common dso_local global i64 0, align 8
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Encryption is not supported\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Header error\00", align 1
@HFL_SKIP_IF_UNKNOWN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"Header type error\00", align 1
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @process_base_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_base_block(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.rar5*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %16 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %17 = call %struct.rar5* @get_context(%struct.archive_read* %16)
  store %struct.rar5* %17, %struct.rar5** %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %19 = call i32 @skip_unprocessed_bytes(%struct.archive_read* %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %3, align 4
  br label %211

25:                                               ; preds = %2
  %26 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %27 = call i32 @read_u32(%struct.archive_read* %26, i64* %7)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %30, i32* %3, align 4
  br label %211

31:                                               ; preds = %25
  %32 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %33 = call i32 @read_var_sized(%struct.archive_read* %32, i64* %9, i64* %10)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %36, i32* %3, align 4
  br label %211

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = icmp ugt i64 %38, 2097152
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %42 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %41, i32 0, i32 0
  %43 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %44 = call i32 @archive_set_error(i32* %42, i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %45, i32* %3, align 4
  br label %211

46:                                               ; preds = %37
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %47, %48
  store i64 %49, i64* %11, align 8
  %50 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @read_ahead(%struct.archive_read* %50, i64 %51, i32** %14)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %55, i32* %3, align 4
  br label %211

56:                                               ; preds = %46
  %57 = load i32*, i32** %14, align 8
  %58 = load i64, i64* %11, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i64 @crc32(i32 0, i32* %57, i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %66 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %65, i32 0, i32 0
  %67 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %68 = call i32 @archive_set_error(i32* %66, i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %69, i32* %3, align 4
  br label %211

70:                                               ; preds = %56
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  %72 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @consume(%struct.archive_read* %72, i64 %73)
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %77, i32* %3, align 4
  br label %211

78:                                               ; preds = %70
  %79 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %80 = call i32 @read_var_sized(%struct.archive_read* %79, i64* %12, i64* null)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %83, i32* %3, align 4
  br label %211

84:                                               ; preds = %78
  %85 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %86 = call i32 @read_var_sized(%struct.archive_read* %85, i64* %13, i64* null)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %89, i32* %3, align 4
  br label %211

90:                                               ; preds = %84
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @HFL_SPLIT_AFTER, align 8
  %93 = and i64 %91, %92
  %94 = icmp ugt i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = load %struct.rar5*, %struct.rar5** %6, align 8
  %97 = getelementptr inbounds %struct.rar5, %struct.rar5* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* @HFL_SPLIT_BEFORE, align 8
  %101 = and i64 %99, %100
  %102 = icmp ugt i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = load %struct.rar5*, %struct.rar5** %6, align 8
  %105 = getelementptr inbounds %struct.rar5, %struct.rar5* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load i64, i64* %11, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.rar5*, %struct.rar5** %6, align 8
  %110 = getelementptr inbounds %struct.rar5, %struct.rar5* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 4
  %112 = load i64, i64* %12, align 8
  %113 = trunc i64 %112 to i32
  %114 = load %struct.rar5*, %struct.rar5** %6, align 8
  %115 = getelementptr inbounds %struct.rar5, %struct.rar5* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  store i32 %113, i32* %116, align 4
  %117 = load %struct.rar5*, %struct.rar5** %6, align 8
  %118 = getelementptr inbounds %struct.rar5, %struct.rar5* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 4
  %120 = load i64, i64* %12, align 8
  switch i64 %120, label %198 [
    i64 1, label %121
    i64 3, label %134
    i64 2, label %141
    i64 4, label %148
    i64 5, label %154
    i64 0, label %196
  ]

121:                                              ; preds = %90
  %122 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %123 = load %struct.rar5*, %struct.rar5** %6, align 8
  %124 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call i32 @process_head_main(%struct.archive_read* %122, %struct.rar5* %123, %struct.archive_entry* %124, i64 %125)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* @ARCHIVE_OK, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %131, i32* %3, align 4
  br label %211

132:                                              ; preds = %121
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %3, align 4
  br label %211

134:                                              ; preds = %90
  %135 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %136 = load %struct.rar5*, %struct.rar5** %6, align 8
  %137 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i32 @process_head_service(%struct.archive_read* %135, %struct.rar5* %136, %struct.archive_entry* %137, i64 %138)
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %3, align 4
  br label %211

141:                                              ; preds = %90
  %142 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %143 = load %struct.rar5*, %struct.rar5** %6, align 8
  %144 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %145 = load i64, i64* %13, align 8
  %146 = call i32 @process_head_file(%struct.archive_read* %142, %struct.rar5* %143, %struct.archive_entry* %144, i64 %145)
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %3, align 4
  br label %211

148:                                              ; preds = %90
  %149 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %150 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %149, i32 0, i32 0
  %151 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %152 = call i32 @archive_set_error(i32* %150, i32 %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %153, i32* %3, align 4
  br label %211

154:                                              ; preds = %90
  %155 = load %struct.rar5*, %struct.rar5** %6, align 8
  %156 = getelementptr inbounds %struct.rar5, %struct.rar5* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 4
  %158 = load %struct.rar5*, %struct.rar5** %6, align 8
  %159 = getelementptr inbounds %struct.rar5, %struct.rar5* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %194

163:                                              ; preds = %154
  %164 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %165 = call i32 @scan_for_signature(%struct.archive_read* %164)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* @ARCHIVE_FATAL, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %170, i32* %3, align 4
  br label %211

171:                                              ; preds = %163
  %172 = load %struct.rar5*, %struct.rar5** %6, align 8
  %173 = getelementptr inbounds %struct.rar5, %struct.rar5* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @UINT_MAX, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %180 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %179, i32 0, i32 0
  %181 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %182 = call i32 @archive_set_error(i32* %180, i32 %181, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %183 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %183, i32* %3, align 4
  br label %211

184:                                              ; preds = %171
  %185 = load %struct.rar5*, %struct.rar5** %6, align 8
  %186 = getelementptr inbounds %struct.rar5, %struct.rar5* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  %190 = load %struct.rar5*, %struct.rar5** %6, align 8
  %191 = getelementptr inbounds %struct.rar5, %struct.rar5* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 4
  %193 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %193, i32* %3, align 4
  br label %211

194:                                              ; preds = %154
  %195 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %195, i32* %3, align 4
  br label %211

196:                                              ; preds = %90
  %197 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %197, i32* %3, align 4
  br label %211

198:                                              ; preds = %90
  %199 = load i64, i64* %13, align 8
  %200 = load i64, i64* @HFL_SKIP_IF_UNKNOWN, align 8
  %201 = and i64 %199, %200
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %205 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %204, i32 0, i32 0
  %206 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %207 = call i32 @archive_set_error(i32* %205, i32 %206, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %208 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %208, i32* %3, align 4
  br label %211

209:                                              ; preds = %198
  %210 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %209, %203, %196, %194, %184, %178, %169, %148, %141, %134, %132, %130, %88, %82, %76, %64, %54, %40, %35, %29, %23
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i32 @skip_unprocessed_bytes(%struct.archive_read*) #1

declare dso_local i32 @read_u32(%struct.archive_read*, i64*) #1

declare dso_local i32 @read_var_sized(%struct.archive_read*, i64*, i64*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @read_ahead(%struct.archive_read*, i64, i32**) #1

declare dso_local i64 @crc32(i32, i32*, i32) #1

declare dso_local i32 @consume(%struct.archive_read*, i64) #1

declare dso_local i32 @process_head_main(%struct.archive_read*, %struct.rar5*, %struct.archive_entry*, i64) #1

declare dso_local i32 @process_head_service(%struct.archive_read*, %struct.rar5*, %struct.archive_entry*, i64) #1

declare dso_local i32 @process_head_file(%struct.archive_read*, %struct.rar5*, %struct.archive_entry*, i64) #1

declare dso_local i32 @scan_for_signature(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
