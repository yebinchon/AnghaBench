; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_append_filter.c_archive_read_append_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_append_filter.c_archive_read_append_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read_filter_bidder = type { i32 (%struct.archive_read_filter*)*, i32 }
%struct.archive_read_filter = type opaque
%struct.archive_read_filter.0 = type { %struct.archive_read_filter.0*, %struct.archive_read*, %struct.archive_read_filter_bidder* }
%struct.archive_read = type { i32, %struct.archive_read_filter.0*, i32, %struct.archive_read_filter_bidder* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"compress (.Z)\00", align 1
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Cannot append program filter using archive_read_append_filter\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"uu\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rpm\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"lzip\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"lrzip\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Invalid filter code specified\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Internal error: Unable to append filter\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_append_filter(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [20 x i8], align 16
  %11 = alloca %struct.archive_read_filter_bidder*, align 8
  %12 = alloca %struct.archive_read_filter.0*, align 8
  %13 = alloca %struct.archive_read*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.archive*, %struct.archive** %4, align 8
  %15 = bitcast %struct.archive* %14 to %struct.archive_read*
  store %struct.archive_read* %15, %struct.archive_read** %13, align 8
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %81 [
    i32 133, label %18
    i32 138, label %20
    i32 140, label %25
    i32 139, label %30
    i32 132, label %35
    i32 134, label %41
    i32 129, label %46
    i32 130, label %51
    i32 131, label %56
    i32 136, label %61
    i32 128, label %66
    i32 135, label %71
    i32 137, label %76
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %19, i32* %6, align 4
  br label %87

20:                                               ; preds = %2
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.archive*, %struct.archive** %4, align 8
  %24 = call i32 @archive_read_support_filter_gzip(%struct.archive* %23)
  store i32 %24, i32* %6, align 4
  br label %87

25:                                               ; preds = %2
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %27 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.archive*, %struct.archive** %4, align 8
  %29 = call i32 @archive_read_support_filter_bzip2(%struct.archive* %28)
  store i32 %29, i32* %6, align 4
  br label %87

30:                                               ; preds = %2
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %32 = call i32 @strcpy(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.archive*, %struct.archive** %4, align 8
  %34 = call i32 @archive_read_support_filter_compress(%struct.archive* %33)
  store i32 %34, i32* %6, align 4
  br label %87

35:                                               ; preds = %2
  %36 = load %struct.archive_read*, %struct.archive_read** %13, align 8
  %37 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %36, i32 0, i32 2
  %38 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %39 = call i32 @archive_set_error(i32* %37, i32 %38, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %40, i32* %3, align 4
  br label %189

41:                                               ; preds = %2
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %43 = call i32 @strcpy(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %44 = load %struct.archive*, %struct.archive** %4, align 8
  %45 = call i32 @archive_read_support_filter_lzma(%struct.archive* %44)
  store i32 %45, i32* %6, align 4
  br label %87

46:                                               ; preds = %2
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %48 = call i32 @strcpy(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %49 = load %struct.archive*, %struct.archive** %4, align 8
  %50 = call i32 @archive_read_support_filter_xz(%struct.archive* %49)
  store i32 %50, i32* %6, align 4
  br label %87

51:                                               ; preds = %2
  %52 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %53 = call i32 @strcpy(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %54 = load %struct.archive*, %struct.archive** %4, align 8
  %55 = call i32 @archive_read_support_filter_uu(%struct.archive* %54)
  store i32 %55, i32* %6, align 4
  br label %87

56:                                               ; preds = %2
  %57 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %58 = call i32 @strcpy(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %59 = load %struct.archive*, %struct.archive** %4, align 8
  %60 = call i32 @archive_read_support_filter_rpm(%struct.archive* %59)
  store i32 %60, i32* %6, align 4
  br label %87

61:                                               ; preds = %2
  %62 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %63 = call i32 @strcpy(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %64 = load %struct.archive*, %struct.archive** %4, align 8
  %65 = call i32 @archive_read_support_filter_lz4(%struct.archive* %64)
  store i32 %65, i32* %6, align 4
  br label %87

66:                                               ; preds = %2
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %68 = call i32 @strcpy(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %69 = load %struct.archive*, %struct.archive** %4, align 8
  %70 = call i32 @archive_read_support_filter_zstd(%struct.archive* %69)
  store i32 %70, i32* %6, align 4
  br label %87

71:                                               ; preds = %2
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %73 = call i32 @strcpy(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %74 = load %struct.archive*, %struct.archive** %4, align 8
  %75 = call i32 @archive_read_support_filter_lzip(%struct.archive* %74)
  store i32 %75, i32* %6, align 4
  br label %87

76:                                               ; preds = %2
  %77 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %78 = call i32 @strcpy(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %79 = load %struct.archive*, %struct.archive** %4, align 8
  %80 = call i32 @archive_read_support_filter_lrzip(%struct.archive* %79)
  store i32 %80, i32* %6, align 4
  br label %87

81:                                               ; preds = %2
  %82 = load %struct.archive_read*, %struct.archive_read** %13, align 8
  %83 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %82, i32 0, i32 2
  %84 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %85 = call i32 @archive_set_error(i32* %83, i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %86 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %86, i32* %3, align 4
  br label %189

87:                                               ; preds = %76, %71, %66, %61, %56, %51, %46, %41, %30, %25, %20, %18
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 133
  br i1 %89, label %90, label %177

90:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  %91 = load %struct.archive_read*, %struct.archive_read** %13, align 8
  %92 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %91, i32 0, i32 3
  %93 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %92, align 8
  store %struct.archive_read_filter_bidder* %93, %struct.archive_read_filter_bidder** %11, align 8
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %112, %90
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %11, align 8
  %100 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %11, align 8
  %105 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %108 = call i64 @strcmp(i32 %106, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103, %98
  br label %117

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %11, align 8
  %116 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %115, i32 1
  store %struct.archive_read_filter_bidder* %116, %struct.archive_read_filter_bidder** %11, align 8
  br label %94

117:                                              ; preds = %110, %94
  %118 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %11, align 8
  %119 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %11, align 8
  %124 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %127 = call i64 @strcmp(i32 %125, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %122, %117
  %130 = load %struct.archive_read*, %struct.archive_read** %13, align 8
  %131 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %130, i32 0, i32 2
  %132 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %133 = call i32 @archive_set_error(i32* %131, i32 %132, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %134 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %134, i32* %3, align 4
  br label %189

135:                                              ; preds = %122
  %136 = call i64 @calloc(i32 1, i32 24)
  %137 = inttoptr i64 %136 to %struct.archive_read_filter.0*
  store %struct.archive_read_filter.0* %137, %struct.archive_read_filter.0** %12, align 8
  %138 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %12, align 8
  %139 = icmp eq %struct.archive_read_filter.0* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.archive_read*, %struct.archive_read** %13, align 8
  %142 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %141, i32 0, i32 2
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = call i32 @archive_set_error(i32* %142, i32 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %145 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %145, i32* %3, align 4
  br label %189

146:                                              ; preds = %135
  %147 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %11, align 8
  %148 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %12, align 8
  %149 = getelementptr inbounds %struct.archive_read_filter.0, %struct.archive_read_filter.0* %148, i32 0, i32 2
  store %struct.archive_read_filter_bidder* %147, %struct.archive_read_filter_bidder** %149, align 8
  %150 = load %struct.archive_read*, %struct.archive_read** %13, align 8
  %151 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %12, align 8
  %152 = getelementptr inbounds %struct.archive_read_filter.0, %struct.archive_read_filter.0* %151, i32 0, i32 1
  store %struct.archive_read* %150, %struct.archive_read** %152, align 8
  %153 = load %struct.archive_read*, %struct.archive_read** %13, align 8
  %154 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %153, i32 0, i32 1
  %155 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %154, align 8
  %156 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %12, align 8
  %157 = getelementptr inbounds %struct.archive_read_filter.0, %struct.archive_read_filter.0* %156, i32 0, i32 0
  store %struct.archive_read_filter.0* %155, %struct.archive_read_filter.0** %157, align 8
  %158 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %12, align 8
  %159 = load %struct.archive_read*, %struct.archive_read** %13, align 8
  %160 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %159, i32 0, i32 1
  store %struct.archive_read_filter.0* %158, %struct.archive_read_filter.0** %160, align 8
  %161 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %11, align 8
  %162 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %161, i32 0, i32 0
  %163 = load i32 (%struct.archive_read_filter*)*, i32 (%struct.archive_read_filter*)** %162, align 8
  %164 = load %struct.archive_read*, %struct.archive_read** %13, align 8
  %165 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %164, i32 0, i32 1
  %166 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %165, align 8
  %167 = bitcast %struct.archive_read_filter.0* %166 to %struct.archive_read_filter*
  %168 = call i32 %163(%struct.archive_read_filter* %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @ARCHIVE_OK, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %146
  %173 = load %struct.archive_read*, %struct.archive_read** %13, align 8
  %174 = call i32 @__archive_read_free_filters(%struct.archive_read* %173)
  %175 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %175, i32* %3, align 4
  br label %189

176:                                              ; preds = %146
  br label %177

177:                                              ; preds = %176, %87
  %178 = load %struct.archive_read*, %struct.archive_read** %13, align 8
  %179 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* %6, align 4
  br label %187

185:                                              ; preds = %177
  %186 = load i32, i32* %7, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %187, %172, %140, %129, %81, %35
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @archive_read_support_filter_gzip(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_bzip2(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_compress(%struct.archive*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @archive_read_support_filter_lzma(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_xz(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_uu(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_rpm(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_lz4(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_zstd(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_lzip(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_lrzip(%struct.archive*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @__archive_read_free_filters(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
