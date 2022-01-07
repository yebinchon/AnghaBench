; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_iso9660_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_iso9660_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { %struct.content* }
%struct.content = type { i64, i32, %struct.content*, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't create temporary file\00", align 1
@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@MULTI_EXTENT_SIZE = common dso_local global i64 0, align 8
@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@LOGICAL_BLOCK_BITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't allocate content data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_write*, i8*, i64)* @write_iso9660_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_iso9660_data(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iso9660*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.content*, align 8
  %11 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %13 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %12, i32 0, i32 1
  %14 = load %struct.iso9660*, %struct.iso9660** %13, align 8
  store %struct.iso9660* %14, %struct.iso9660** %8, align 8
  %15 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %16 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 0
  %22 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %23 = call i32 @archive_set_error(i32* %21, i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %24, i64* %4, align 8
  br label %220

25:                                               ; preds = %3
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %28 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %172

31:                                               ; preds = %25
  %32 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %33 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.content*, %struct.content** %35, align 8
  %37 = getelementptr inbounds %struct.content, %struct.content* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* @MULTI_EXTENT_SIZE, align 8
  %42 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 %41, %43
  %45 = icmp uge i64 %40, %44
  br i1 %45, label %46, label %172

46:                                               ; preds = %31
  %47 = load i64, i64* @MULTI_EXTENT_SIZE, align 8
  %48 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %47, %49
  %51 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %52 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.content*, %struct.content** %54, align 8
  %56 = getelementptr inbounds %struct.content, %struct.content* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %50, %57
  store i64 %58, i64* %11, align 8
  %59 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %60 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %46
  %65 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @zisofs_detect_magic(%struct.archive_write* %65, i8* %66, i64 %67)
  br label %69

69:                                               ; preds = %64, %46
  %70 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %71 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @zisofs_write_to_temp(%struct.archive_write* %76, i8* %77, i64 %78)
  %80 = load i64, i64* @ARCHIVE_OK, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %83, i64* %4, align 8
  br label %220

84:                                               ; preds = %75
  br label %104

85:                                               ; preds = %69
  %86 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @wb_write_to_temp(%struct.archive_write* %86, i8* %87, i64 %88)
  %90 = load i64, i64* @ARCHIVE_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %93, i64* %4, align 8
  br label %220

94:                                               ; preds = %85
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %97 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.content*, %struct.content** %99, align 8
  %101 = getelementptr inbounds %struct.content, %struct.content* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %95
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %94, %84
  %105 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %106 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %107 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.content*, %struct.content** %109, align 8
  %111 = getelementptr inbounds %struct.content, %struct.content* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @wb_write_padding_to_temp(%struct.archive_write* %105, i64 %112)
  %114 = load i64, i64* @ARCHIVE_OK, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %117, i64* %4, align 8
  br label %220

118:                                              ; preds = %104
  %119 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %120 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.content*, %struct.content** %122, align 8
  %124 = getelementptr inbounds %struct.content, %struct.content* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 %125, %127
  %129 = sub i64 %128, 1
  %130 = load i32, i32* @LOGICAL_BLOCK_BITS, align 4
  %131 = zext i32 %130 to i64
  %132 = lshr i64 %129, %131
  %133 = trunc i64 %132 to i32
  %134 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %135 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load %struct.content*, %struct.content** %137, align 8
  %139 = getelementptr inbounds %struct.content, %struct.content* %138, i32 0, i32 1
  store i32 %133, i32* %139, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* %9, align 8
  %142 = sub i64 %141, %140
  store i64 %142, i64* %9, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = load i64, i64* %11, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8* %145, i8** %6, align 8
  %146 = call %struct.content* @calloc(i32 1, i32 32)
  store %struct.content* %146, %struct.content** %10, align 8
  %147 = load %struct.content*, %struct.content** %10, align 8
  %148 = icmp eq %struct.content* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %118
  %150 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %151 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %150, i32 0, i32 0
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = call i32 @archive_set_error(i32* %151, i32 %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %154 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %154, i64* %4, align 8
  br label %220

155:                                              ; preds = %118
  %156 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %157 = call i32 @wb_offset(%struct.archive_write* %156)
  %158 = load %struct.content*, %struct.content** %10, align 8
  %159 = getelementptr inbounds %struct.content, %struct.content* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load %struct.content*, %struct.content** %10, align 8
  %161 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %162 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load %struct.content*, %struct.content** %164, align 8
  %166 = getelementptr inbounds %struct.content, %struct.content* %165, i32 0, i32 2
  store %struct.content* %160, %struct.content** %166, align 8
  %167 = load %struct.content*, %struct.content** %10, align 8
  %168 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %169 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %168, i32 0, i32 1
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store %struct.content* %167, %struct.content** %171, align 8
  br label %172

172:                                              ; preds = %155, %31, %25
  %173 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %174 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %180 = load i8*, i8** %6, align 8
  %181 = load i64, i64* %9, align 8
  %182 = call i32 @zisofs_detect_magic(%struct.archive_write* %179, i8* %180, i64 %181)
  br label %183

183:                                              ; preds = %178, %172
  %184 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %185 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %183
  %190 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = load i64, i64* %9, align 8
  %193 = call i64 @zisofs_write_to_temp(%struct.archive_write* %190, i8* %191, i64 %192)
  %194 = load i64, i64* @ARCHIVE_OK, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %189
  %197 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %197, i64* %4, align 8
  br label %220

198:                                              ; preds = %189
  br label %218

199:                                              ; preds = %183
  %200 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %201 = load i8*, i8** %6, align 8
  %202 = load i64, i64* %9, align 8
  %203 = call i64 @wb_write_to_temp(%struct.archive_write* %200, i8* %201, i64 %202)
  %204 = load i64, i64* @ARCHIVE_OK, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %199
  %207 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %207, i64* %4, align 8
  br label %220

208:                                              ; preds = %199
  %209 = load i64, i64* %9, align 8
  %210 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %211 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %210, i32 0, i32 1
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load %struct.content*, %struct.content** %213, align 8
  %215 = getelementptr inbounds %struct.content, %struct.content* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %216, %209
  store i64 %217, i64* %215, align 8
  br label %218

218:                                              ; preds = %208, %198
  %219 = load i64, i64* %7, align 8
  store i64 %219, i64* %4, align 8
  br label %220

220:                                              ; preds = %218, %206, %196, %149, %116, %92, %82, %19
  %221 = load i64, i64* %4, align 8
  ret i64 %221
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @zisofs_detect_magic(%struct.archive_write*, i8*, i64) #1

declare dso_local i64 @zisofs_write_to_temp(%struct.archive_write*, i8*, i64) #1

declare dso_local i64 @wb_write_to_temp(%struct.archive_write*, i8*, i64) #1

declare dso_local i64 @wb_write_padding_to_temp(%struct.archive_write*, i64) #1

declare dso_local %struct.content* @calloc(i32, i32) #1

declare dso_local i32 @wb_offset(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
