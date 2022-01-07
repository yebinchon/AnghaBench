; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ge25519.c_choose_t.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ge25519.c_choose_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ge25519_base_multiples_affine = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i8)* @choose_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_t(%struct.TYPE_6__* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ge25519_base_multiples_affine, align 8
  %10 = load i64, i64* %5, align 8
  %11 = mul i64 5, %10
  %12 = add i64 %11, 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %12
  %14 = bitcast %struct.TYPE_6__* %8 to i8*
  %15 = bitcast %struct.TYPE_6__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ge25519_base_multiples_affine, align 8
  %18 = load i64, i64* %5, align 8
  %19 = mul i64 5, %18
  %20 = add i64 %19, 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %20
  %22 = load i8, i8* %6, align 1
  %23 = call i32 @equal(i8 signext %22, i32 1)
  %24 = load i8, i8* %6, align 1
  %25 = call i32 @equal(i8 signext %24, i32 -1)
  %26 = or i32 %23, %25
  %27 = call i32 @cmov_aff(%struct.TYPE_6__* %16, %struct.TYPE_6__* %21, i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ge25519_base_multiples_affine, align 8
  %30 = load i64, i64* %5, align 8
  %31 = mul i64 5, %30
  %32 = add i64 %31, 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %32
  %34 = load i8, i8* %6, align 1
  %35 = call i32 @equal(i8 signext %34, i32 2)
  %36 = load i8, i8* %6, align 1
  %37 = call i32 @equal(i8 signext %36, i32 -2)
  %38 = or i32 %35, %37
  %39 = call i32 @cmov_aff(%struct.TYPE_6__* %28, %struct.TYPE_6__* %33, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ge25519_base_multiples_affine, align 8
  %42 = load i64, i64* %5, align 8
  %43 = mul i64 5, %42
  %44 = add i64 %43, 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %44
  %46 = load i8, i8* %6, align 1
  %47 = call i32 @equal(i8 signext %46, i32 3)
  %48 = load i8, i8* %6, align 1
  %49 = call i32 @equal(i8 signext %48, i32 -3)
  %50 = or i32 %47, %49
  %51 = call i32 @cmov_aff(%struct.TYPE_6__* %40, %struct.TYPE_6__* %45, i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ge25519_base_multiples_affine, align 8
  %54 = load i64, i64* %5, align 8
  %55 = mul i64 5, %54
  %56 = add i64 %55, 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %56
  %58 = load i8, i8* %6, align 1
  %59 = call i32 @equal(i8 signext %58, i32 -4)
  %60 = call i32 @cmov_aff(%struct.TYPE_6__* %52, %struct.TYPE_6__* %57, i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @fe25519_neg(i32* %7, i32* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i8, i8* %6, align 1
  %67 = call i32 @negative(i8 signext %66)
  %68 = call i32 @fe25519_cmov(i32* %65, i32* %7, i32 %67)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cmov_aff(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @equal(i8 signext, i32) #2

declare dso_local i32 @fe25519_neg(i32*, i32*) #2

declare dso_local i32 @fe25519_cmov(i32*, i32*, i32) #2

declare dso_local i32 @negative(i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
