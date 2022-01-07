; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_bsd_iconv.c___bsd_iconvctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_bsd_iconv.c___bsd_iconvctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i32, %struct.iconv_hooks* }
%struct.iconv_hooks = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bsd_iconvctl(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct._citrus_iconv*, align 8
  %9 = alloca %struct.iconv_hooks*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct._citrus_iconv*
  store %struct._citrus_iconv* %16, %struct._citrus_iconv** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.iconv_hooks*
  store %struct.iconv_hooks* %18, %struct.iconv_hooks** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %12, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @ISBADF(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EBADF, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %110

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %108 [
    i32 128, label %28
    i32 134, label %58
    i32 129, label %60
    i32 136, label %66
    i32 133, label %76
    i32 131, label %83
    i32 132, label %89
    i32 135, label %91
    i32 130, label %101
  ]

28:                                               ; preds = %26
  %29 = load %struct._citrus_iconv*, %struct._citrus_iconv** %8, align 8
  %30 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 47)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  store i64 %40, i64* %13, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %11, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %28
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @memcmp(i8* %48, i8* %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %47, %28
  %55 = phi i1 [ false, %28 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %110

58:                                               ; preds = %26
  %59 = load i32*, i32** %12, align 8
  store i32 1, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %110

60:                                               ; preds = %26
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 0, i32 -1
  store i32 %65, i32* %4, align 4
  br label %110

66:                                               ; preds = %26
  %67 = load %struct._citrus_iconv*, %struct._citrus_iconv** %8, align 8
  %68 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = load i32*, i32** %12, align 8
  store i32 %74, i32* %75, align 4
  store i32 0, i32* %4, align 4
  br label %110

76:                                               ; preds = %26
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct._citrus_iconv*, %struct._citrus_iconv** %8, align 8
  %80 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 8
  store i32 0, i32* %4, align 4
  br label %110

83:                                               ; preds = %26
  %84 = load %struct.iconv_hooks*, %struct.iconv_hooks** %9, align 8
  %85 = load %struct._citrus_iconv*, %struct._citrus_iconv** %8, align 8
  %86 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  store %struct.iconv_hooks* %84, %struct.iconv_hooks** %88, align 8
  store i32 0, i32* %4, align 4
  br label %110

89:                                               ; preds = %26
  %90 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %90, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %110

91:                                               ; preds = %26
  %92 = load %struct._citrus_iconv*, %struct._citrus_iconv** %8, align 8
  %93 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = load i32*, i32** %12, align 8
  store i32 %99, i32* %100, align 4
  store i32 0, i32* %4, align 4
  br label %110

101:                                              ; preds = %26
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct._citrus_iconv*, %struct._citrus_iconv** %8, align 8
  %105 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  store i32 %103, i32* %107, align 4
  store i32 0, i32* %4, align 4
  br label %110

108:                                              ; preds = %26
  %109 = load i32, i32* @EINVAL, align 4
  store i32 %109, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %101, %91, %89, %83, %76, %66, %60, %58, %54, %24
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @ISBADF(i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
