; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_give_credits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_give_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32, i32, i64, i64 }

@RS_OPT_MSG_SEND = common dso_local global i32 0, align 4
@rs_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*)* @rs_give_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_give_credits(%struct.rsocket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsocket*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %3, align 8
  %4 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %5 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @RS_OPT_MSG_SEND, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %48, label %10

10:                                               ; preds = %1
  %11 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %12 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %15 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 1
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %10
  %20 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %21 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i16
  %24 = sext i16 %23 to i32
  %25 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %26 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i16
  %29 = sext i16 %28 to i32
  %30 = sub nsw i32 %24, %29
  %31 = trunc i32 %30 to i16
  %32 = sext i16 %31 to i32
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %19, %10
  %35 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %36 = call i64 @rs_ctrl_avail(%struct.rsocket* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %40 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @rs_connected, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %38, %34, %19
  %46 = phi i1 [ false, %34 ], [ false, %19 ], [ %44, %38 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %86

48:                                               ; preds = %1
  %49 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %50 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %53 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 1
  %56 = icmp sge i32 %51, %55
  br i1 %56, label %72, label %57

57:                                               ; preds = %48
  %58 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %59 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i16
  %62 = sext i16 %61 to i32
  %63 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %64 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i16
  %67 = sext i16 %66 to i32
  %68 = sub nsw i32 %62, %67
  %69 = trunc i32 %68 to i16
  %70 = sext i16 %69 to i32
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %57, %48
  %73 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %74 = call i64 @rs_2ctrl_avail(%struct.rsocket* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %78 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @rs_connected, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br label %83

83:                                               ; preds = %76, %72, %57
  %84 = phi i1 [ false, %72 ], [ false, %57 ], [ %82, %76 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %45
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @rs_ctrl_avail(%struct.rsocket*) #1

declare dso_local i64 @rs_2ctrl_avail(%struct.rsocket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
