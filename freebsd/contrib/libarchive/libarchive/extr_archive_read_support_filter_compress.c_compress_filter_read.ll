; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_compress.c_compress_filter_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_compress.c_compress_filter_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i64 }
%struct.private_data = type { i32, i32, i32*, i32*, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*, i8**)* @compress_filter_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_filter_read(%struct.archive_read_filter* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.private_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %12 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.private_data*
  store %struct.private_data* %14, %struct.private_data** %6, align 8
  %15 = load %struct.private_data*, %struct.private_data** %6, align 8
  %16 = getelementptr inbounds %struct.private_data, %struct.private_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  store i8* null, i8** %20, align 8
  store i32 0, i32* %3, align 4
  br label %88

21:                                               ; preds = %2
  %22 = load %struct.private_data*, %struct.private_data** %6, align 8
  %23 = getelementptr inbounds %struct.private_data, %struct.private_data* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %8, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.private_data*, %struct.private_data** %6, align 8
  %28 = getelementptr inbounds %struct.private_data, %struct.private_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %78, %21
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.private_data*, %struct.private_data** %6, align 8
  %38 = getelementptr inbounds %struct.private_data, %struct.private_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi i1 [ false, %32 ], [ %41, %36 ]
  br i1 %43, label %44, label %79

44:                                               ; preds = %42
  %45 = load %struct.private_data*, %struct.private_data** %6, align 8
  %46 = getelementptr inbounds %struct.private_data, %struct.private_data* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.private_data*, %struct.private_data** %6, align 8
  %49 = getelementptr inbounds %struct.private_data, %struct.private_data* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ugt i32* %47, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.private_data*, %struct.private_data** %6, align 8
  %54 = getelementptr inbounds %struct.private_data, %struct.private_data* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 -1
  store i32* %56, i32** %54, align 8
  %57 = load i32, i32* %56, align 4
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %7, align 8
  store i8 %58, i8* %59, align 1
  br label %78

61:                                               ; preds = %44
  %62 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %63 = call i32 @next_code(%struct.archive_read_filter* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.private_data*, %struct.private_data** %6, align 8
  %69 = getelementptr inbounds %struct.private_data, %struct.private_data* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %77

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @ARCHIVE_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %88

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %66
  br label %78

78:                                               ; preds = %77, %52
  br label %32

79:                                               ; preds = %42
  %80 = load i8*, i8** %8, align 8
  %81 = load i8**, i8*** %5, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %79, %74, %19
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @next_code(%struct.archive_read_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
