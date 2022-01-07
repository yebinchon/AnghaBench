; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_seekable_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_seekable_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.zip = type { i32 }

@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PK\05\06\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PK\06\07\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32)* @archive_read_format_zip_seekable_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_zip_seekable_bid(%struct.archive_read* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %15 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.zip*
  store %struct.zip* %19, %struct.zip** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 32
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %124

23:                                               ; preds = %2
  %24 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %25 = load i32, i32* @SEEK_END, align 4
  %26 = call i64 @__archive_read_seek(%struct.archive_read* %24, i32 0, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %124

30:                                               ; preds = %23
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @zipmin(i32 16384, i64 %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 0, %35
  %37 = load i32, i32* @SEEK_END, align 4
  %38 = call i64 @__archive_read_seek(%struct.archive_read* %34, i32 %36, i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %124

42:                                               ; preds = %30
  %43 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = call i8* @__archive_read_ahead(%struct.archive_read* %43, i64 %45, i32* null)
  store i8* %46, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %124

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 22
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %122, %49
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %123

55:                                               ; preds = %52
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  switch i32 %61, label %119 [
    i32 80, label %62
    i32 75, label %110
    i32 5, label %113
    i32 6, label %116
  ]

62:                                               ; preds = %55
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = call i32 @memcmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %107

69:                                               ; preds = %62
  %70 = load %struct.zip*, %struct.zip** %6, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = call i32 @read_eocd(%struct.zip* %70, i8* %74, i64 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp sge i32 %80, 20
  br i1 %81, label %82, label %105

82:                                               ; preds = %69
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = getelementptr inbounds i8, i8* %86, i64 -20
  %88 = call i32 @memcmp(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %82
  %91 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %92 = load %struct.zip*, %struct.zip** %6, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = getelementptr inbounds i8, i8* %96, i64 -20
  %98 = call i32 @read_zip64_eocd(%struct.archive_read* %91, %struct.zip* %92, i8* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %102, %90
  br label %105

105:                                              ; preds = %104, %82, %69
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %3, align 4
  br label %124

107:                                              ; preds = %62
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %108, 4
  store i32 %109, i32* %10, align 4
  br label %122

110:                                              ; preds = %55
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %122

113:                                              ; preds = %55
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %114, 2
  store i32 %115, i32* %10, align 4
  br label %122

116:                                              ; preds = %55
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %117, 3
  store i32 %118, i32* %10, align 4
  br label %122

119:                                              ; preds = %55
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 %120, 4
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %119, %116, %113, %110, %107
  br label %52

123:                                              ; preds = %52
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %105, %48, %41, %29, %22
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @__archive_read_seek(%struct.archive_read*, i32, i32) #1

declare dso_local i64 @zipmin(i32, i64) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @read_eocd(%struct.zip*, i8*, i64) #1

declare dso_local i32 @read_zip64_eocd(%struct.archive_read*, %struct.zip*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
