; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_archive_read_format_lha_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_archive_read_format_lha_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@H_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32)* @archive_read_format_lha_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_lha_bid(%struct.archive_read* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 30
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %92

15:                                               ; preds = %2
  %16 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %17 = load i32, i32* @H_SIZE, align 4
  %18 = call i8* @__archive_read_ahead(%struct.archive_read* %16, i32 %17, i32* null)
  store i8* %18, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %92

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @lha_check_header_format(i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 30, i32* %3, align 4
  br label %92

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 77
  br i1 %31, label %32, label %91

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 90
  br i1 %37, label %38, label %91

38:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  store i32 4096, i32* %10, align 4
  br label %39

39:                                               ; preds = %83, %58, %38
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 20480
  br i1 %41, label %42, label %90

42:                                               ; preds = %39
  %43 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i8* @__archive_read_ahead(%struct.archive_read* %43, i32 %46, i32* %8)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @H_SIZE, align 4
  %55 = add nsw i32 %54, 3
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %92

58:                                               ; preds = %50
  br label %39

59:                                               ; preds = %42
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %6, align 8
  br label %64

64:                                               ; preds = %79, %59
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @H_SIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = icmp ult i8* %68, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %64
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @lha_check_header_format(i8* %75)
  store i64 %76, i64* %11, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 30, i32* %3, align 4
  br label %92

79:                                               ; preds = %74
  %80 = load i64, i64* %11, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %82, i8** %6, align 8
  br label %64

83:                                               ; preds = %64
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %9, align 4
  br label %39

90:                                               ; preds = %39
  br label %91

91:                                               ; preds = %90, %32, %26
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %78, %57, %25, %20, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i64 @lha_check_header_format(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
