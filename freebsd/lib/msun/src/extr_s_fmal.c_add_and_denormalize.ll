; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmal.c_add_and_denormalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmal.c_add_and_denormalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dd = type { i32, i32 }
%union.IEEEl2bits = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@INFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80, x86_fp80, i32)* @add_and_denormalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @add_and_denormalize(x86_fp80 %0, x86_fp80 %1, i32 %2) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.dd, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.IEEEl2bits, align 4
  %10 = alloca %struct.dd, align 4
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80 %1, x86_fp80* %5, align 16
  store i32 %2, i32* %6, align 4
  %11 = load x86_fp80, x86_fp80* %4, align 16
  %12 = load x86_fp80, x86_fp80* %5, align 16
  %13 = call i64 @dd_add(x86_fp80 %11, x86_fp80 %12)
  %14 = bitcast %struct.dd* %10 to i64*
  store i64 %13, i64* %14, align 4
  %15 = bitcast %struct.dd* %7 to i8*
  %16 = bitcast %struct.dd* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 8, i1 false)
  %17 = getelementptr inbounds %struct.dd, %struct.dd* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.dd, %struct.dd* %7, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = bitcast %union.IEEEl2bits* %9 to i32*
  store i32 %22, i32* %23, align 4
  %24 = bitcast %union.IEEEl2bits* %9 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 0, %26
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %27, %28
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = bitcast %union.IEEEl2bits* %9 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 1
  %38 = xor i32 %33, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %20
  %41 = getelementptr inbounds %struct.dd, %struct.dd* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INFINITY, align 4
  %44 = getelementptr inbounds %struct.dd, %struct.dd* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %43, %45
  %47 = call i32 @nextafterl(i32 %42, i32 %46)
  %48 = getelementptr inbounds %struct.dd, %struct.dd* %7, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %20
  br label %50

50:                                               ; preds = %49, %3
  %51 = getelementptr inbounds %struct.dd, %struct.dd* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call x86_fp80 @ldexp(i32 %52, i32 %53)
  ret x86_fp80 %54
}

declare dso_local i64 @dd_add(x86_fp80, x86_fp80) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nextafterl(i32, i32) #1

declare dso_local x86_fp80 @ldexp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
