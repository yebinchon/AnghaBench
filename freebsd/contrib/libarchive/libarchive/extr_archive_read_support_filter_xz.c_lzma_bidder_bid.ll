; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_xz.c_lzma_bidder_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_xz.c_lzma_bidder_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter_bidder = type { i32 }
%struct.archive_read_filter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter*)* @lzma_bidder_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzma_bidder_bid(%struct.archive_read_filter_bidder* %0, %struct.archive_read_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter_bidder*, align 8
  %5 = alloca %struct.archive_read_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.archive_read_filter_bidder* %0, %struct.archive_read_filter_bidder** %4, align 8
  store %struct.archive_read_filter* %1, %struct.archive_read_filter** %5, align 8
  %11 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %4, align 8
  %12 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %13 = call i8* @__archive_read_filter_ahead(%struct.archive_read_filter* %12, i32 14, i32* %7)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp sgt i32 %21, 224
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %76

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 93
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 94
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 8
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 5
  %42 = call i64 @archive_le64dec(i8* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @ARCHIVE_LITERAL_LL(i32 -1)
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 64
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = call i32 @archive_le32dec(i8* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %57 [
    i32 4096, label %54
    i32 8192, label %54
    i32 16384, label %54
    i32 32768, label %54
    i32 65536, label %54
    i32 131072, label %54
    i32 262144, label %54
    i32 524288, label %54
    i32 1048576, label %54
    i32 2097152, label %54
    i32 4194304, label %54
    i32 8388608, label %54
    i32 16777216, label %54
    i32 33554432, label %54
    i32 67108864, label %54
    i32 134217728, label %54
  ]

54:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 32
  store i32 %56, i32* %10, align 4
  br label %74

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = icmp sle i32 %58, 66060288
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %61, 3145728
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 1048575
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 72
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 32
  store i32 %72, i32* %10, align 4
  br label %74

73:                                               ; preds = %67, %63, %60, %57
  store i32 0, i32* %3, align 4
  br label %76

74:                                               ; preds = %70, %54
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %73, %23, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i8* @__archive_read_filter_ahead(%struct.archive_read_filter*, i32, i32*) #1

declare dso_local i64 @archive_le64dec(i8*) #1

declare dso_local i64 @ARCHIVE_LITERAL_LL(i32) #1

declare dso_local i32 @archive_le32dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
