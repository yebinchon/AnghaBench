; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_s_logl.c_log10l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_s_logl.c_log10l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ld = type { x86_fp80, x86_fp80, i32, [12 x i8] }

@invln10_hi = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@invln10_lo = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @log10l(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca %struct.ld, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  %7 = call i32 (...) @ENTERI()
  %8 = call i32 @DOPRINT_START(x86_fp80* %3)
  %9 = load x86_fp80, x86_fp80* %3, align 16
  %10 = call i32 @k_logl(x86_fp80 %9, %struct.ld* %4)
  %11 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 2
  %12 = load i32, i32* %11, align 16
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 0
  %16 = load x86_fp80, x86_fp80* %15, align 16
  %17 = call i32 @RETURNPI(x86_fp80 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 0
  %20 = load x86_fp80, x86_fp80* %19, align 16
  %21 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 1
  %22 = load x86_fp80, x86_fp80* %21, align 16
  %23 = call i32 @_2sumF(x86_fp80 %20, x86_fp80 %22)
  %24 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 0
  %25 = load x86_fp80, x86_fp80* %24, align 16
  %26 = fptrunc x86_fp80 %25 to float
  %27 = fpext float %26 to x86_fp80
  store x86_fp80 %27, x86_fp80* %5, align 16
  %28 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 1
  %29 = load x86_fp80, x86_fp80* %28, align 16
  %30 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 0
  %31 = load x86_fp80, x86_fp80* %30, align 16
  %32 = load x86_fp80, x86_fp80* %5, align 16
  %33 = fsub x86_fp80 %31, %32
  %34 = fadd x86_fp80 %29, %33
  store x86_fp80 %34, x86_fp80* %6, align 16
  %35 = load x86_fp80, x86_fp80* @invln10_hi, align 16
  %36 = load x86_fp80, x86_fp80* %5, align 16
  %37 = fmul x86_fp80 %35, %36
  %38 = load x86_fp80, x86_fp80* @invln10_lo, align 16
  %39 = load x86_fp80, x86_fp80* @invln10_hi, align 16
  %40 = fadd x86_fp80 %38, %39
  %41 = load x86_fp80, x86_fp80* %6, align 16
  %42 = fmul x86_fp80 %40, %41
  %43 = load x86_fp80, x86_fp80* @invln10_lo, align 16
  %44 = load x86_fp80, x86_fp80* %5, align 16
  %45 = fmul x86_fp80 %43, %44
  %46 = fadd x86_fp80 %42, %45
  %47 = call i32 @RETURN2PI(x86_fp80 %37, x86_fp80 %46)
  %48 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %48
}

declare dso_local i32 @ENTERI(...) #1

declare dso_local i32 @DOPRINT_START(x86_fp80*) #1

declare dso_local i32 @k_logl(x86_fp80, %struct.ld*) #1

declare dso_local i32 @RETURNPI(x86_fp80) #1

declare dso_local i32 @_2sumF(x86_fp80, x86_fp80) #1

declare dso_local i32 @RETURN2PI(x86_fp80, x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
