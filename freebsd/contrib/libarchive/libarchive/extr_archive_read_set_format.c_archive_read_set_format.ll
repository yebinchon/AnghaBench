; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_set_format.c_archive_read_set_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_set_format.c_archive_read_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_BASE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"7zip\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cab\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cpio\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"iso9660\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"lha\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"mtree\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rar\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"rar5\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"xar\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"Invalid format code specified\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"Internal error: Unable to set format\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_set_format(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x i8], align 1
  %11 = alloca %struct.archive_read*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.archive*, %struct.archive** %4, align 8
  %13 = bitcast %struct.archive* %12 to %struct.archive_read*
  store %struct.archive_read* %13, %struct.archive_read** %11, align 8
  %14 = load %struct.archive*, %struct.archive** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @archive_read_support_format_by_code(%struct.archive* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %143

21:                                               ; preds = %2
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %22, i32* %7, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.archive_read*, %struct.archive_read** %11, align 8
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ARCHIVE_FORMAT_BASE_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %69 [
    i32 139, label %33
    i32 138, label %36
    i32 137, label %39
    i32 136, label %42
    i32 135, label %45
    i32 134, label %48
    i32 133, label %51
    i32 132, label %54
    i32 131, label %57
    i32 130, label %60
    i32 129, label %63
    i32 128, label %66
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %35 = call i32 @strcpy(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %75

36:                                               ; preds = %29
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %38 = call i32 @strcpy(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %75

39:                                               ; preds = %29
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %41 = call i32 @strcpy(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %75

42:                                               ; preds = %29
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %44 = call i32 @strcpy(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %75

45:                                               ; preds = %29
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %47 = call i32 @strcpy(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %75

48:                                               ; preds = %29
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %50 = call i32 @strcpy(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %75

51:                                               ; preds = %29
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %53 = call i32 @strcpy(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %75

54:                                               ; preds = %29
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %56 = call i32 @strcpy(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %75

57:                                               ; preds = %29
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %59 = call i32 @strcpy(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %75

60:                                               ; preds = %29
  %61 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %62 = call i32 @strcpy(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %75

63:                                               ; preds = %29
  %64 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %75

66:                                               ; preds = %29
  %67 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %68 = call i32 @strcpy(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %75

69:                                               ; preds = %29
  %70 = load %struct.archive_read*, %struct.archive_read** %11, align 8
  %71 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %70, i32 0, i32 0
  %72 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %73 = call i32 @archive_set_error(i32* %71, i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %74 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %74, i32* %3, align 4
  br label %143

75:                                               ; preds = %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33
  store i32 2, i32* %8, align 4
  %76 = load %struct.archive_read*, %struct.archive_read** %11, align 8
  %77 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 0
  %80 = load %struct.archive_read*, %struct.archive_read** %11, align 8
  %81 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %80, i32 0, i32 1
  store %struct.TYPE_2__* %79, %struct.TYPE_2__** %81, align 8
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %104, %75
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %82
  %87 = load %struct.archive_read*, %struct.archive_read** %11, align 8
  %88 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = load %struct.archive_read*, %struct.archive_read** %11, align 8
  %95 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %100 = call i64 @strcmp(i32 %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %93, %86
  br label %111

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  %107 = load %struct.archive_read*, %struct.archive_read** %11, align 8
  %108 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 1
  store %struct.TYPE_2__* %110, %struct.TYPE_2__** %108, align 8
  br label %82

111:                                              ; preds = %102, %82
  %112 = load %struct.archive_read*, %struct.archive_read** %11, align 8
  %113 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = load %struct.archive_read*, %struct.archive_read** %11, align 8
  %120 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %125 = call i64 @strcmp(i32 %123, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %118, %111
  %128 = load %struct.archive_read*, %struct.archive_read** %11, align 8
  %129 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %128, i32 0, i32 0
  %130 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %131 = call i32 @archive_set_error(i32* %129, i32 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %132 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %127, %118
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* %6, align 4
  br label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %69, %19
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @archive_read_support_format_by_code(%struct.archive*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
