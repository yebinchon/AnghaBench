; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_misc.c_kern_bzero.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_misc.c_kern_bzero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i64, i64)* }

@archsw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kern_bzero(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %9 = call i32 @bzero(i8* %8, i32 256)
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %14, %2
  %12 = load i64, i64* %7, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @min(i32 256, i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 0), align 8
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 %17(i8* %18, i64 %19, i64 %20)
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %3, align 8
  br label %11

28:                                               ; preds = %11
  ret void
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
