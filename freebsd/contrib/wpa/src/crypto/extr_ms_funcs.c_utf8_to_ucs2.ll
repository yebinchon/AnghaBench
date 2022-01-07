; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_utf8_to_ucs2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_utf8_to_ucs2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, i64*)* @utf8_to_ucs2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_to_ucs2(i32* %0, i64 %1, i32* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %17

17:                                               ; preds = %111, %5
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %114

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %122

30:                                               ; preds = %21
  %31 = load i32, i32* %14, align 4
  %32 = icmp sle i32 %31, 127
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @WPA_PUT_LE16(i32* %36, i32 %37)
  %39 = load i64, i64* %13, align 8
  %40 = add i64 %39, 2
  store i64 %40, i64* %13, align 8
  br label %110

41:                                               ; preds = %30
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %43, 1
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %48, 1
  %50 = icmp uge i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %41
  store i32 -1, i32* %6, align 4
  br label %122

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = and i32 %58, 224
  %60 = icmp eq i32 %59, 192
  br i1 %60, label %61, label %74

61:                                               ; preds = %52
  %62 = load i32*, i32** %9, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %14, align 4
  %66 = and i32 %65, 31
  %67 = shl i32 %66, 6
  %68 = load i32, i32* %15, align 4
  %69 = and i32 %68, 63
  %70 = or i32 %67, %69
  %71 = call i32 @WPA_PUT_LE16(i32* %64, i32 %70)
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 2
  store i64 %73, i64* %13, align 8
  br label %108

74:                                               ; preds = %52
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %8, align 8
  %77 = sub i64 %76, 1
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %10, align 8
  %82 = sub i64 %81, 1
  %83 = icmp uge i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74
  store i32 -1, i32* %6, align 4
  br label %122

85:                                               ; preds = %79
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %12, align 8
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %16, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %14, align 4
  %95 = and i32 %94, 15
  %96 = shl i32 %95, 12
  %97 = load i32, i32* %15, align 4
  %98 = and i32 %97, 63
  %99 = shl i32 %98, 6
  %100 = or i32 %96, %99
  %101 = load i32, i32* %16, align 4
  %102 = and i32 %101, 63
  %103 = or i32 %100, %102
  %104 = call i32 @WPA_PUT_LE16(i32* %93, i32 %103)
  %105 = load i64, i64* %13, align 8
  %106 = add i64 %105, 2
  store i64 %106, i64* %13, align 8
  br label %107

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107, %61
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %33
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %12, align 8
  br label %17

114:                                              ; preds = %17
  %115 = load i64*, i64** %11, align 8
  %116 = icmp ne i64* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i64, i64* %13, align 8
  %119 = udiv i64 %118, 2
  %120 = load i64*, i64** %11, align 8
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %114
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %84, %51, %29
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
