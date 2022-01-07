; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/sha2/extr_sha512c.c_SHA512_Pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/sha2/extr_sha512c.c_SHA512_Pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32 }

@PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @SHA512_Pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA512_Pad(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = ashr i32 %8, 3
  %10 = and i32 %9, 127
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ult i64 %12, 112
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* @PAD, align 4
  %21 = load i64, i64* %3, align 8
  %22 = sub i64 112, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memcpy(i32* %19, i32 %20, i32 %23)
  br label %48

25:                                               ; preds = %1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* @PAD, align 4
  %32 = load i64, i64* %3, align 8
  %33 = sub i64 128, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memcpy(i32* %30, i32 %31, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @SHA512_Transform(i32 %38, i32* %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i32 @memset(i32* %46, i32 0, i32 112)
  br label %48

48:                                               ; preds = %25, %14
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 112
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @be64enc_vect(i32* %52, i32* %55, i32 16)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @SHA512_Transform(i32 %59, i32* %62)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @SHA512_Transform(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @be64enc_vect(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
