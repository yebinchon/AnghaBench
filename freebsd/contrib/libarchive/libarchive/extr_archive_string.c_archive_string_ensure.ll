; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_ensure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_ensure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i8*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_string* @archive_string_ensure(%struct.archive_string* %0, i64 %1) #0 {
  %3 = alloca %struct.archive_string*, align 8
  %4 = alloca %struct.archive_string*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.archive_string* %0, %struct.archive_string** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %9 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %15 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ule i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  store %struct.archive_string* %19, %struct.archive_string** %3, align 8
  br label %86

20:                                               ; preds = %12, %2
  %21 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %22 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %23, 32
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i64 32, i64* %7, align 8
  br label %59

26:                                               ; preds = %20
  %27 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %28 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %29, 8192
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %33 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %36 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  store i64 %38, i64* %7, align 8
  br label %58

39:                                               ; preds = %26
  %40 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %41 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %44 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = udiv i64 %45, 4
  %47 = add i64 %42, %46
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %50 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %55 = call i32 @archive_string_free(%struct.archive_string* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* @errno, align 4
  store %struct.archive_string* null, %struct.archive_string** %3, align 8
  br label %86

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %31
  br label %59

59:                                               ; preds = %58, %25
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %67 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @realloc(i8* %68, i64 %69)
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %76 = call i32 @archive_string_free(%struct.archive_string* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* @errno, align 4
  store %struct.archive_string* null, %struct.archive_string** %3, align 8
  br label %86

78:                                               ; preds = %65
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %81 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %84 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  store %struct.archive_string* %85, %struct.archive_string** %3, align 8
  br label %86

86:                                               ; preds = %78, %74, %53, %18
  %87 = load %struct.archive_string*, %struct.archive_string** %3, align 8
  ret %struct.archive_string* %87
}

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i64 @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
