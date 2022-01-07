; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_bzip2.c_bzip2_reader_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_bzip2.c_bzip2_reader_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter_bidder = type { i32 }
%struct.archive_read_filter = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"BZh\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1AY&SY\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\17rE8P\90\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter*)* @bzip2_reader_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bzip2_reader_bid(%struct.archive_read_filter_bidder* %0, %struct.archive_read_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter_bidder*, align 8
  %5 = alloca %struct.archive_read_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.archive_read_filter_bidder* %0, %struct.archive_read_filter_bidder** %4, align 8
  store %struct.archive_read_filter* %1, %struct.archive_read_filter** %5, align 8
  %9 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %4, align 8
  %10 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %11 = call i8* @__archive_read_filter_ahead(%struct.archive_read_filter* %10, i32 14, i32* %7)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @memcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %57

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 24
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp slt i32 %26, 49
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sgt i32 %32, 57
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %20
  store i32 0, i32* %3, align 4
  br label %57

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 5
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = call i64 @memcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 48
  store i32 %44, i32* %8, align 4
  br label %55

45:                                               ; preds = %35
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = call i64 @memcmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 48
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %57

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %53, %34, %19, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i8* @__archive_read_filter_ahead(%struct.archive_read_filter*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
