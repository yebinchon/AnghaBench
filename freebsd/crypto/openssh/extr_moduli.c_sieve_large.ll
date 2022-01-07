; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_sieve_large.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_sieve_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"sieve_large %u\00", align 1
@largetries = common dso_local global i32 0, align 4
@largebase = common dso_local global i32 0, align 4
@largebits = common dso_local global i32 0, align 4
@LargeSieve = common dso_local global i32 0, align 4
@SMALL_MAXIMUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sieve_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sieve_large(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @debug3(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @largetries, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @largetries, align 4
  %9 = load i32, i32* @largebase, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @BN_mod_word(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @largebits, align 4
  %22 = mul nsw i32 %21, 2
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %4, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %43, %32
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @largebits, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* @LargeSieve, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @BIT_SET(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %35

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i32, i32* %3, align 4
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %2, align 4
  %53 = srem i32 %51, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %61

57:                                               ; preds = %48
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @largebits, align 4
  %64 = mul nsw i32 %63, 4
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %78, %66
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 3
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i32, i32* @SMALL_MAXIMUM, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load i32, i32* %2, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %98

78:                                               ; preds = %71
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %4, align 4
  br label %67

82:                                               ; preds = %67
  %83 = load i32, i32* %4, align 4
  %84 = sdiv i32 %83, 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %93, %82
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @largebits, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32, i32* @LargeSieve, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @BIT_SET(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %4, align 4
  br label %85

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %77, %97, %61
  ret void
}

declare dso_local i32 @debug3(i8*, i32) #1

declare dso_local i32 @BN_mod_word(i32, i32) #1

declare dso_local i32 @BIT_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
