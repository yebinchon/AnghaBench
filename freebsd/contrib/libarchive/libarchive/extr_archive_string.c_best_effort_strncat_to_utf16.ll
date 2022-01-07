; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_best_effort_strncat_to_utf16.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_best_effort_strncat_to_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i64, i8* }
%struct.archive_string_conv = type { i32 }

@UNICODE_R_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_string*, i8*, i64, %struct.archive_string_conv*, i32)* @best_effort_strncat_to_utf16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @best_effort_strncat_to_utf16(%struct.archive_string* %0, i8* %1, i64 %2, %struct.archive_string_conv* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_string*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.archive_string_conv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.archive_string* %0, %struct.archive_string** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %12, align 8
  %18 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  store i32 0, i32* %15, align 4
  %19 = load i64, i64* %9, align 8
  store i64 %19, i64* %14, align 8
  %20 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %21 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %22 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, 1
  %26 = mul i64 %25, 2
  %27 = add i64 %23, %26
  %28 = call i32* @archive_string_ensure(%struct.archive_string* %20, i64 %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %92

31:                                               ; preds = %5
  %32 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %33 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %36 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8* %38, i8** %13, align 8
  br label %39

39:                                               ; preds = %63, %31
  %40 = load i64, i64* %14, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %14, align 8
  %42 = icmp ne i64 %40, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %12, align 8
  %46 = load i8, i8* %44, align 1
  %47 = sext i8 %46 to i32
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ugt i32 %48, 127
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @UNICODE_R_CHAR, align 4
  store i32 %51, i32* %16, align 4
  store i32 -1, i32* %15, align 4
  br label %52

52:                                               ; preds = %50, %43
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @archive_be16enc(i8* %56, i32 %57)
  br label %63

59:                                               ; preds = %52
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @archive_le16enc(i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %13, align 8
  br label %39

66:                                               ; preds = %39
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %69 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %67 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %75 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %77 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %80 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %84 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %87 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %66, %30
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32* @archive_string_ensure(%struct.archive_string*, i64) #1

declare dso_local i32 @archive_be16enc(i8*, i32) #1

declare dso_local i32 @archive_le16enc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
