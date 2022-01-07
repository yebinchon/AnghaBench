; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strxfrm.c_strxfrm_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strxfrm.c_strxfrm_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }
%struct.xlocale_collate = type { i64 }

@XLC_COLLATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strxfrm_l(i8* noalias %0, i8* noalias %1, i64 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.xlocale_collate*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i32* null, i32** %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %15 = call i32 @FIX_LOCALE(%struct.TYPE_5__* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @XLC_COLLATE, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.xlocale_collate*
  store %struct.xlocale_collate* %22, %struct.xlocale_collate** %13, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %29, %26
  store i64 0, i64* %5, align 8
  br label %93

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %10, align 8
  %35 = load %struct.xlocale_collate*, %struct.xlocale_collate** %13, align 8
  %36 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %85

40:                                               ; preds = %32
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1
  %43 = mul i64 %42, 4
  %44 = call i32* @malloc(i64 %43)
  store i32* %44, i32** %12, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %85

47:                                               ; preds = %40
  %48 = load i32*, i32** %12, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = call i64 @mbstowcs_l(i32* %48, i8* %49, i64 %51, %struct.TYPE_5__* %52)
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %85

56:                                               ; preds = %47
  %57 = load %struct.xlocale_collate*, %struct.xlocale_collate** %13, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @_collate_sxfrm(%struct.xlocale_collate* %57, i32* %58, i8* %59, i64 %60)
  store i64 %61, i64* %11, align 8
  %62 = icmp eq i64 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %85

64:                                               ; preds = %56
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @free(i32* %65)
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 0, i8* %73, align 1
  br label %83

74:                                               ; preds = %64
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  br label %82

82:                                               ; preds = %77, %74
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i64, i64* %11, align 8
  store i64 %84, i64* %5, align 8
  br label %93

85:                                               ; preds = %63, %55, %46, %39
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @free(i32* %86)
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @strlcpy(i8* %88, i8* %89, i64 %90)
  %92 = load i64, i64* %10, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %85, %83, %31
  %94 = load i64, i64* %5, align 8
  ret i64 %94
}

declare dso_local i32 @FIX_LOCALE(%struct.TYPE_5__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @mbstowcs_l(i32*, i8*, i64, %struct.TYPE_5__*) #1

declare dso_local i64 @_collate_sxfrm(%struct.xlocale_collate*, i32*, i8*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
