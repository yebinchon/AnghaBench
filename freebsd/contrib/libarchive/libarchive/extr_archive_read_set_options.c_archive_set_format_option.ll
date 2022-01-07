; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_set_options.c_archive_set_format_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_set_options.c_archive_set_format_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { %struct.archive_format_descriptor*, %struct.archive_format_descriptor* }
%struct.archive_format_descriptor = type { i32 (%struct.archive_read*, i8*, i8*)*, i32* }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i8*, i8*)* @archive_set_format_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_set_format_option(%struct.archive* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.archive_read*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.archive_format_descriptor*, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.archive*, %struct.archive** %6, align 8
  %17 = bitcast %struct.archive* %16 to %struct.archive_read*
  store %struct.archive_read* %17, %struct.archive_read** %10, align 8
  %18 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %77, %4
  %20 = load i64, i64* %11, align 8
  %21 = icmp ult i64 %20, 0
  br i1 %21, label %22, label %80

22:                                               ; preds = %19
  %23 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 1
  %25 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %24, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %25, i64 %26
  store %struct.archive_format_descriptor* %27, %struct.archive_format_descriptor** %15, align 8
  %28 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %15, align 8
  %29 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %28, i32 0, i32 0
  %30 = load i32 (%struct.archive_read*, i8*, i8*)*, i32 (%struct.archive_read*, i8*, i8*)** %29, align 8
  %31 = icmp eq i32 (%struct.archive_read*, i8*, i8*)* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %22
  %33 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %15, align 8
  %34 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %22
  br label %77

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %15, align 8
  %43 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i32* %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %77

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %49, %38
  %53 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %15, align 8
  %54 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  %55 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %54, i32 0, i32 0
  store %struct.archive_format_descriptor* %53, %struct.archive_format_descriptor** %55, align 8
  %56 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %15, align 8
  %57 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %56, i32 0, i32 0
  %58 = load i32 (%struct.archive_read*, i8*, i8*)*, i32 (%struct.archive_read*, i8*, i8*)** %57, align 8
  %59 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 %58(%struct.archive_read* %59, i8* %60, i8* %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  %64 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %63, i32 0, i32 0
  store %struct.archive_format_descriptor* null, %struct.archive_format_descriptor** %64, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @ARCHIVE_FATAL, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %52
  %69 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %69, i32* %5, align 4
  br label %91

70:                                               ; preds = %52
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @ARCHIVE_OK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %48, %37
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %11, align 8
  br label %19

80:                                               ; preds = %19
  %81 = load i8*, i8** %7, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @ARCHIVE_WARN, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %91

89:                                               ; preds = %83, %80
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %86, %68
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
