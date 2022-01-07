; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zipx_ppmd8_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zipx_ppmd8_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, %struct.archive_read* }
%struct.archive_read = type { i32 }
%struct.zip = type { i32, i32, i32, i64, i32, i32*, %struct.TYPE_11__, %struct.TYPE_10__, i64 }

@__archive_ppmd8_functions = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ppmd_read = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Truncated file data in PPMd8 stream\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Invalid parameter set in PPMd8 stream (order=%d, restore=%d)\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Unable to allocate memory for PPMd8 stream: %d bytes\00", align 1
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"PPMd8 stream range decoder initialization error\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"No memory for PPMd8 decompression\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.zip*)* @zipx_ppmd8_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zipx_ppmd8_init(%struct.archive_read* %0, %struct.zip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.zip* %1, %struct.zip** %5, align 8
  %11 = load %struct.zip*, %struct.zip** %5, align 8
  %12 = getelementptr inbounds %struct.zip, %struct.zip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @__archive_ppmd8_functions, i32 0, i32 4), align 8
  %17 = load %struct.zip*, %struct.zip** %5, align 8
  %18 = getelementptr inbounds %struct.zip, %struct.zip* %17, i32 0, i32 6
  %19 = call i32 %16(%struct.TYPE_11__* %18)
  %20 = load %struct.zip*, %struct.zip** %5, align 8
  %21 = getelementptr inbounds %struct.zip, %struct.zip* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %15, %2
  %23 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @__archive_ppmd8_functions, i32 0, i32 3), align 8
  %24 = load %struct.zip*, %struct.zip** %5, align 8
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %24, i32 0, i32 6
  %26 = call i32 %23(%struct.TYPE_11__* %25)
  %27 = load %struct.zip*, %struct.zip** %5, align 8
  %28 = getelementptr inbounds %struct.zip, %struct.zip* %27, i32 0, i32 8
  store i64 0, i64* %28, align 8
  %29 = load %struct.zip*, %struct.zip** %5, align 8
  %30 = getelementptr inbounds %struct.zip, %struct.zip* %29, i32 0, i32 7
  %31 = load %struct.zip*, %struct.zip** %5, align 8
  %32 = getelementptr inbounds %struct.zip, %struct.zip* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %34, align 8
  %35 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %36 = load %struct.zip*, %struct.zip** %5, align 8
  %37 = getelementptr inbounds %struct.zip, %struct.zip* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store %struct.archive_read* %35, %struct.archive_read** %38, align 8
  %39 = load %struct.zip*, %struct.zip** %5, align 8
  %40 = getelementptr inbounds %struct.zip, %struct.zip* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32* @ppmd_read, i32** %41, align 8
  %42 = load %struct.zip*, %struct.zip** %5, align 8
  %43 = getelementptr inbounds %struct.zip, %struct.zip* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %45 = call i8* @__archive_read_ahead(%struct.archive_read* %44, i32 2, i32* null)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %22
  %49 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %50 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %49, i32 0, i32 0
  %51 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %52 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %50, i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %53, i32* %3, align 4
  br label %155

54:                                               ; preds = %22
  %55 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %56 = call i32 @__archive_read_consume(%struct.archive_read* %55, i32 2)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @archive_le16dec(i8* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 15
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 4
  %64 = and i32 %63, 255
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 12
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %73, label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 2
  br i1 %72, label %73, label %81

73:                                               ; preds = %70, %54
  %74 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %75 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %74, i32 0, i32 0
  %76 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %75, i32 %76, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %80, i32* %3, align 4
  br label %155

81:                                               ; preds = %70
  %82 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @__archive_ppmd8_functions, i32 0, i32 2), align 8
  %83 = load %struct.zip*, %struct.zip** %5, align 8
  %84 = getelementptr inbounds %struct.zip, %struct.zip* %83, i32 0, i32 6
  %85 = load i32, i32* %9, align 4
  %86 = shl i32 %85, 20
  %87 = call i32 %82(%struct.TYPE_11__* %84, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %81
  %90 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %91 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %90, i32 0, i32 0
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = load i32, i32* %9, align 4
  %94 = shl i32 %93, 20
  %95 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %91, i32 %92, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %96, i32* %3, align 4
  br label %155

97:                                               ; preds = %81
  %98 = load %struct.zip*, %struct.zip** %5, align 8
  %99 = getelementptr inbounds %struct.zip, %struct.zip* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @__archive_ppmd8_functions, i32 0, i32 1), align 8
  %101 = load %struct.zip*, %struct.zip** %5, align 8
  %102 = getelementptr inbounds %struct.zip, %struct.zip* %101, i32 0, i32 6
  %103 = call i32 %100(%struct.TYPE_11__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %97
  %106 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %107 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %106, i32 0, i32 0
  %108 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %109 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %107, i32 %108, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %110, i32* %3, align 4
  br label %155

111:                                              ; preds = %97
  %112 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @__archive_ppmd8_functions, i32 0, i32 0), align 8
  %113 = load %struct.zip*, %struct.zip** %5, align 8
  %114 = getelementptr inbounds %struct.zip, %struct.zip* %113, i32 0, i32 6
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 %112(%struct.TYPE_11__* %114, i32 %115, i32 %116)
  %118 = load %struct.zip*, %struct.zip** %5, align 8
  %119 = getelementptr inbounds %struct.zip, %struct.zip* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @free(i32* %120)
  %122 = load %struct.zip*, %struct.zip** %5, align 8
  %123 = getelementptr inbounds %struct.zip, %struct.zip* %122, i32 0, i32 1
  store i32 262144, i32* %123, align 4
  %124 = load %struct.zip*, %struct.zip** %5, align 8
  %125 = getelementptr inbounds %struct.zip, %struct.zip* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @malloc(i32 %126)
  %128 = inttoptr i64 %127 to i32*
  %129 = load %struct.zip*, %struct.zip** %5, align 8
  %130 = getelementptr inbounds %struct.zip, %struct.zip* %129, i32 0, i32 5
  store i32* %128, i32** %130, align 8
  %131 = load %struct.zip*, %struct.zip** %5, align 8
  %132 = getelementptr inbounds %struct.zip, %struct.zip* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %111
  %136 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %137 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %136, i32 0, i32 0
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %137, i32 %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %140, i32* %3, align 4
  br label %155

141:                                              ; preds = %111
  %142 = load %struct.zip*, %struct.zip** %5, align 8
  %143 = getelementptr inbounds %struct.zip, %struct.zip* %142, i32 0, i32 2
  store i32 1, i32* %143, align 8
  %144 = load %struct.zip*, %struct.zip** %5, align 8
  %145 = getelementptr inbounds %struct.zip, %struct.zip* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 2, %146
  %148 = load %struct.zip*, %struct.zip** %5, align 8
  %149 = getelementptr inbounds %struct.zip, %struct.zip* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 8
  %154 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %141, %135, %105, %89, %73, %48
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

declare dso_local i32 @archive_le16dec(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
