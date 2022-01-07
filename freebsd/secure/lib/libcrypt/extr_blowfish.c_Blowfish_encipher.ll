; ModuleID = '/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_blowfish.c_Blowfish_encipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_blowfish.c_Blowfish_encipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*)* @Blowfish_encipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Blowfish_encipher(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BLFRND(i32* %28, i32* %29, i32 %30, i32 %31, i32 1)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @BLFRND(i32* %33, i32* %34, i32 %35, i32 %36, i32 2)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @BLFRND(i32* %38, i32* %39, i32 %40, i32 %41, i32 3)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @BLFRND(i32* %43, i32* %44, i32 %45, i32 %46, i32 4)
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @BLFRND(i32* %48, i32* %49, i32 %50, i32 %51, i32 5)
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @BLFRND(i32* %53, i32* %54, i32 %55, i32 %56, i32 6)
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @BLFRND(i32* %58, i32* %59, i32 %60, i32 %61, i32 7)
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @BLFRND(i32* %63, i32* %64, i32 %65, i32 %66, i32 8)
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @BLFRND(i32* %68, i32* %69, i32 %70, i32 %71, i32 9)
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @BLFRND(i32* %73, i32* %74, i32 %75, i32 %76, i32 10)
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @BLFRND(i32* %78, i32* %79, i32 %80, i32 %81, i32 11)
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @BLFRND(i32* %83, i32* %84, i32 %85, i32 %86, i32 12)
  %88 = load i32*, i32** %9, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @BLFRND(i32* %88, i32* %89, i32 %90, i32 %91, i32 13)
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @BLFRND(i32* %93, i32* %94, i32 %95, i32 %96, i32 14)
  %98 = load i32*, i32** %9, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @BLFRND(i32* %98, i32* %99, i32 %100, i32 %101, i32 15)
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @BLFRND(i32* %103, i32* %104, i32 %105, i32 %106, i32 16)
  %108 = load i32, i32* %8, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 17
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %108, %111
  %113 = load i32*, i32** %5, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32*, i32** %6, align 8
  store i32 %114, i32* %115, align 4
  ret void
}

declare dso_local i32 @BLFRND(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
