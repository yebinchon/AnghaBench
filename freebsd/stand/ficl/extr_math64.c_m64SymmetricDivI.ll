; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_math64.c_m64SymmetricDivI.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_math64.c_m64SymmetricDivI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @m64SymmetricDivI(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @m64IsNegative(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @m64Negate(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %13, %2
  %21 = load i64, i64* %5, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @m64CastIU(i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @ficlLongDiv(i32 %30, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @m64CastQRUI(i32 %34)
  %36 = bitcast %struct.TYPE_4__* %9 to i64*
  store i64 %35, i64* %36, align 4
  %37 = bitcast %struct.TYPE_4__* %3 to i8*
  %38 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 0, %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %28
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 0, %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %46
  %55 = bitcast %struct.TYPE_4__* %3 to i64*
  %56 = load i64, i64* %55, align 4
  ret i64 %56
}

declare dso_local i64 @m64IsNegative(i32) #1

declare dso_local i32 @m64Negate(i32) #1

declare dso_local i32 @ficlLongDiv(i32, i32) #1

declare dso_local i32 @m64CastIU(i32) #1

declare dso_local i64 @m64CastQRUI(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
