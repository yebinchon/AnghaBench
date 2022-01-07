; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_isodate7.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_isodate7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i8, i8, i8, i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @isodate7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isodate7(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tm, align 1
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 @memset(%struct.tm* %4, i32 0, i32 6)
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  store i8 %10, i8* %11, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 %15, 1
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  store i8 %17, i8* %18, align 1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  store i8 %21, i8* %22, align 1
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  %25 = load i8, i8* %24, align 1
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  store i8 %29, i8* %30, align 1
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 5
  %33 = load i8, i8* %32, align 1
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  store i8 %33, i8* %34, align 1
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 6
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, -48
  br i1 %40, label %41, label %60

41:                                               ; preds = %1
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 52
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 4
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 %49, %46
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  %52 = load i32, i32* %5, align 4
  %53 = srem i32 %52, 4
  %54 = mul nsw i32 %53, 15
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 %57, %54
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  br label %60

60:                                               ; preds = %44, %41, %1
  %61 = call i64 @time_from_tm(%struct.tm* %4)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp eq i64 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i64 0, i64* %2, align 8
  br label %67

65:                                               ; preds = %60
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %2, align 8
  br label %67

67:                                               ; preds = %65, %64
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @time_from_tm(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
