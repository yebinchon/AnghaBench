; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_math64.c_m64FlooredDivI.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_math64.c_m64FlooredDivI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @m64FlooredDivI(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @m64IsNegative(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @m64Negate(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @m64CastIU(i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @ficlLongDiv(i32 %30, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call { i64, i32 } @m64CastQRUI(i32 %34)
  %36 = bitcast %struct.TYPE_4__* %9 to { i64, i32 }*
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i32 } %35, 0
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i32 } %35, 1
  store i32 %40, i32* %39, align 8
  %41 = bitcast %struct.TYPE_4__* %3 to i8*
  %42 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 0, %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %57, %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %53, %45
  br label %63

63:                                               ; preds = %62, %28
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 0, %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %66, %63
  %72 = bitcast %struct.TYPE_4__* %3 to { i64, i32 }*
  %73 = load { i64, i32 }, { i64, i32 }* %72, align 8
  ret { i64, i32 } %73
}

declare dso_local i64 @m64IsNegative(i32) #1

declare dso_local i32 @m64Negate(i32) #1

declare dso_local i32 @ficlLongDiv(i32, i32) #1

declare dso_local i32 @m64CastIU(i32) #1

declare dso_local { i64, i32 } @m64CastQRUI(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
