; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c_mp_gcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c_mp_gcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"gcd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_gcd(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = call i32* (...) @BN_CTX_new()
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32* (...) @BN_new()
  store i32* %13, i32** %7, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14
  %21 = call i32 @_bnerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @BN_gcd(i32* %23, i32 %26, i32 %29, i32* %30)
  %32 = call i32 @BN_ERRCHECK(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = call i32 @_moveb(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %33, %struct.TYPE_6__* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @BN_free(i32* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @BN_CTX_free(i32* %38)
  ret void
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @_bnerr(i8*) #1

declare dso_local i32 @BN_ERRCHECK(i8*, i32) #1

declare dso_local i32 @BN_gcd(i32*, i32, i32, i32*) #1

declare dso_local i32 @_moveb(i8*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
