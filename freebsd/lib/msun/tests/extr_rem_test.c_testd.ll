; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_rem_test.c_testd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_rem_test.c_testd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, double, i32)* @testd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testd(double %0, double %1, double %2, i32 %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @random()
  store i32 %11, i32* %9, align 4
  %12 = load double, double* %5, align 8
  %13 = load double, double* %6, align 8
  %14 = call double @remainder(double %12, double %13) #4
  store double %14, double* %10, align 8
  %15 = load double, double* %10, align 8
  %16 = load double, double* %7, align 8
  %17 = fcmp oeq double %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load double, double* %10, align 8
  %21 = call i32 @signbit(double %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load double, double* %7, align 8
  %26 = call i32 @signbit(double %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = icmp eq i32 %24, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load double, double* %5, align 8
  %34 = load double, double* %6, align 8
  %35 = call double @remquo(double %33, double %34, i32* %9) #4
  store double %35, double* %10, align 8
  %36 = load double, double* %10, align 8
  %37 = load double, double* %7, align 8
  %38 = fcmp oeq double %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load double, double* %10, align 8
  %42 = call i32 @signbit(double %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load double, double* %7, align 8
  %47 = call i32 @signbit(double %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = icmp eq i32 %45, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = xor i32 %54, %55
  %57 = icmp sge i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 7
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 7
  %64 = icmp eq i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sgt i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = xor i32 %72, %76
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @abs(i32 %79) #5
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @abs(i32 %82) #5
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @mask(i32 %84)
  %86 = and i32 %83, %85
  %87 = icmp eq i32 %81, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  br label %90

90:                                               ; preds = %69, %4
  ret void
}

declare dso_local i32 @random(...) #1

; Function Attrs: nounwind
declare dso_local double @remainder(double, double) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @signbit(double) #1

; Function Attrs: nounwind
declare dso_local double @remquo(double, double, i32*) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
