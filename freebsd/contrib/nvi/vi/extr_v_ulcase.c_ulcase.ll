; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ulcase.c_ulcase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ulcase.c_ulcase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64*, i64, i64, i64)* @ulcase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulcase(i32* %0, i32 %1, i64* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i64*, i64** %19, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @GET_SPACE_RETW(i32* %20, i64* %21, i64 %22, i64 %23)
  %25 = load i64*, i64** %19, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @MEMMOVE(i64* %25, i64* %26, i64 %27)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %29 = load i64*, i64** %19, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64* %31, i64** %17, align 8
  %32 = load i64*, i64** %19, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  store i64* %35, i64** %18, align 8
  br label %36

36:                                               ; preds = %60, %6
  %37 = load i64*, i64** %17, align 8
  %38 = load i64*, i64** %18, align 8
  %39 = icmp ult i64* %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i64*, i64** %17, align 8
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %16, align 8
  %44 = call i64 @ISLOWER(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* %16, align 8
  %48 = call i64 @TOUPPER(i64 %47)
  %49 = load i64*, i64** %17, align 8
  store i64 %48, i64* %49, align 8
  store i32 1, i32* %14, align 4
  br label %59

50:                                               ; preds = %40
  %51 = load i64, i64* %16, align 8
  %52 = call i64 @ISUPPER(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %16, align 8
  %56 = call i64 @TOLOWER(i64 %55)
  %57 = load i64*, i64** %17, align 8
  store i64 %56, i64* %57, align 8
  store i32 1, i32* %14, align 4
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59
  %61 = load i64*, i64** %17, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %17, align 8
  br label %36

63:                                               ; preds = %36
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i64*, i64** %19, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i64 @db_set(i32* %67, i32 %68, i64* %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 1, i32* %15, align 4
  br label %74

74:                                               ; preds = %73, %66, %63
  %75 = load i32*, i32** %7, align 8
  %76 = load i64*, i64** %19, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @FREE_SPACEW(i32* %75, i64* %76, i64 %77)
  %79 = load i32, i32* %15, align 4
  ret i32 %79
}

declare dso_local i32 @GET_SPACE_RETW(i32*, i64*, i64, i64) #1

declare dso_local i32 @MEMMOVE(i64*, i64*, i64) #1

declare dso_local i64 @ISLOWER(i64) #1

declare dso_local i64 @TOUPPER(i64) #1

declare dso_local i64 @ISUPPER(i64) #1

declare dso_local i64 @TOLOWER(i64) #1

declare dso_local i64 @db_set(i32*, i32, i64*, i64) #1

declare dso_local i32 @FREE_SPACEW(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
