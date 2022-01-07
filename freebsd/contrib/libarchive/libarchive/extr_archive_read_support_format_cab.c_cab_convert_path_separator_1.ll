; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_convert_path_separator_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_convert_path_separator_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i8* }

@ATTR_NAME_IS_UTF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_string*, i8)* @cab_convert_path_separator_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cab_convert_path_separator_1(%struct.archive_string* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_string*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.archive_string* %0, %struct.archive_string** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 0, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %53, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %11 = call i64 @archive_strlen(%struct.archive_string* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %8
  %14 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %15 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 92
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %56

26:                                               ; preds = %22
  %27 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %28 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 47, i8* %31, align 1
  store i32 0, i32* %7, align 4
  br label %52

32:                                               ; preds = %13
  %33 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %34 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @ATTR_NAME_IS_UTF, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  br label %51

50:                                               ; preds = %42, %32
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %8

56:                                               ; preds = %25, %8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %59 = call i64 @archive_strlen(%struct.archive_string* %58)
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @archive_strlen(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
