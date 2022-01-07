; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_.arc4random.c_arc4_addrandom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_.arc4random.c_arc4_addrandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8 }

@rs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @arc4_addrandom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc4_addrandom(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 0), align 8
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 0), align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %49, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 0), align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 0), align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 1), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 0), align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %6, align 1
  %20 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 2), align 8
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %21, %23
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = srem i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %24, %32
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 2), align 8
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 1), align 8
  %36 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 2), align 8
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 1), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 0), align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %39, i8* %43, align 1
  %44 = load i8, i8* %6, align 1
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 1), align 8
  %46 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 2), align 8
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 %44, i8* %48, align 1
  br label %49

49:                                               ; preds = %12
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %9

52:                                               ; preds = %9
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 0), align 8
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rs, i32 0, i32 2), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
