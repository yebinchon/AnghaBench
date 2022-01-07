; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmal.c_add_adjusted.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmal.c_add_adjusted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dd = type { i32, x86_fp80 }
%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_2__ = type { i32 }

@INFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80, x86_fp80)* @add_adjusted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @add_adjusted(x86_fp80 %0, x86_fp80 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca %struct.dd, align 16
  %6 = alloca %union.IEEEl2bits, align 16
  %7 = alloca %struct.dd, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  store x86_fp80 %1, x86_fp80* %4, align 16
  %8 = load x86_fp80, x86_fp80* %3, align 16
  %9 = load x86_fp80, x86_fp80* %4, align 16
  call void @dd_add(%struct.dd* sret %7, x86_fp80 %8, x86_fp80 %9)
  %10 = bitcast %struct.dd* %5 to i8*
  %11 = bitcast %struct.dd* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 %11, i64 32, i1 false)
  %12 = getelementptr inbounds %struct.dd, %struct.dd* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 16
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.dd, %struct.dd* %5, i32 0, i32 1
  %17 = load x86_fp80, x86_fp80* %16, align 16
  %18 = bitcast %union.IEEEl2bits* %6 to x86_fp80*
  store x86_fp80 %17, x86_fp80* %18, align 16
  %19 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 16
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.dd, %struct.dd* %5, i32 0, i32 1
  %26 = load x86_fp80, x86_fp80* %25, align 16
  %27 = load i32, i32* @INFINITY, align 4
  %28 = getelementptr inbounds %struct.dd, %struct.dd* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 16
  %30 = mul nsw i32 %27, %29
  %31 = call x86_fp80 @nextafterl(x86_fp80 %26, i32 %30)
  %32 = getelementptr inbounds %struct.dd, %struct.dd* %5, i32 0, i32 1
  store x86_fp80 %31, x86_fp80* %32, align 16
  br label %33

33:                                               ; preds = %24, %15
  br label %34

34:                                               ; preds = %33, %2
  %35 = getelementptr inbounds %struct.dd, %struct.dd* %5, i32 0, i32 1
  %36 = load x86_fp80, x86_fp80* %35, align 16
  ret x86_fp80 %36
}

declare dso_local void @dd_add(%struct.dd* sret, x86_fp80, x86_fp80) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local x86_fp80 @nextafterl(x86_fp80, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
