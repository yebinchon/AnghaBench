; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/utf8proc/extr_utf8proc.c_unsafe_encode_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/utf8proc/extr_utf8proc.c_unsafe_encode_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @unsafe_encode_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unsafe_encode_char(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64*, i64** %5, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %14, i64* %16, align 8
  store i32 1, i32* %3, align 4
  br label %99

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2048
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 6
  %23 = add nsw i32 192, %22
  %24 = sext i32 %23 to i64
  %25 = load i64*, i64** %5, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 63
  %29 = add nsw i32 128, %28
  %30 = sext i32 %29 to i64
  %31 = load i64*, i64** %5, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  store i64 %30, i64* %32, align 8
  store i32 2, i32* %3, align 4
  br label %99

33:                                               ; preds = %17
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 65535
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64*, i64** %5, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 255, i64* %38, align 8
  store i32 1, i32* %3, align 4
  br label %99

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 65534
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64*, i64** %5, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 254, i64* %44, align 8
  store i32 1, i32* %3, align 4
  br label %99

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 65536
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = ashr i32 %49, 12
  %51 = add nsw i32 224, %50
  %52 = sext i32 %51 to i64
  %53 = load i64*, i64** %5, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %4, align 4
  %56 = ashr i32 %55, 6
  %57 = and i32 %56, 63
  %58 = add nsw i32 128, %57
  %59 = sext i32 %58 to i64
  %60 = load i64*, i64** %5, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 63
  %64 = add nsw i32 128, %63
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %5, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  store i64 %65, i64* %67, align 8
  store i32 3, i32* %3, align 4
  br label %99

68:                                               ; preds = %45
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 1114112
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = ashr i32 %72, 18
  %74 = add nsw i32 240, %73
  %75 = sext i32 %74 to i64
  %76 = load i64*, i64** %5, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, 12
  %80 = and i32 %79, 63
  %81 = add nsw i32 128, %80
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %5, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = ashr i32 %85, 6
  %87 = and i32 %86, 63
  %88 = add nsw i32 128, %87
  %89 = sext i32 %88 to i64
  %90 = load i64*, i64** %5, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 2
  store i64 %89, i64* %91, align 8
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, 63
  %94 = add nsw i32 128, %93
  %95 = sext i32 %94 to i64
  %96 = load i64*, i64** %5, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 3
  store i64 %95, i64* %97, align 8
  store i32 4, i32* %3, align 4
  br label %99

98:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %71, %48, %42, %36, %20, %12, %8
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
