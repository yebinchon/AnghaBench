; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_uu.c_bid_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_uu.c_bid_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i32 }

@UUENCODE_BID_MAX_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_read_filter*, i8**, i64*, i64*, i64*, i64*)* @bid_get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bid_get_line(%struct.archive_read_filter* %0, i8** %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.archive_read_filter*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %15, align 4
  %19 = load i64*, i64** %10, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i64*, i64** %12, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %14, align 8
  br label %31

24:                                               ; preds = %6
  %25 = load i8**, i8*** %9, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i64*, i64** %10, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %12, align 8
  %30 = call i64 @get_line(i8* %26, i64 %28, i64* %29)
  store i64 %30, i64* %14, align 8
  br label %31

31:                                               ; preds = %24, %22
  br label %32

32:                                               ; preds = %124, %31
  %33 = load i64*, i64** %12, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i64, i64* %14, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load i64*, i64** %13, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UUENCODE_BID_MAX_READ, align 8
  %48 = icmp ult i64 %46, %47
  br label %49

49:                                               ; preds = %44, %41, %36, %32
  %50 = phi i1 [ false, %41 ], [ false, %36 ], [ false, %32 ], [ %48, %44 ]
  br i1 %50, label %51, label %125

51:                                               ; preds = %49
  %52 = load i64*, i64** %11, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %53, %55
  store i64 %56, i64* %16, align 8
  %57 = load i64*, i64** %11, align 8
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1023
  %60 = and i64 %59, 4294966272
  store i64 %60, i64* %17, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 160
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %51
  %67 = load i64, i64* %17, align 8
  %68 = shl i64 %67, 1
  store i64 %68, i64* %17, align 8
  br label %69

69:                                               ; preds = %66, %51
  %70 = load %struct.archive_read_filter*, %struct.archive_read_filter** %8, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64*, i64** %10, align 8
  %73 = call i8* @__archive_read_filter_ahead(%struct.archive_read_filter* %70, i64 %71, i64* %72)
  %74 = load i8**, i8*** %9, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i8**, i8*** %9, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %92

78:                                               ; preds = %69
  %79 = load i64*, i64** %11, align 8
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %10, align 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i64 0, i64* %7, align 8
  br label %127

85:                                               ; preds = %78
  %86 = load %struct.archive_read_filter*, %struct.archive_read_filter** %8, align 8
  %87 = load i64*, i64** %10, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = call i8* @__archive_read_filter_ahead(%struct.archive_read_filter* %86, i64 %88, i64* %89)
  %91 = load i8**, i8*** %9, align 8
  store i8* %90, i8** %91, align 8
  store i32 1, i32* %15, align 4
  br label %92

92:                                               ; preds = %85, %69
  %93 = load i64*, i64** %10, align 8
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %13, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i64*, i64** %10, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %11, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load i8**, i8*** %9, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 %99
  store i8* %102, i8** %100, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load i64*, i64** %10, align 8
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %105, %103
  store i64 %106, i64* %104, align 8
  %107 = load i64, i64* %14, align 8
  store i64 %107, i64* %18, align 8
  %108 = load i8**, i8*** %9, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i64, i64* %18, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i64*, i64** %10, align 8
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %18, align 8
  %115 = sub nsw i64 %113, %114
  %116 = load i64*, i64** %12, align 8
  %117 = call i64 @get_line(i8* %111, i64 %115, i64* %116)
  store i64 %117, i64* %14, align 8
  %118 = load i64, i64* %14, align 8
  %119 = icmp sge i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %92
  %121 = load i64, i64* %18, align 8
  %122 = load i64, i64* %14, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %14, align 8
  br label %124

124:                                              ; preds = %120, %92
  br label %32

125:                                              ; preds = %49
  %126 = load i64, i64* %14, align 8
  store i64 %126, i64* %7, align 8
  br label %127

127:                                              ; preds = %125, %84
  %128 = load i64, i64* %7, align 8
  ret i64 %128
}

declare dso_local i64 @get_line(i8*, i64, i64*) #1

declare dso_local i8* @__archive_read_filter_ahead(%struct.archive_read_filter*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
