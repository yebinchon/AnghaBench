; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_table_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_table_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@k25519Precomp = common dso_local global %struct.TYPE_7__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i8)* @table_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @table_select(%struct.TYPE_7__* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %10 = load i8, i8* %6, align 1
  %11 = call signext i8 @negative(i8 signext %10)
  store i8 %11, i8* %8, align 1
  %12 = load i8, i8* %6, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* %8, align 1
  %15 = sext i8 %14 to i32
  %16 = sub nsw i32 0, %15
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = trunc i32 %19 to i8
  %21 = sext i8 %20 to i32
  %22 = shl i32 %21, 1
  %23 = sub nsw i32 %13, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %9, align 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = call i32 @ge_precomp_0(%struct.TYPE_7__* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @k25519Precomp, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %28, i64 %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 0
  %34 = load i8, i8* %9, align 1
  %35 = call signext i8 @equal(i8 signext %34, i32 1)
  %36 = call i32 @cmov(%struct.TYPE_7__* %27, %struct.TYPE_7__* %33, i8 signext %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @k25519Precomp, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %38, i64 %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 1
  %44 = load i8, i8* %9, align 1
  %45 = call signext i8 @equal(i8 signext %44, i32 2)
  %46 = call i32 @cmov(%struct.TYPE_7__* %37, %struct.TYPE_7__* %43, i8 signext %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @k25519Precomp, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 2
  %54 = load i8, i8* %9, align 1
  %55 = call signext i8 @equal(i8 signext %54, i32 3)
  %56 = call i32 @cmov(%struct.TYPE_7__* %47, %struct.TYPE_7__* %53, i8 signext %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @k25519Precomp, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %58, i64 %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 3
  %64 = load i8, i8* %9, align 1
  %65 = call signext i8 @equal(i8 signext %64, i32 4)
  %66 = call i32 @cmov(%struct.TYPE_7__* %57, %struct.TYPE_7__* %63, i8 signext %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @k25519Precomp, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %68, i64 %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 4
  %74 = load i8, i8* %9, align 1
  %75 = call signext i8 @equal(i8 signext %74, i32 5)
  %76 = call i32 @cmov(%struct.TYPE_7__* %67, %struct.TYPE_7__* %73, i8 signext %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @k25519Precomp, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 5
  %84 = load i8, i8* %9, align 1
  %85 = call signext i8 @equal(i8 signext %84, i32 6)
  %86 = call i32 @cmov(%struct.TYPE_7__* %77, %struct.TYPE_7__* %83, i8 signext %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @k25519Precomp, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %88, i64 %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 6
  %94 = load i8, i8* %9, align 1
  %95 = call signext i8 @equal(i8 signext %94, i32 7)
  %96 = call i32 @cmov(%struct.TYPE_7__* %87, %struct.TYPE_7__* %93, i8 signext %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @k25519Precomp, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %98, i64 %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 7
  %104 = load i8, i8* %9, align 1
  %105 = call signext i8 @equal(i8 signext %104, i32 8)
  %106 = call i32 @cmov(%struct.TYPE_7__* %97, %struct.TYPE_7__* %103, i8 signext %105)
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @fe_copy(i32 %108, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @fe_copy(i32 %114, i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @fe_neg(i32 %120, i32 %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = load i8, i8* %8, align 1
  %127 = call i32 @cmov(%struct.TYPE_7__* %125, %struct.TYPE_7__* %7, i8 signext %126)
  ret void
}

declare dso_local signext i8 @negative(i8 signext) #1

declare dso_local i32 @ge_precomp_0(%struct.TYPE_7__*) #1

declare dso_local i32 @cmov(%struct.TYPE_7__*, %struct.TYPE_7__*, i8 signext) #1

declare dso_local signext i8 @equal(i8 signext, i32) #1

declare dso_local i32 @fe_copy(i32, i32) #1

declare dso_local i32 @fe_neg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
