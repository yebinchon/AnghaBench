; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_roundl.c_roundl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_roundl.c_roundl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local x86_fp80 @roundl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %6 = load i32, i32* %5, align 4
  %7 = load x86_fp80, x86_fp80* %3, align 16
  %8 = call i32 @GET_LDBL_EXPSIGN(i32 %6, x86_fp80 %7)
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 32767
  %11 = icmp eq i32 %10, 32767
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load x86_fp80, x86_fp80* %3, align 16
  %14 = load x86_fp80, x86_fp80* %3, align 16
  %15 = fadd x86_fp80 %13, %14
  store x86_fp80 %15, x86_fp80* %2, align 16
  br label %49

16:                                               ; preds = %1
  %17 = call i32 (...) @ENTERI()
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 32768
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = load x86_fp80, x86_fp80* %3, align 16
  %23 = call x86_fp80 @llvm.floor.f80(x86_fp80 %22)
  store x86_fp80 %23, x86_fp80* %4, align 16
  %24 = load x86_fp80, x86_fp80* %4, align 16
  %25 = load x86_fp80, x86_fp80* %3, align 16
  %26 = fsub x86_fp80 %24, %25
  %27 = fcmp ole x86_fp80 %26, 0xKBFFE8000000000000000
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load x86_fp80, x86_fp80* %4, align 16
  %30 = fadd x86_fp80 %29, 0xK3FFF8000000000000000
  store x86_fp80 %30, x86_fp80* %4, align 16
  br label %31

31:                                               ; preds = %28, %21
  %32 = load x86_fp80, x86_fp80* %4, align 16
  %33 = call i32 @RETURNI(x86_fp80 %32)
  br label %49

34:                                               ; preds = %16
  %35 = load x86_fp80, x86_fp80* %3, align 16
  %36 = fneg x86_fp80 %35
  %37 = call x86_fp80 @llvm.floor.f80(x86_fp80 %36)
  store x86_fp80 %37, x86_fp80* %4, align 16
  %38 = load x86_fp80, x86_fp80* %4, align 16
  %39 = load x86_fp80, x86_fp80* %3, align 16
  %40 = fadd x86_fp80 %38, %39
  %41 = fcmp ole x86_fp80 %40, 0xKBFFE8000000000000000
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load x86_fp80, x86_fp80* %4, align 16
  %44 = fadd x86_fp80 %43, 0xK3FFF8000000000000000
  store x86_fp80 %44, x86_fp80* %4, align 16
  br label %45

45:                                               ; preds = %42, %34
  %46 = load x86_fp80, x86_fp80* %4, align 16
  %47 = fneg x86_fp80 %46
  %48 = call i32 @RETURNI(x86_fp80 %47)
  br label %49

49:                                               ; preds = %12, %45, %31
  %50 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %50
}

declare dso_local i32 @GET_LDBL_EXPSIGN(i32, x86_fp80) #1

declare dso_local i32 @ENTERI(...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.floor.f80(x86_fp80) #2

declare dso_local i32 @RETURNI(x86_fp80) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
