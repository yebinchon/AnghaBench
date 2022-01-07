; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcalendar/extr_easter.c_easterodn.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcalendar/extr_easter.c_easterodn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@__const.easterodn.mc = private unnamed_addr constant [19 x i32] [i32 5, i32 25, i32 13, i32 2, i32 22, i32 10, i32 30, i32 18, i32 7, i32 27, i32 15, i32 4, i32 24, i32 12, i32 1, i32 21, i32 9, i32 29, i32 17], align 16
@__const.easterodn.ns = private unnamed_addr constant [7 x i32] [i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 7], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @easterodn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @easterodn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [19 x i32], align 16
  %4 = alloca [7 x i32], align 16
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = bitcast [19 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([19 x i32]* @__const.easterodn.mc to i8*), i64 76, i1 false)
  %8 = bitcast [7 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([7 x i32]* @__const.easterodn.ns to i8*), i64 28, i1 false)
  %9 = load i32, i32* %2, align 4
  %10 = srem i32 %9, 19
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 21
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 4, i32* %19, align 4
  br label %22

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 3, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %2, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = call i32 @ndaysj(%struct.TYPE_3__* %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @weekday(i32 %27)
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %26, %30
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ndaysj(%struct.TYPE_3__*) #2

declare dso_local i64 @weekday(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
