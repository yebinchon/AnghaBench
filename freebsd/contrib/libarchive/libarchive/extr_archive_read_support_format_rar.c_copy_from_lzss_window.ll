; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_copy_from_lzss_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_copy_from_lzss_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.rar = type { i8*, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unable to allocate memory for uncompressed data.\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad RAR file data\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i32, i32)* @copy_from_lzss_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_from_lzss_window(%struct.archive_read* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rar*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %14 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.rar*
  store %struct.rar* %18, %struct.rar** %12, align 8
  %19 = load %struct.rar*, %struct.rar** %12, align 8
  %20 = getelementptr inbounds %struct.rar, %struct.rar* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %4
  %24 = load %struct.rar*, %struct.rar** %12, align 8
  %25 = getelementptr inbounds %struct.rar, %struct.rar* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @malloc(i32 %26)
  %28 = load %struct.rar*, %struct.rar** %12, align 8
  %29 = getelementptr inbounds %struct.rar, %struct.rar* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = icmp eq i8* %27, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %33 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %32, i32 0, i32 0
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @archive_set_error(i32* %33, i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %36, i32* %5, align 4
  br label %176

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.rar*, %struct.rar** %12, align 8
  %40 = getelementptr inbounds %struct.rar, %struct.rar* %39, i32 0, i32 3
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @lzss_offset_for_position(%struct.TYPE_5__* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.rar*, %struct.rar** %12, align 8
  %47 = getelementptr inbounds %struct.rar, %struct.rar* %46, i32 0, i32 3
  %48 = call i32 @lzss_size(%struct.TYPE_5__* %47)
  %49 = icmp sle i32 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %38
  %51 = load %struct.rar*, %struct.rar** %12, align 8
  %52 = getelementptr inbounds %struct.rar, %struct.rar* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.rar*, %struct.rar** %12, align 8
  %55 = getelementptr inbounds %struct.rar, %struct.rar* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load %struct.rar*, %struct.rar** %12, align 8
  %59 = getelementptr inbounds %struct.rar, %struct.rar* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @memcpy(i8* %57, i32* %64, i32 %65)
  br label %152

67:                                               ; preds = %38
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.rar*, %struct.rar** %12, align 8
  %70 = getelementptr inbounds %struct.rar, %struct.rar* %69, i32 0, i32 3
  %71 = call i32 @lzss_size(%struct.TYPE_5__* %70)
  %72 = icmp sle i32 %68, %71
  br i1 %72, label %73, label %145

73:                                               ; preds = %67
  %74 = load %struct.rar*, %struct.rar** %12, align 8
  %75 = getelementptr inbounds %struct.rar, %struct.rar* %74, i32 0, i32 3
  %76 = call i32 @lzss_size(%struct.TYPE_5__* %75)
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %83 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %82, i32 0, i32 0
  %84 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %85 = call i32 @archive_set_error(i32* %83, i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %86, i32* %5, align 4
  br label %176

87:                                               ; preds = %73
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %127

91:                                               ; preds = %87
  %92 = load %struct.rar*, %struct.rar** %12, align 8
  %93 = getelementptr inbounds %struct.rar, %struct.rar* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.rar*, %struct.rar** %12, align 8
  %96 = getelementptr inbounds %struct.rar, %struct.rar* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load %struct.rar*, %struct.rar** %12, align 8
  %100 = getelementptr inbounds %struct.rar, %struct.rar* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @memcpy(i8* %98, i32* %105, i32 %106)
  %108 = load %struct.rar*, %struct.rar** %12, align 8
  %109 = getelementptr inbounds %struct.rar, %struct.rar* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.rar*, %struct.rar** %12, align 8
  %112 = getelementptr inbounds %struct.rar, %struct.rar* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %113, %115
  %117 = getelementptr inbounds i8, i8* %110, i64 %116
  %118 = load %struct.rar*, %struct.rar** %12, align 8
  %119 = getelementptr inbounds %struct.rar, %struct.rar* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %123, %124
  %126 = call i32 @memcpy(i8* %117, i32* %122, i32 %125)
  br label %144

127:                                              ; preds = %87
  %128 = load %struct.rar*, %struct.rar** %12, align 8
  %129 = getelementptr inbounds %struct.rar, %struct.rar* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.rar*, %struct.rar** %12, align 8
  %132 = getelementptr inbounds %struct.rar, %struct.rar* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load %struct.rar*, %struct.rar** %12, align 8
  %136 = getelementptr inbounds %struct.rar, %struct.rar* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @memcpy(i8* %134, i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %127, %91
  br label %151

145:                                              ; preds = %67
  %146 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %147 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %146, i32 0, i32 0
  %148 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %149 = call i32 @archive_set_error(i32* %147, i32 %148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %150 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %150, i32* %5, align 4
  br label %176

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %50
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = load %struct.rar*, %struct.rar** %12, align 8
  %156 = getelementptr inbounds %struct.rar, %struct.rar* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load %struct.rar*, %struct.rar** %12, align 8
  %160 = getelementptr inbounds %struct.rar, %struct.rar* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.rar*, %struct.rar** %12, align 8
  %163 = getelementptr inbounds %struct.rar, %struct.rar* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = icmp uge i64 %161, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %152
  %168 = load %struct.rar*, %struct.rar** %12, align 8
  %169 = getelementptr inbounds %struct.rar, %struct.rar* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i8**, i8*** %7, align 8
  store i8* %170, i8** %171, align 8
  br label %174

172:                                              ; preds = %152
  %173 = load i8**, i8*** %7, align 8
  store i8* null, i8** %173, align 8
  br label %174

174:                                              ; preds = %172, %167
  %175 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %174, %145, %81, %31
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @lzss_offset_for_position(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lzss_size(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
