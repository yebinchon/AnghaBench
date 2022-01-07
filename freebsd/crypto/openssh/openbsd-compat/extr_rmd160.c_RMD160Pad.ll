; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_rmd160.c_RMD160Pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_rmd160.c_RMD160Pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@RMD160_BLOCK_LENGTH = common dso_local global i32 0, align 4
@PADDING = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RMD160Pad(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @PUT_64BIT_LE(i32* %5, i32 %8)
  %10 = load i32, i32* @RMD160_BLOCK_LENGTH, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 8
  %15 = load i32, i32* @RMD160_BLOCK_LENGTH, align 4
  %16 = srem i32 %14, %15
  %17 = sub nsw i32 %10, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %19, 9
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @RMD160_BLOCK_LENGTH, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = load i32*, i32** @PADDING, align 8
  %29 = load i64, i64* %4, align 8
  %30 = sub i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @RMD160Update(%struct.TYPE_4__* %27, i32* %28, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %35 = call i32 @RMD160Update(%struct.TYPE_4__* %33, i32* %34, i32 8)
  ret void
}

declare dso_local i32 @PUT_64BIT_LE(i32*, i32) #1

declare dso_local i32 @RMD160Update(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
