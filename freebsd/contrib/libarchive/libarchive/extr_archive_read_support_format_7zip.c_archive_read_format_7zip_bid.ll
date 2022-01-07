; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_archive_read_format_7zip_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_archive_read_format_7zip_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@_7ZIP_SIGNATURE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@SFX_MIN_ADDR = common dso_local global i32 0, align 4
@SFX_MAX_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32)* @archive_read_format_7zip_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_7zip_bid(%struct.archive_read* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 32
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %98

15:                                               ; preds = %2
  %16 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %17 = call i8* @__archive_read_ahead(%struct.archive_read* %16, i32 6, i32* null)
  store i8* %17, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %98

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** @_7ZIP_SIGNATURE, align 8
  %23 = call i64 @memcmp(i8* %21, i8* %22, i32 6)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 48, i32* %3, align 4
  br label %98

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 77
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 90
  br i1 %37, label %42, label %38

38:                                               ; preds = %32, %26
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @memcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %97

42:                                               ; preds = %38, %32
  %43 = load i32, i32* @SFX_MIN_ADDR, align 4
  store i32 %43, i32* %7, align 4
  store i32 4096, i32* %8, align 4
  br label %44

44:                                               ; preds = %89, %64, %42
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @SFX_MAX_ADDR, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %44
  %51 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i8* @__archive_read_ahead(%struct.archive_read* %51, i32 %54, i32* %9)
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 64
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %98

64:                                               ; preds = %58
  br label %44

65:                                               ; preds = %50
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %6, align 8
  br label %70

70:                                               ; preds = %84, %65
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 32
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = icmp ult i8* %72, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @check_7zip_header_in_sfx(i8* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 48, i32* %3, align 4
  br label %98

84:                                               ; preds = %78
  %85 = load i32, i32* %11, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %6, align 8
  br label %70

89:                                               ; preds = %70
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  br label %44

96:                                               ; preds = %44
  br label %97

97:                                               ; preds = %96, %38
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %83, %63, %25, %19, %14
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @check_7zip_header_in_sfx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
