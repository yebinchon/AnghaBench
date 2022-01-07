; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_mstring_get_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_mstring_get_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_mstring = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.archive_string_conv = type { i32 }

@AES_SET_UTF8 = common dso_local global i32 0, align 4
@AES_SET_MBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_mstring_get_utf8(%struct.archive* %0, %struct.archive_mstring* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive_mstring*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.archive_string_conv*, align 8
  %9 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store %struct.archive_mstring* %1, %struct.archive_mstring** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %11 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AES_SET_UTF8, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %18 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8**, i8*** %7, align 8
  store i8* %20, i8** %21, align 8
  store i32 0, i32* %4, align 4
  br label %70

22:                                               ; preds = %3
  %23 = load i8**, i8*** %7, align 8
  store i8* null, i8** %23, align 8
  %24 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %25 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AES_SET_MBS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %22
  %31 = load %struct.archive*, %struct.archive** %5, align 8
  %32 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  store %struct.archive_string_conv* %32, %struct.archive_string_conv** %8, align 8
  %33 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %34 = icmp eq %struct.archive_string_conv* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %70

36:                                               ; preds = %30
  %37 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %38 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %37, i32 0, i32 1
  %39 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %40 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %44 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %48 = call i32 @archive_strncpy_l(%struct.TYPE_4__* %38, i32 %42, i32 %46, %struct.archive_string_conv* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.archive*, %struct.archive** %5, align 8
  %50 = icmp eq %struct.archive* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %53 = call i32 @free_sconv_object(%struct.archive_string_conv* %52)
  br label %54

54:                                               ; preds = %51, %36
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32, i32* @AES_SET_UTF8, align 4
  %59 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %60 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %64 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %7, align 8
  store i8* %66, i8** %67, align 8
  store i32 0, i32* %4, align 4
  br label %70

68:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %70

69:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %68, %57, %35, %16
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_strncpy_l(%struct.TYPE_4__*, i32, i32, %struct.archive_string_conv*) #1

declare dso_local i32 @free_sconv_object(%struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
