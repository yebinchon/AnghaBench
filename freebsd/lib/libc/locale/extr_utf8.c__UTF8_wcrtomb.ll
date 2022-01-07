; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_utf8.c__UTF8_wcrtomb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_utf8.c__UTF8_wcrtomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32*)* @_UTF8_wcrtomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_UTF8_wcrtomb(i8* noalias %0, i32 %1, i32* noalias %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %92

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i64 1, i64* %4, align 8
  br label %92

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, -128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %5, align 8
  store i8 %30, i8* %31, align 1
  store i64 1, i64* %4, align 8
  br label %92

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, -2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8 -64, i8* %9, align 1
  store i32 2, i32* %11, align 4
  br label %61

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, -65536
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 55296
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = icmp sle i32 %45, 57343
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @EILSEQ, align 4
  store i32 %48, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %92

49:                                               ; preds = %44, %41
  store i8 -32, i8* %9, align 1
  store i32 3, i32* %11, align 4
  br label %60

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp sle i32 %54, 1114111
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i8 -16, i8* %9, align 1
  store i32 4, i32* %11, align 4
  br label %59

57:                                               ; preds = %53, %50
  %58 = load i32, i32* @EILSEQ, align 4
  store i32 %58, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %92

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %36
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %79, %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 63
  %71 = or i32 %70, 128
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 %72, i8* %76, align 1
  %77 = load i32, i32* %6, align 4
  %78 = ashr i32 %77, 6
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %10, align 4
  br label %65

82:                                               ; preds = %65
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 255
  %85 = load i8, i8* %9, align 1
  %86 = zext i8 %85 to i32
  %87 = or i32 %84, %86
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %5, align 8
  store i8 %88, i8* %89, align 1
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %82, %57, %47, %28, %23, %18
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
