; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c_mp_pow.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c_mp_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_pow(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = call i32* (...) @BN_CTX_new()
  store i32* %11, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32* (...) @BN_new()
  store i32* %15, i32** %9, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16
  %23 = call i32 @_bnerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @BN_mod_exp(i32* %25, i32 %28, i32 %31, i32 %34, i32* %35)
  %37 = call i32 @BN_ERRCHECK(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = call i32 @_moveb(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %38, %struct.TYPE_7__* %39)
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @BN_free(i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @BN_CTX_free(i32* %43)
  ret void
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @_bnerr(i8*) #1

declare dso_local i32 @BN_ERRCHECK(i8*, i32) #1

declare dso_local i32 @BN_mod_exp(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @_moveb(i8*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
