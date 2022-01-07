; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c_mp_msqrt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c_mp_msqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"msqrt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_msqrt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i16, align 2
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = call i32* (...) @BN_CTX_new()
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @_bnerr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %3
  %21 = call i32* @_itom(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32* %21, i32** %8, align 8
  %22 = call i32* @_itom(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32* %22, i32** %10, align 8
  %23 = call i32* @_itom(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %23, i32** %9, align 8
  %24 = call i32* @_itom(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %24, i32** %11, align 8
  %25 = call i32* @_itom(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %25, i32** %12, align 8
  %26 = call i32* @_itom(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %26, i32** %13, align 8
  br label %27

27:                                               ; preds = %49, %20
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @_movem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %28, i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @_mdiv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %31, i32* %32, i32* %33, i32* %34, i32* %35)
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @_madd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %37, i32* %38, i32* %39)
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @_sdiv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %41, i32 2, i32* %42, i16* %14, i32* %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @_msub(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %45, i32* %46, i32* %47)
  br label %49

49:                                               ; preds = %27
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @_mcmpa(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %50, i32* %51)
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %27, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @_movem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %55, i32* %56)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @_mult(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %58, i32* %59, i32* %60, i32* %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @_msub(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %63, i32* %64, i32* %65)
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @_movem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %67, i32* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @_mfree(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @_mfree(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %72)
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @_mfree(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %74)
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @_mfree(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %76)
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @_mfree(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %78)
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @_mfree(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @BN_CTX_free(i32* %82)
  ret void
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @_bnerr(i8*) #1

declare dso_local i32* @_itom(i8*, i32) #1

declare dso_local i32 @_movem(i8*, i32*, i32*) #1

declare dso_local i32 @_mdiv(i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_madd(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @_sdiv(i8*, i32*, i32, i32*, i16*, i32*) #1

declare dso_local i32 @_msub(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @_mcmpa(i8*, i32*, i32*) #1

declare dso_local i32 @_mult(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_mfree(i8*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
