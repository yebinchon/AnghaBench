; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_make_substreamsInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_make_substreamsInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct.coder = type { i64 }
%struct._7zip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.file* }
%struct.file = type { i64, i32, %struct.file* }

@kSubStreamsInfo = common dso_local global i32 0, align 4
@_7Z_COPY = common dso_local global i64 0, align 8
@kNumUnPackStream = common dso_local global i32 0, align 4
@kSize = common dso_local global i32 0, align 4
@kCRC = common dso_local global i32 0, align 4
@ARCHIVE_Z_RUN = common dso_local global i32 0, align 4
@kEnd = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.coder*)* @make_substreamsInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_substreamsInfo(%struct.archive_write* %0, %struct.coder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.coder*, align 8
  %6 = alloca %struct._7zip*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.coder* %1, %struct.coder** %5, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct._7zip*
  store %struct._7zip* %13, %struct._7zip** %6, align 8
  %14 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %15 = load i32, i32* @kSubStreamsInfo, align 4
  %16 = call i32 @enc_uint64(%struct.archive_write* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %155

21:                                               ; preds = %2
  %22 = load %struct._7zip*, %struct._7zip** %6, align 8
  %23 = getelementptr inbounds %struct._7zip, %struct._7zip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %96

26:                                               ; preds = %21
  %27 = load %struct.coder*, %struct.coder** %5, align 8
  %28 = getelementptr inbounds %struct.coder, %struct.coder* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @_7Z_COPY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %26
  %33 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %34 = load i32, i32* @kNumUnPackStream, align 4
  %35 = call i32 @enc_uint64(%struct.archive_write* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %155

40:                                               ; preds = %32
  %41 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %42 = load %struct._7zip*, %struct._7zip** %6, align 8
  %43 = getelementptr inbounds %struct._7zip, %struct._7zip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @enc_uint64(%struct.archive_write* %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %155

50:                                               ; preds = %40
  %51 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %52 = load i32, i32* @kSize, align 4
  %53 = call i32 @enc_uint64(%struct.archive_write* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %155

58:                                               ; preds = %50
  %59 = load %struct._7zip*, %struct._7zip** %6, align 8
  %60 = getelementptr inbounds %struct._7zip, %struct._7zip* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.file*, %struct.file** %61, align 8
  store %struct.file* %62, %struct.file** %7, align 8
  br label %63

63:                                               ; preds = %91, %58
  %64 = load %struct.file*, %struct.file** %7, align 8
  %65 = icmp ne %struct.file* %64, null
  br i1 %65, label %66, label %95

66:                                               ; preds = %63
  %67 = load %struct.file*, %struct.file** %7, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 2
  %69 = load %struct.file*, %struct.file** %68, align 8
  %70 = icmp eq %struct.file* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = load %struct.file*, %struct.file** %7, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 2
  %74 = load %struct.file*, %struct.file** %73, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71, %66
  br label %95

79:                                               ; preds = %71
  %80 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %81 = load %struct.file*, %struct.file** %7, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @enc_uint64(%struct.archive_write* %80, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %155

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.file*, %struct.file** %7, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 2
  %94 = load %struct.file*, %struct.file** %93, align 8
  store %struct.file* %94, %struct.file** %7, align 8
  br label %63

95:                                               ; preds = %78, %63
  br label %96

96:                                               ; preds = %95, %26, %21
  %97 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %98 = load i32, i32* @kCRC, align 4
  %99 = call i32 @enc_uint64(%struct.archive_write* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %155

104:                                              ; preds = %96
  %105 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %106 = call i32 @enc_uint64(%struct.archive_write* %105, i32 1)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %155

111:                                              ; preds = %104
  %112 = load %struct._7zip*, %struct._7zip** %6, align 8
  %113 = getelementptr inbounds %struct._7zip, %struct._7zip* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load %struct.file*, %struct.file** %114, align 8
  store %struct.file* %115, %struct.file** %7, align 8
  br label %116

116:                                              ; preds = %141, %111
  %117 = load %struct.file*, %struct.file** %7, align 8
  %118 = icmp ne %struct.file* %117, null
  br i1 %118, label %119, label %145

119:                                              ; preds = %116
  %120 = load %struct.file*, %struct.file** %7, align 8
  %121 = getelementptr inbounds %struct.file, %struct.file* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %145

125:                                              ; preds = %119
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %127 = load %struct.file*, %struct.file** %7, align 8
  %128 = getelementptr inbounds %struct.file, %struct.file* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @archive_le32enc(i32* %126, i32 %129)
  %131 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %133 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %134 = call i64 @compress_out(%struct.archive_write* %131, i32* %132, i32 4, i32 %133)
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %125
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %3, align 4
  br label %155

140:                                              ; preds = %125
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.file*, %struct.file** %7, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 2
  %144 = load %struct.file*, %struct.file** %143, align 8
  store %struct.file* %144, %struct.file** %7, align 8
  br label %116

145:                                              ; preds = %124, %116
  %146 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %147 = load i32, i32* @kEnd, align 4
  %148 = call i32 @enc_uint64(%struct.archive_write* %146, i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %155

153:                                              ; preds = %145
  %154 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %151, %138, %109, %102, %88, %56, %48, %38, %19
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @enc_uint64(%struct.archive_write*, i32) #1

declare dso_local i32 @archive_le32enc(i32*, i32) #1

declare dso_local i64 @compress_out(%struct.archive_write*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
