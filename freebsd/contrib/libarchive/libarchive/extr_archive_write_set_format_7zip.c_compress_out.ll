; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compress_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compress_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct._7zip = type { i32, i8*, i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i64, i8*, i64, i32, i8* }

@ARCHIVE_Z_FINISH = common dso_local global i32 0, align 4
@PRECODE_CRC32 = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@ENCODED_CRC32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_write*, i8*, i64, i32)* @compress_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compress_out(%struct.archive_write* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.archive_write*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._7zip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %14 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct._7zip*
  store %struct._7zip* %16, %struct._7zip** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @ARCHIVE_Z_FINISH, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct._7zip*, %struct._7zip** %10, align 8
  %22 = getelementptr inbounds %struct._7zip, %struct._7zip* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 0, i64* %5, align 8
  br label %182

30:                                               ; preds = %26, %20, %4
  %31 = load %struct._7zip*, %struct._7zip** %10, align 8
  %32 = getelementptr inbounds %struct._7zip, %struct._7zip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PRECODE_CRC32, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct._7zip*, %struct._7zip** %10, align 8
  %42 = getelementptr inbounds %struct._7zip, %struct._7zip* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i8* @crc32(i8* %43, i8* %44, i32 %46)
  %48 = load %struct._7zip*, %struct._7zip** %10, align 8
  %49 = getelementptr inbounds %struct._7zip, %struct._7zip* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %40, %37, %30
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct._7zip*, %struct._7zip** %10, align 8
  %53 = getelementptr inbounds %struct._7zip, %struct._7zip* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load %struct._7zip*, %struct._7zip** %10, align 8
  %57 = getelementptr inbounds %struct._7zip, %struct._7zip* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  br label %59

59:                                               ; preds = %134, %125, %50
  %60 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %61 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %60, i32 0, i32 0
  %62 = load %struct._7zip*, %struct._7zip** %10, align 8
  %63 = getelementptr inbounds %struct._7zip, %struct._7zip* %62, i32 0, i32 3
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @compression_code(i32* %61, %struct.TYPE_2__* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @ARCHIVE_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @ARCHIVE_EOF, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %74, i64* %5, align 8
  br label %182

75:                                               ; preds = %69, %59
  %76 = load %struct._7zip*, %struct._7zip** %10, align 8
  %77 = getelementptr inbounds %struct._7zip, %struct._7zip* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %127

81:                                               ; preds = %75
  %82 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %83 = load %struct._7zip*, %struct._7zip** %10, align 8
  %84 = getelementptr inbounds %struct._7zip, %struct._7zip* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @write_to_temp(%struct.archive_write* %82, i8* %85, i64 8)
  %87 = load i32, i32* @ARCHIVE_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %90, i64* %5, align 8
  br label %182

91:                                               ; preds = %81
  %92 = load %struct._7zip*, %struct._7zip** %10, align 8
  %93 = getelementptr inbounds %struct._7zip, %struct._7zip* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct._7zip*, %struct._7zip** %10, align 8
  %96 = getelementptr inbounds %struct._7zip, %struct._7zip* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  store i8* %94, i8** %97, align 8
  %98 = load %struct._7zip*, %struct._7zip** %10, align 8
  %99 = getelementptr inbounds %struct._7zip, %struct._7zip* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  store i32 8, i32* %100, align 8
  %101 = load %struct._7zip*, %struct._7zip** %10, align 8
  %102 = getelementptr inbounds %struct._7zip, %struct._7zip* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ENCODED_CRC32, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %91
  %108 = load %struct._7zip*, %struct._7zip** %10, align 8
  %109 = getelementptr inbounds %struct._7zip, %struct._7zip* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct._7zip*, %struct._7zip** %10, align 8
  %112 = getelementptr inbounds %struct._7zip, %struct._7zip* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @crc32(i8* %110, i8* %113, i32 8)
  %115 = load %struct._7zip*, %struct._7zip** %10, align 8
  %116 = getelementptr inbounds %struct._7zip, %struct._7zip* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %107, %91
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @ARCHIVE_Z_FINISH, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @ARCHIVE_EOF, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %59

126:                                              ; preds = %121, %117
  br label %127

127:                                              ; preds = %126, %75
  %128 = load %struct._7zip*, %struct._7zip** %10, align 8
  %129 = getelementptr inbounds %struct._7zip, %struct._7zip* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %135

134:                                              ; preds = %127
  br label %59

135:                                              ; preds = %133
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @ARCHIVE_Z_FINISH, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %180

139:                                              ; preds = %135
  %140 = load %struct._7zip*, %struct._7zip** %10, align 8
  %141 = getelementptr inbounds %struct._7zip, %struct._7zip* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = sub i64 8, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %12, align 4
  %147 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %148 = load %struct._7zip*, %struct._7zip** %10, align 8
  %149 = getelementptr inbounds %struct._7zip, %struct._7zip* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = call i32 @write_to_temp(%struct.archive_write* %147, i8* %150, i64 %152)
  %154 = load i32, i32* @ARCHIVE_OK, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %139
  %157 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %157, i64* %5, align 8
  br label %182

158:                                              ; preds = %139
  %159 = load %struct._7zip*, %struct._7zip** %10, align 8
  %160 = getelementptr inbounds %struct._7zip, %struct._7zip* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @ENCODED_CRC32, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %158
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %165
  %169 = load %struct._7zip*, %struct._7zip** %10, align 8
  %170 = getelementptr inbounds %struct._7zip, %struct._7zip* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct._7zip*, %struct._7zip** %10, align 8
  %173 = getelementptr inbounds %struct._7zip, %struct._7zip* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i8* @crc32(i8* %171, i8* %174, i32 %175)
  %177 = load %struct._7zip*, %struct._7zip** %10, align 8
  %178 = getelementptr inbounds %struct._7zip, %struct._7zip* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %168, %165, %158
  br label %180

180:                                              ; preds = %179, %135
  %181 = load i64, i64* %8, align 8
  store i64 %181, i64* %5, align 8
  br label %182

182:                                              ; preds = %180, %156, %89, %73, %29
  %183 = load i64, i64* %5, align 8
  ret i64 %183
}

declare dso_local i8* @crc32(i8*, i8*, i32) #1

declare dso_local i32 @compression_code(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @write_to_temp(%struct.archive_write*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
