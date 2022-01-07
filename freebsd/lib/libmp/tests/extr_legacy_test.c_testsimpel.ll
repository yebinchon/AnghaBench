; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmp/tests/extr_legacy_test.c_testsimpel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmp/tests/extr_legacy_test.c_testsimpel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.testsimpel.str42 = private unnamed_addr constant [3 x i8] c"2a\00", align 1
@c42 = common dso_local global i32* null, align 8
@c1 = common dso_local global i32 0, align 4
@t0 = common dso_local global i32* null, align 8
@c43 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"madd0\00", align 1
@c44 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"madd1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"msub0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"msub1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"move0\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"xtom\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ok %d - %s\0A\00", align 1
@tnr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"mtox0\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"not ok %d - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testsimpel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testsimpel() #0 {
  %1 = alloca [3 x i8], align 1
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = bitcast [3 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.testsimpel.str42, i32 0, i32 0), i64 3, i1 false)
  %5 = load i32*, i32** @c42, align 8
  %6 = load i32, i32* @c1, align 4
  %7 = load i32*, i32** @t0, align 8
  %8 = call i32 @mp_madd(i32* %5, i32 %6, i32* %7)
  %9 = load i32*, i32** @c43, align 8
  %10 = load i32*, i32** @t0, align 8
  %11 = call i32 @testmcmp(i32* %9, i32* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** @t0, align 8
  %13 = load i32, i32* @c1, align 4
  %14 = load i32*, i32** @t0, align 8
  %15 = call i32 @mp_madd(i32* %12, i32 %13, i32* %14)
  %16 = load i32*, i32** @c44, align 8
  %17 = load i32*, i32** @t0, align 8
  %18 = call i32 @testmcmp(i32* %16, i32* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** @t0, align 8
  %20 = load i32, i32* @c1, align 4
  %21 = load i32*, i32** @t0, align 8
  %22 = call i32 @mp_msub(i32* %19, i32 %20, i32* %21)
  %23 = load i32*, i32** @c43, align 8
  %24 = load i32*, i32** @t0, align 8
  %25 = call i32 @testmcmp(i32* %23, i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32*, i32** @t0, align 8
  %27 = load i32, i32* @c1, align 4
  %28 = load i32*, i32** @t0, align 8
  %29 = call i32 @mp_msub(i32* %26, i32 %27, i32* %28)
  %30 = load i32*, i32** @c42, align 8
  %31 = load i32*, i32** @t0, align 8
  %32 = call i32 @testmcmp(i32* %30, i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** @c42, align 8
  %34 = load i32*, i32** @t0, align 8
  %35 = call i32 @mp_move(i32* %33, i32* %34)
  %36 = load i32*, i32** @c42, align 8
  %37 = load i32*, i32** @t0, align 8
  %38 = call i32 @testmcmp(i32* %36, i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %40 = call i32* @mp_xtom(i8* %39)
  store i32* %40, i32** %2, align 8
  %41 = load i32*, i32** @c42, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @testmcmp(i32* %41, i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i32*, i32** %2, align 8
  %45 = call i8* @mp_mtox(i32* %44)
  store i8* %45, i8** %3, align 8
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %47 = load i8*, i8** %3, align 8
  %48 = call i64 @strcmp(i8* %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %0
  %51 = load i32, i32* @tnr, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @tnr, align 4
  %53 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %58

54:                                               ; preds = %0
  %55 = load i32, i32* @tnr, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @tnr, align 4
  %57 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @mp_mfree(i32* %59)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mp_madd(i32*, i32, i32*) #2

declare dso_local i32 @testmcmp(i32*, i32*, i8*) #2

declare dso_local i32 @mp_msub(i32*, i32, i32*) #2

declare dso_local i32 @mp_move(i32*, i32*) #2

declare dso_local i32* @mp_xtom(i8*) #2

declare dso_local i8* @mp_mtox(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*, i32, i8*) #2

declare dso_local i32 @mp_mfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
