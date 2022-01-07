; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_build_pathname_utf16be.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_build_pathname_utf16be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i64, i32, %struct.file_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, %struct.file_info*)* @build_pathname_utf16be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_pathname_utf16be(i8* %0, i64 %1, i64* %2, %struct.file_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.file_info*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.file_info* %3, %struct.file_info** %9, align 8
  %10 = load %struct.file_info*, %struct.file_info** %9, align 8
  %11 = getelementptr inbounds %struct.file_info, %struct.file_info* %10, i32 0, i32 2
  %12 = load %struct.file_info*, %struct.file_info** %11, align 8
  %13 = icmp ne %struct.file_info* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %4
  %15 = load %struct.file_info*, %struct.file_info** %9, align 8
  %16 = getelementptr inbounds %struct.file_info, %struct.file_info* %15, i32 0, i32 2
  %17 = load %struct.file_info*, %struct.file_info** %16, align 8
  %18 = getelementptr inbounds %struct.file_info, %struct.file_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load %struct.file_info*, %struct.file_info** %9, align 8
  %26 = getelementptr inbounds %struct.file_info, %struct.file_info* %25, i32 0, i32 2
  %27 = load %struct.file_info*, %struct.file_info** %26, align 8
  %28 = call i32 @build_pathname_utf16be(i8* %22, i64 %23, i64* %24, %struct.file_info* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %98

31:                                               ; preds = %21
  %32 = load i8*, i8** %6, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %6, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 47, i8* %40, align 1
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 2
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %31, %14, %4
  %45 = load %struct.file_info*, %struct.file_info** %9, align 8
  %46 = getelementptr inbounds %struct.file_info, %struct.file_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 2
  %53 = load i64, i64* %7, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %98

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %6, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 46, i8* %65, align 1
  %66 = load i64*, i64** %8, align 8
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 2
  store i64 %68, i64* %66, align 8
  br label %97

69:                                               ; preds = %44
  %70 = load i64*, i64** %8, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.file_info*, %struct.file_info** %9, align 8
  %73 = getelementptr inbounds %struct.file_info, %struct.file_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %71, %74
  %76 = load i64, i64* %7, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 -1, i32* %5, align 4
  br label %98

79:                                               ; preds = %69
  %80 = load i8*, i8** %6, align 8
  %81 = load i64*, i64** %8, align 8
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load %struct.file_info*, %struct.file_info** %9, align 8
  %85 = getelementptr inbounds %struct.file_info, %struct.file_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.file_info*, %struct.file_info** %9, align 8
  %88 = getelementptr inbounds %struct.file_info, %struct.file_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @memcpy(i8* %83, i32 %86, i64 %89)
  %91 = load %struct.file_info*, %struct.file_info** %9, align 8
  %92 = getelementptr inbounds %struct.file_info, %struct.file_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %8, align 8
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %93
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %79, %56
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %78, %55, %30
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
