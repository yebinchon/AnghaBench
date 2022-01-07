; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/curve448/extr_scalar.c_curve448_scalar_decode_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/curve448/extr_scalar.c_curve448_scalar_decode_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curve448_scalar_zero = common dso_local global i32 0, align 4
@C448_SCALAR_BYTES = common dso_local global i64 0, align 8
@curve448_scalar_one = common dso_local global i32 0, align 4
@sc_r2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @curve448_scalar_decode_long(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @curve448_scalar_zero, align 4
  %15 = call i32 @curve448_scalar_copy(i32 %13, i32 %14)
  br label %80

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @C448_SCALAR_BYTES, align 8
  %20 = urem i64 %18, %19
  %21 = sub i64 %17, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i64, i64* @C448_SCALAR_BYTES, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %25, %16
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %34, %35
  %37 = call i32 @scalar_decode_short(i32 %30, i8* %33, i64 %36)
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %51

40:                                               ; preds = %29
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @curve448_scalar_one, align 4
  %48 = call i32 @curve448_scalar_mul(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @curve448_scalar_destroy(i32 %49)
  br label %80

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %55, %51
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load i64, i64* @C448_SCALAR_BYTES, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @sc_r2, align 4
  %62 = call i32 @sc_montmul(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = call i32 @curve448_scalar_decode(i32 %63, i8* %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @curve448_scalar_add(i32 %68, i32 %69, i32 %70)
  br label %52

72:                                               ; preds = %52
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @curve448_scalar_copy(i32 %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @curve448_scalar_destroy(i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @curve448_scalar_destroy(i32 %78)
  br label %80

80:                                               ; preds = %72, %40, %12
  ret void
}

declare dso_local i32 @curve448_scalar_copy(i32, i32) #1

declare dso_local i32 @scalar_decode_short(i32, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @curve448_scalar_mul(i32, i32, i32) #1

declare dso_local i32 @curve448_scalar_destroy(i32) #1

declare dso_local i32 @sc_montmul(i32, i32, i32) #1

declare dso_local i32 @curve448_scalar_decode(i32, i8*) #1

declare dso_local i32 @curve448_scalar_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
