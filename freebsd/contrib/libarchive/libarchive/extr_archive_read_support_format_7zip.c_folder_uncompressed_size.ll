; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_folder_uncompressed_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_folder_uncompressed_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._7z_folder = type { i64*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct._7z_folder*)* @folder_uncompressed_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @folder_uncompressed_size(%struct._7z_folder* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct._7z_folder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._7z_folder* %0, %struct._7z_folder** %3, align 8
  %7 = load %struct._7z_folder*, %struct._7z_folder** %3, align 8
  %8 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct._7z_folder*, %struct._7z_folder** %3, align 8
  %12 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %52, %1
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct._7z_folder*, %struct._7z_folder** %3, align 8
  %25 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %40

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %19

40:                                               ; preds = %35, %19
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct._7z_folder*, %struct._7z_folder** %3, align 8
  %46 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %2, align 8
  br label %54

52:                                               ; preds = %40
  br label %14

53:                                               ; preds = %14
  store i64 0, i64* %2, align 8
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i64, i64* %2, align 8
  ret i64 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
