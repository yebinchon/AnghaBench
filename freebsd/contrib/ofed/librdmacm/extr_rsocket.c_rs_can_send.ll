; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_can_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_can_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RS_OPT_MSG_SEND = common dso_local global i32 0, align 4
@RS_SNDLOWAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*)* @rs_can_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_can_send(%struct.rsocket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsocket*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %3, align 8
  %4 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %5 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @RS_OPT_MSG_SEND, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %1
  %11 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %12 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %17 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RS_SNDLOWAT, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %23 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %26 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %31 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %30, i32 0, i32 6
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %34 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %29, %21, %15, %10
  %41 = phi i1 [ false, %21 ], [ false, %15 ], [ false, %10 ], [ %39, %29 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %76

43:                                               ; preds = %1
  %44 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %45 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 2
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %50 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RS_SNDLOWAT, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %56 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %59 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %64 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %63, i32 0, i32 6
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %67 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %62, %54, %48, %43
  %74 = phi i1 [ false, %54 ], [ false, %48 ], [ false, %43 ], [ %72, %62 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %40
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
