; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_getustack_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_getustack_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curproc = common dso_local global i32* null, align 8
@SV_ILP32 = common dso_local global i32 0, align 4
@RETURN_OFFSET = common dso_local global i64 0, align 8
@RETURN_OFFSET64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64, i64)* @dtrace_getustack_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_getustack_common(i64* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** @curproc, align 8
  store i32* %11, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64*, i64** %5, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i1 [ true, %4 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  br label %21

21:                                               ; preds = %66, %17
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i64*, i64** %5, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %5, align 8
  store i64 %30, i64* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %67

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %67

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @SV_ILP32, align 4
  %46 = call i64 @SV_PROC_FLAG(i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @RETURN_OFFSET, align 8
  %51 = add i64 %49, %50
  %52 = inttoptr i64 %51 to i8*
  %53 = call i64 @dtrace_fuword32(i8* %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i64 @dtrace_fuword32(i8* %55)
  store i64 %56, i64* %8, align 8
  br label %66

57:                                               ; preds = %43
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @RETURN_OFFSET64, align 8
  %60 = add i64 %58, %59
  %61 = inttoptr i64 %60 to i8*
  %62 = call i64 @dtrace_fuword64(i8* %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i64 @dtrace_fuword64(i8* %64)
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %57, %48
  br label %21

67:                                               ; preds = %42, %37, %21
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @SV_PROC_FLAG(i32*, i32) #1

declare dso_local i64 @dtrace_fuword32(i8*) #1

declare dso_local i64 @dtrace_fuword64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
