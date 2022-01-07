; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_find_odc_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_find_odc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@odc_header_size = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"070707\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"070727\00", align 1
@ARCHIVE_FORMAT_CPIO_AFIO_LARGE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Skipped %d bytes before finding valid header\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @find_odc_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_odc_header(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %129, %1
  %11 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %12 = load i32, i32* @odc_header_size, align 4
  %13 = call i8* @__archive_read_ahead(%struct.archive_read* %11, i32 %12, i32* %9)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %17, i32* %2, align 4
  br label %141

18:                                               ; preds = %10
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @memcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %24, i32 6)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @odc_header_size, align 4
  %30 = call i64 @is_octal(i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %33, i32* %2, align 4
  br label %141

34:                                               ; preds = %27, %18
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @memcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 6)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @is_afio_large(i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8*, i8** @ARCHIVE_FORMAT_CPIO_AFIO_LARGE, align 8
  %45 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %46 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %48, i32* %2, align 4
  br label %141

49:                                               ; preds = %38, %34
  br label %50

50:                                               ; preds = %128, %49
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @odc_header_size, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ule i8* %54, %55
  br i1 %56, label %57, label %129

57:                                               ; preds = %50
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 5
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  switch i32 %61, label %125 [
    i32 55, label %62
    i32 48, label %122
  ]

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @memcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %63, i32 6)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* @odc_header_size, align 4
  %69 = call i64 @is_octal(i8* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %66, %62
  %72 = load i8*, i8** %5, align 8
  %73 = call i64 @memcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %72, i32 6)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %119

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = call i64 @is_afio_large(i8* %76, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %119

85:                                               ; preds = %75, %66
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  store i64 %90, i64* %7, align 8
  %91 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @__archive_read_consume(%struct.archive_read* %91, i64 %92)
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %8, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 4
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 50
  br i1 %101, label %102, label %107

102:                                              ; preds = %85
  %103 = load i8*, i8** @ARCHIVE_FORMAT_CPIO_AFIO_LARGE, align 8
  %104 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %105 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  br label %107

107:                                              ; preds = %102, %85
  %108 = load i64, i64* %8, align 8
  %109 = icmp ugt i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %112 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %111, i32 0, i32 0
  %113 = load i64, i64* %8, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @archive_set_error(%struct.TYPE_2__* %112, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %116, i32* %2, align 4
  br label %141

117:                                              ; preds = %107
  %118 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %118, i32* %2, align 4
  br label %141

119:                                              ; preds = %75, %71
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  store i8* %121, i8** %5, align 8
  br label %128

122:                                              ; preds = %57
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %5, align 8
  br label %128

125:                                              ; preds = %57
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 6
  store i8* %127, i8** %5, align 8
  br label %128

128:                                              ; preds = %125, %122, %119
  br label %50

129:                                              ; preds = %50
  %130 = load i8*, i8** %5, align 8
  %131 = load i8*, i8** %4, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  store i64 %134, i64* %7, align 8
  %135 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @__archive_read_consume(%struct.archive_read* %135, i64 %136)
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %8, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %8, align 8
  br label %10

141:                                              ; preds = %117, %110, %43, %32, %16
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @is_octal(i8*, i32) #1

declare dso_local i64 @is_afio_large(i8*, i32) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
