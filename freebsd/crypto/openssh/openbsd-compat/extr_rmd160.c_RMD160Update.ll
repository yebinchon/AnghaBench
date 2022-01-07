; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_rmd160.c_RMD160Update.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_rmd160.c_RMD160Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@RMD160_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RMD160Update(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sdiv i32 %12, 8
  %14 = load i32, i32* @RMD160_BLOCK_LENGTH, align 4
  %15 = srem i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* @RMD160_BLOCK_LENGTH, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %7, align 8
  %20 = sub i64 %18, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = mul i64 8, %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 8
  store i64 0, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %3
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @memcpy(i32* %40, i32* %41, i64 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @RMD160Transform(i32 %46, i32* %49)
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %35, %32
  br label %53

53:                                               ; preds = %60, %52
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* @RMD160_BLOCK_LENGTH, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = load i64, i64* %6, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = call i32 @RMD160Transform(i32 %63, i32* %66)
  %68 = load i32, i32* @RMD160_BLOCK_LENGTH, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %8, align 8
  br label %53

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %3
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32*, i32** %5, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %8, align 8
  %88 = sub i64 %86, %87
  %89 = call i32 @memcpy(i32* %82, i32* %85, i64 %88)
  br label %90

90:                                               ; preds = %77, %73
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @RMD160Transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
