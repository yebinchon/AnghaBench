; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_g_metadata_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_g_metadata_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.std_metadata = type { i32 }

@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_metadata_clear(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.std_metadata, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @g_open(i8* %12, i32 1)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @errno, align 4
  store i32 %17, i32* %3, align 4
  br label %89

18:                                               ; preds = %2
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @g_mediasize(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %10, align 4
  br label %83

25:                                               ; preds = %18
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @g_sectorsize(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %10, align 4
  br label %83

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = call i8* @malloc(i64 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %10, align 4
  br label %83

39:                                               ; preds = %32
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub nsw i64 %46, %47
  %49 = call i64 @pread(i32 %43, i8* %44, i64 %45, i64 %48)
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %10, align 4
  br label %83

54:                                               ; preds = %42
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @std_metadata_decode(i8* %55, %struct.std_metadata* %6)
  %57 = getelementptr inbounds %struct.std_metadata, %struct.std_metadata* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @strcmp(i32 %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %10, align 4
  br label %83

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @bzero(i8* %66, i64 %67)
  %69 = load i32, i32* %11, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub nsw i64 %72, %73
  %75 = call i64 @pwrite(i32 %69, i8* %70, i64 %71, i64 %74)
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* @errno, align 4
  store i32 %79, i32* %10, align 4
  br label %83

80:                                               ; preds = %65
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @g_flush(i32 %81)
  br label %83

83:                                               ; preds = %80, %78, %62, %52, %37, %30, %23
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @g_close(i32 %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @g_open(i8*, i32) #1

declare dso_local i64 @g_mediasize(i32) #1

declare dso_local i64 @g_sectorsize(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @pread(i32, i8*, i64, i64) #1

declare dso_local i32 @std_metadata_decode(i8*, %struct.std_metadata*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i64 @pwrite(i32, i8*, i64, i64) #1

declare dso_local i32 @g_flush(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @g_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
