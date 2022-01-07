; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_taxonomy.c_get_wps_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_taxonomy.c_get_wps_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i64)* @get_wps_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_wps_name(i8* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  br label %13

13:                                               ; preds = %50, %4
  %14 = load i64, i64* %9, align 8
  %15 = icmp uge i64 %14, 4
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @WPA_GET_BE16(i32* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = call i64 @WPA_GET_BE16(i32* %20)
  store i64 %21, i64* %11, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32* %23, i32** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = sub i64 %24, 4
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %58

30:                                               ; preds = %16
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 %31, 4131
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  br label %41

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %38, %37 ], [ %40, %39 ]
  store i64 %42, i64* %12, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @no_mischief_strncpy(i8* %43, i8* %45, i64 %46)
  %48 = load i64, i64* %12, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %58

50:                                               ; preds = %30
  %51 = load i64, i64* %11, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 %51
  store i32* %53, i32** %8, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %9, align 8
  br label %13

57:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %41, %29
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @no_mischief_strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
