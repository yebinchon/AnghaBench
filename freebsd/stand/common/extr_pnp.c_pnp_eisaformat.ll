; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_pnp.c_pnp_eisaformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_pnp.c_pnp_eisaformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pnp_eisaformat.idbuf = internal global [8 x i8] zeroinitializer, align 1
@__const.pnp_eisaformat.hextoascii = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pnp_eisaformat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [17 x i8], align 16
  store i32* %0, i32** %2, align 8
  %4 = bitcast [17 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.pnp_eisaformat.hextoascii, i32 0, i32 0), i64 17, i1 false)
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 124
  %9 = ashr i32 %8, 2
  %10 = add nsw i32 64, %9
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 0), align 1
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 3
  %16 = shl i32 %15, 3
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 224
  %21 = ashr i32 %20, 5
  %22 = add nsw i32 %16, %21
  %23 = add nsw i32 64, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 1), align 1
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 31
  %29 = add nsw i32 64, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 2), align 1
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 3), align 1
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 4), align 1
  %45 = load i32*, i32** %2, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 5), align 1
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 6), align 1
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 7), align 1
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 0)
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
