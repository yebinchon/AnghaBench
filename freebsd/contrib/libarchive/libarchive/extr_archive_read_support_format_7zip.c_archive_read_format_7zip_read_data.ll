; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_archive_read_format_7zip_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_archive_read_format_7zip_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct._7zip = type { i64, i64, i32, i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i64 0, align 8
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Truncated 7-Zip file body\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@CRC32_IS_SET = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"7-Zip bad CRC: 0x%lx should be 0x%lx\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i64*)* @archive_read_format_7zip_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_7zip_read_data(%struct.archive_read* %0, i8** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct._7zip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %15 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct._7zip*
  store %struct._7zip* %19, %struct._7zip** %10, align 8
  %20 = load %struct._7zip*, %struct._7zip** %10, align 8
  %21 = getelementptr inbounds %struct._7zip, %struct._7zip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct._7zip*, %struct._7zip** %10, align 8
  %27 = getelementptr inbounds %struct._7zip, %struct._7zip* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %4
  %29 = load %struct._7zip*, %struct._7zip** %10, align 8
  %30 = getelementptr inbounds %struct._7zip, %struct._7zip* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %35 = call i32 @read_consume(%struct.archive_read* %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct._7zip*, %struct._7zip** %10, align 8
  %38 = getelementptr inbounds %struct._7zip, %struct._7zip* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %8, align 8
  store i64 0, i64* %41, align 8
  %42 = load i8**, i8*** %7, align 8
  store i8* null, i8** %42, align 8
  %43 = load %struct._7zip*, %struct._7zip** %10, align 8
  %44 = getelementptr inbounds %struct._7zip, %struct._7zip* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %48, i32* %5, align 4
  br label %172

49:                                               ; preds = %36
  %50 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %51 = load i8**, i8*** %7, align 8
  %52 = load %struct._7zip*, %struct._7zip** %10, align 8
  %53 = getelementptr inbounds %struct._7zip, %struct._7zip* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @read_stream(%struct.archive_read* %50, i8** %51, i64 %54, i32 0)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ult i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i64, i64* %11, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %172

61:                                               ; preds = %49
  %62 = load i64, i64* %11, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %66 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %65, i32 0, i32 0
  %67 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %68 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %66, i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %69, i32* %5, align 4
  br label %172

70:                                               ; preds = %61
  %71 = load i64, i64* %11, align 8
  %72 = load %struct._7zip*, %struct._7zip** %10, align 8
  %73 = getelementptr inbounds %struct._7zip, %struct._7zip* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct._7zip*, %struct._7zip** %10, align 8
  %77 = getelementptr inbounds %struct._7zip, %struct._7zip* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load %struct._7zip*, %struct._7zip** %10, align 8
  %82 = getelementptr inbounds %struct._7zip, %struct._7zip* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %70
  %84 = load %struct._7zip*, %struct._7zip** %10, align 8
  %85 = getelementptr inbounds %struct._7zip, %struct._7zip* %84, i32 0, i32 5
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CRC32_IS_SET, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %83
  %93 = load i64, i64* %11, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load %struct._7zip*, %struct._7zip** %10, align 8
  %97 = getelementptr inbounds %struct._7zip, %struct._7zip* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load i8**, i8*** %7, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i64 @crc32(i64 %98, i8* %100, i32 %102)
  %104 = load %struct._7zip*, %struct._7zip** %10, align 8
  %105 = getelementptr inbounds %struct._7zip, %struct._7zip* %104, i32 0, i32 4
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %95, %92, %83
  %107 = load %struct._7zip*, %struct._7zip** %10, align 8
  %108 = getelementptr inbounds %struct._7zip, %struct._7zip* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %159

111:                                              ; preds = %106
  %112 = load %struct._7zip*, %struct._7zip** %10, align 8
  %113 = getelementptr inbounds %struct._7zip, %struct._7zip* %112, i32 0, i32 5
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @CRC32_IS_SET, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %111
  %121 = load %struct._7zip*, %struct._7zip** %10, align 8
  %122 = getelementptr inbounds %struct._7zip, %struct._7zip* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct._7zip*, %struct._7zip** %10, align 8
  %127 = getelementptr inbounds %struct._7zip, %struct._7zip* %126, i32 0, i32 5
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i64, i64* %125, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load %struct._7zip*, %struct._7zip** %10, align 8
  %134 = getelementptr inbounds %struct._7zip, %struct._7zip* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %132, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %120
  %138 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %139 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %138, i32 0, i32 0
  %140 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %141 = load %struct._7zip*, %struct._7zip** %10, align 8
  %142 = getelementptr inbounds %struct._7zip, %struct._7zip* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load %struct._7zip*, %struct._7zip** %10, align 8
  %145 = getelementptr inbounds %struct._7zip, %struct._7zip* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = load %struct._7zip*, %struct._7zip** %10, align 8
  %150 = getelementptr inbounds %struct._7zip, %struct._7zip* %149, i32 0, i32 5
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i64, i64* %148, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %139, i32 %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %143, i64 %155)
  %157 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %137, %120, %111
  br label %159

159:                                              ; preds = %158, %106
  %160 = load i64, i64* %11, align 8
  %161 = load i64*, i64** %8, align 8
  store i64 %160, i64* %161, align 8
  %162 = load %struct._7zip*, %struct._7zip** %10, align 8
  %163 = getelementptr inbounds %struct._7zip, %struct._7zip* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64*, i64** %9, align 8
  store i64 %164, i64* %165, align 8
  %166 = load i64, i64* %11, align 8
  %167 = load %struct._7zip*, %struct._7zip** %10, align 8
  %168 = getelementptr inbounds %struct._7zip, %struct._7zip* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, %166
  store i64 %170, i64* %168, align 8
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %159, %64, %58, %47
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @read_consume(%struct.archive_read*) #1

declare dso_local i64 @read_stream(%struct.archive_read*, i8**, i64, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i64 @crc32(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
