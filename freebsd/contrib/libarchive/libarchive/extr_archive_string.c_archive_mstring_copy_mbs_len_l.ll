; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_mstring_copy_mbs_len_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_mstring_copy_mbs_len_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_mstring = type { i8*, %struct.TYPE_4__, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.archive_string_conv = type { i64, i64, i32, i32 }

@AES_SET_MBS = common dso_local global i8* null, align 8
@AES_SET_UTF8 = common dso_local global i8* null, align 8
@AES_SET_WCS = common dso_local global i8* null, align 8
@CP_UTF8 = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16 = common dso_local global i32 0, align 4
@SCONV_NORMALIZATION_C = common dso_local global i32 0, align 4
@SCONV_TO_UTF16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_mstring_copy_mbs_len_l(%struct.archive_mstring* %0, i8* %1, i64 %2, %struct.archive_string_conv* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_mstring*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.archive_string_conv*, align 8
  %10 = alloca i32, align 4
  store %struct.archive_mstring* %0, %struct.archive_mstring** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %15 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %14, i32 0, i32 0
  store i8* null, i8** %15, align 8
  store i32 0, i32* %5, align 4
  br label %43

16:                                               ; preds = %4
  %17 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %18 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %17, i32 0, i32 1
  %19 = call i32 @archive_string_empty(%struct.TYPE_4__* %18)
  %20 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %21 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %20, i32 0, i32 2
  %22 = call i32 @archive_wstring_empty(i32* %21)
  %23 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %24 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %23, i32 0, i32 3
  %25 = call i32 @archive_string_empty(%struct.TYPE_4__* %24)
  %26 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %27 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %26, i32 0, i32 1
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %31 = call i32 @archive_strncpy_l(%struct.TYPE_4__* %27, i8* %28, i64 %29, %struct.archive_string_conv* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %16
  %35 = load i8*, i8** @AES_SET_MBS, align 8
  %36 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %37 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %41

38:                                               ; preds = %16
  %39 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %40 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %39, i32 0, i32 0
  store i8* null, i8** %40, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %13
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @archive_string_empty(%struct.TYPE_4__*) #1

declare dso_local i32 @archive_wstring_empty(i32*) #1

declare dso_local i32 @archive_strncpy_l(%struct.TYPE_4__*, i8*, i64, %struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
