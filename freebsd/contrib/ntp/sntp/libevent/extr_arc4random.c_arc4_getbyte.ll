; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_arc4random.c_arc4_getbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_arc4random.c_arc4_getbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8 }

@rs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @arc4_getbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @arc4_getbyte() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 0), align 8
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 0), align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 1), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 0), align 8
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %1, align 1
  %10 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 2), align 8
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* %1, align 1
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %11, %13
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 2), align 8
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 1), align 8
  %17 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 2), align 8
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %2, align 1
  %21 = load i8, i8* %2, align 1
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 1), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 0), align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 %21, i8* %25, align 1
  %26 = load i8, i8* %1, align 1
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 1), align 8
  %28 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 2), align 8
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 %26, i8* %30, align 1
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 1), align 8
  %32 = load i8, i8* %1, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %2, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %33, %35
  %37 = and i32 %36, 255
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %31, i64 %38
  %40 = load i8, i8* %39, align 1
  ret i8 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
