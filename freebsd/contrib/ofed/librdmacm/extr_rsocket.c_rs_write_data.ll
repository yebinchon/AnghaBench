; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_write_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.ibv_sge = type { i32 }

@RS_OPT_MSG_SEND = common dso_local global i32 0, align 4
@RS_SGL_SIZE = common dso_local global i64 0, align 8
@RS_OP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, %struct.ibv_sge*, i32, i64, i32)* @rs_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_write_data(%struct.rsocket* %0, %struct.ibv_sge* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.rsocket*, align 8
  %7 = alloca %struct.ibv_sge*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.rsocket* %0, %struct.rsocket** %6, align 8
  store %struct.ibv_sge* %1, %struct.ibv_sge** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %14 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %18 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %22 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RS_OPT_MSG_SEND, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %29 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %5
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %35 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 8
  %40 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %41 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %44 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %50 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %53 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %60 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %63 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %58
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %73 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %76 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %80, %71
  store i64 %81, i64* %79, align 8
  %82 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %83 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %86 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %32
  %93 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %94 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* @RS_SGL_SIZE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %101 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %92
  br label %103

103:                                              ; preds = %102, %32
  %104 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %105 = load %struct.ibv_sge*, %struct.ibv_sge** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @RS_OP_DATA, align 4
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @rs_msg_set(i32 %107, i64 %108)
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i64, i64* %12, align 8
  %113 = call i32 @rs_post_write_msg(%struct.rsocket* %104, %struct.ibv_sge* %105, i32 %106, i32 %109, i32 %110, i32 %111, i64 %112)
  ret i32 %113
}

declare dso_local i32 @rs_post_write_msg(%struct.rsocket*, %struct.ibv_sge*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @rs_msg_set(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
