; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_zstd.c_zstd_bidder_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_zstd.c_zstd_bidder_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter_bidder = type { i32 }
%struct.archive_read_filter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter*)* @zstd_bidder_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zstd_bidder_bid(%struct.archive_read_filter_bidder* %0, %struct.archive_read_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter_bidder*, align 8
  %5 = alloca %struct.archive_read_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive_read_filter_bidder* %0, %struct.archive_read_filter_bidder** %4, align 8
  store %struct.archive_read_filter* %1, %struct.archive_read_filter** %5, align 8
  store i32 -47205080, i32* %9, align 4
  %10 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %4, align 8
  %11 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %12 = call i8* @__archive_read_filter_ahead(%struct.archive_read_filter* %11, i32 4, i32* %7)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @archive_le32dec(i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, -47205080
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 32, i32* %3, align 4
  br label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %21, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i8* @__archive_read_filter_ahead(%struct.archive_read_filter*, i32, i32*) #1

declare dso_local i32 @archive_le32dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
