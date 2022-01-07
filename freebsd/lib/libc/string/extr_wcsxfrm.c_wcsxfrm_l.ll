; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_wcsxfrm.c_wcsxfrm_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_wcsxfrm.c_wcsxfrm_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }
%struct.xlocale_collate = type { i64 }

@XLC_COLLATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wcsxfrm_l(i32* noalias %0, i32* noalias %1, i64 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xlocale_collate*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %13 = call i32 @FIX_LOCALE(%struct.TYPE_4__* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @XLC_COLLATE, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.xlocale_collate*
  store %struct.xlocale_collate* %20, %struct.xlocale_collate** %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %24
  store i64 0, i64* %5, align 8
  br label %88

30:                                               ; preds = %4
  %31 = load %struct.xlocale_collate*, %struct.xlocale_collate** %11, align 8
  %32 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.xlocale_collate*, %struct.xlocale_collate** %11, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @_collate_wxfrm(%struct.xlocale_collate* %36, i32* %37, i32* %38, i64 %39)
  store i64 %40, i64* %10, align 8
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %30
  br label %62

43:                                               ; preds = %35
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 0, i32* %50, align 4
  br label %60

51:                                               ; preds = %43
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %56, 1
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %51
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i64, i64* %10, align 8
  store i64 %61, i64* %5, align 8
  br label %88

62:                                               ; preds = %42
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 @wcslen(i32* %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @wcscpy(i32* %69, i32* %70)
  br label %86

72:                                               ; preds = %62
  %73 = load i64, i64* %8, align 8
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %78, 1
  %80 = call i32 @wcsncpy(i32* %76, i32* %77, i64 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %82, 1
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %75, %72
  br label %86

86:                                               ; preds = %85, %68
  %87 = load i64, i64* %10, align 8
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %86, %60, %29
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local i32 @FIX_LOCALE(%struct.TYPE_4__*) #1

declare dso_local i64 @_collate_wxfrm(%struct.xlocale_collate*, i32*, i32*, i64) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @wcscpy(i32*, i32*) #1

declare dso_local i32 @wcsncpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
