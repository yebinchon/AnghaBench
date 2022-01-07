; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_best_effort_strncat_from_utf16.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_best_effort_strncat_from_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i64, i8* }
%struct.archive_string_conv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_string*, i8*, i64, %struct.archive_string_conv*, i32)* @best_effort_strncat_from_utf16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @best_effort_strncat_from_utf16(%struct.archive_string* %0, i8* %1, i64 %2, %struct.archive_string_conv* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_string*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.archive_string_conv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
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
  store i32 0, i32* %16, align 4
  %19 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %20 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %21 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %22, %23
  %25 = add i64 %24, 1
  %26 = call i32* @archive_string_ensure(%struct.archive_string* %19, i64 %25)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %87

29:                                               ; preds = %5
  %30 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %31 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %34 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8* %36, i8** %13, align 8
  br label %37

37:                                               ; preds = %68, %29
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @utf16_to_unicode(i32* %14, i8* %38, i64 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %37
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %15, align 4
  %48 = mul nsw i32 %47, -1
  store i32 %48, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %9, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %12, align 8
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %58, 127
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %13, align 8
  store i8 63, i8* %61, align 1
  store i32 -1, i32* %16, align 4
  br label %68

63:                                               ; preds = %49
  %64 = load i32, i32* %14, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %13, align 8
  store i8 %65, i8* %66, align 1
  br label %68

68:                                               ; preds = %63, %60
  br label %37

69:                                               ; preds = %37
  %70 = load i8*, i8** %13, align 8
  %71 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %72 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %70 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %78 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %80 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.archive_string*, %struct.archive_string** %7, align 8
  %83 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  store i8 0, i8* %85, align 1
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %69, %28
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32* @archive_string_ensure(%struct.archive_string*, i64) #1

declare dso_local i32 @utf16_to_unicode(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
