; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_archive_read_format_cpio_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_archive_read_format_cpio_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cpio = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"070707\00", align 1
@header_odc = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"070727\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"070701\00", align 1
@header_newc = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"070702\00", align 1
@header_bin_be = common dso_local global i8* null, align 8
@header_bin_le = common dso_local global i8* null, align 8
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32)* @archive_read_format_cpio_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_cpio_bid(%struct.archive_read* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cpio*, align 8
  %8 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cpio*
  store %struct.cpio* %15, %struct.cpio** %7, align 8
  %16 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %17 = call i8* @__archive_read_ahead(%struct.archive_read* %16, i32 6, i32* null)
  store i8* %17, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %105

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @memcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i8*, i8** @header_odc, align 8
  %26 = load %struct.cpio*, %struct.cpio** %7, align 8
  %27 = getelementptr inbounds %struct.cpio, %struct.cpio* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 48
  store i32 %29, i32* %8, align 4
  br label %103

30:                                               ; preds = %20
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @memcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i8*, i8** @header_odc, align 8
  %36 = load %struct.cpio*, %struct.cpio** %7, align 8
  %37 = getelementptr inbounds %struct.cpio, %struct.cpio* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 48
  store i32 %39, i32* %8, align 4
  br label %102

40:                                               ; preds = %30
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @memcmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i8*, i8** @header_newc, align 8
  %46 = load %struct.cpio*, %struct.cpio** %7, align 8
  %47 = getelementptr inbounds %struct.cpio, %struct.cpio* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 48
  store i32 %49, i32* %8, align 4
  br label %101

50:                                               ; preds = %40
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @memcmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i8*, i8** @header_newc, align 8
  %56 = load %struct.cpio*, %struct.cpio** %7, align 8
  %57 = getelementptr inbounds %struct.cpio, %struct.cpio* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 48
  store i32 %59, i32* %8, align 4
  br label %100

60:                                               ; preds = %50
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = mul nsw i32 %64, 256
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %65, %69
  %71 = icmp eq i32 %70, 29127
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load i8*, i8** @header_bin_be, align 8
  %74 = load %struct.cpio*, %struct.cpio** %7, align 8
  %75 = getelementptr inbounds %struct.cpio, %struct.cpio* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 16
  store i32 %77, i32* %8, align 4
  br label %99

78:                                               ; preds = %60
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = mul nsw i32 %86, 256
  %88 = add nsw i32 %82, %87
  %89 = icmp eq i32 %88, 29127
  br i1 %89, label %90, label %96

90:                                               ; preds = %78
  %91 = load i8*, i8** @header_bin_le, align 8
  %92 = load %struct.cpio*, %struct.cpio** %7, align 8
  %93 = getelementptr inbounds %struct.cpio, %struct.cpio* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 16
  store i32 %95, i32* %8, align 4
  br label %98

96:                                               ; preds = %78
  %97 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %97, i32* %3, align 4
  br label %105

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %72
  br label %100

100:                                              ; preds = %99, %54
  br label %101

101:                                              ; preds = %100, %44
  br label %102

102:                                              ; preds = %101, %34
  br label %103

103:                                              ; preds = %102, %24
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %96, %19
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
