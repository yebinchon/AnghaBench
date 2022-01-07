; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_bsd_iconv.c___bsd___iconv_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_bsd_iconv.c___bsd___iconv_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"//IGNORE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct._citrus_iconv*)* @__bsd___iconv_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bsd___iconv_open(i8* %0, i8* %1, %struct._citrus_iconv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._citrus_iconv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct._citrus_iconv* %2, %struct._citrus_iconv** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @strndup(i8* %16, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %69

28:                                               ; preds = %15
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @_citrus_iconv_open(%struct._citrus_iconv** %7, i8* %29, i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @free(i8* %32)
  br label %38

34:                                               ; preds = %3
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @_citrus_iconv_open(%struct._citrus_iconv** %7, i8* %35, i8* %36)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ENOENT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %69

51:                                               ; preds = %38
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strcasestr(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct._citrus_iconv*, %struct._citrus_iconv** %7, align 8
  %55 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 8
  %58 = load %struct._citrus_iconv*, %struct._citrus_iconv** %7, align 8
  %59 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct._citrus_iconv*, %struct._citrus_iconv** %7, align 8
  %63 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct._citrus_iconv*, %struct._citrus_iconv** %7, align 8
  %67 = bitcast %struct._citrus_iconv* %66 to i8*
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %51, %49, %26
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @_citrus_iconv_open(%struct._citrus_iconv**, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcasestr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
