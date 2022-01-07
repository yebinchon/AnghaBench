; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_set_nonblocking.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_set_nonblocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i64, %struct.ds_qp*, i32, %struct.TYPE_8__* }
%struct.ds_qp = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@rs_connected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, i32)* @rs_set_nonblocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_set_nonblocking(%struct.rsocket* %0, i32 %1) #0 {
  %3 = alloca %struct.rsocket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds_qp*, align 8
  %6 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %8 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SOCK_STREAM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %14 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %13, i32 0, i32 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %21 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %20, i32 0, i32 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @F_SETFL, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @fcntl(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %19, %12
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %35 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @rs_connected, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %41 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %40, i32 0, i32 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @F_SETFL, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @fcntl(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %39, %33, %30
  br label %96

51:                                               ; preds = %2
  %52 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %53 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @F_SETFL, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @fcntl(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %95, label %60

60:                                               ; preds = %51
  %61 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %62 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %61, i32 0, i32 2
  %63 = load %struct.ds_qp*, %struct.ds_qp** %62, align 8
  %64 = icmp ne %struct.ds_qp* %63, null
  br i1 %64, label %65, label %95

65:                                               ; preds = %60
  %66 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %67 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %66, i32 0, i32 2
  %68 = load %struct.ds_qp*, %struct.ds_qp** %67, align 8
  store %struct.ds_qp* %68, %struct.ds_qp** %5, align 8
  br label %69

69:                                               ; preds = %92, %65
  %70 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %71 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @F_SETFL, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @fcntl(i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %81 = call %struct.ds_qp* @ds_next_qp(%struct.ds_qp* %80)
  store %struct.ds_qp* %81, %struct.ds_qp** %5, align 8
  br label %82

82:                                               ; preds = %69
  %83 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %84 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %85 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %84, i32 0, i32 2
  %86 = load %struct.ds_qp*, %struct.ds_qp** %85, align 8
  %87 = icmp ne %struct.ds_qp* %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %88, %82
  %93 = phi i1 [ false, %82 ], [ %91, %88 ]
  br i1 %93, label %69, label %94

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %60, %51
  br label %96

96:                                               ; preds = %95, %50
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local %struct.ds_qp* @ds_next_qp(%struct.ds_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
