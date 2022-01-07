; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rsocket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rsocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_IB = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsocket(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsocket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AF_INET, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AF_INET6, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AF_IB, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %52, label %22

22:                                               ; preds = %18, %14, %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SOCK_DGRAM, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %52, label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IPPROTO_TCP, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %37, %34, %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SOCK_DGRAM, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @IPPROTO_UDP, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %37, %26, %18
  %53 = load i32, i32* @ENOTSUP, align 4
  %54 = call i32 @ERR(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %119

55:                                               ; preds = %48, %45, %41
  %56 = call i32 (...) @rs_configure()
  %57 = load i32, i32* %6, align 4
  %58 = call %struct.rsocket* @rs_alloc(i32* null, i32 %57)
  store %struct.rsocket* %58, %struct.rsocket** %8, align 8
  %59 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %60 = icmp ne %struct.rsocket* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = call i32 @ERR(i32 %62)
  store i32 %63, i32* %4, align 4
  br label %119

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @SOCK_STREAM, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  %69 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %70 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %69, i32 0, i32 2
  %71 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %72 = load i32, i32* @RDMA_PS_TCP, align 4
  %73 = call i32 @rdma_create_id(i32* null, %struct.TYPE_10__** %70, %struct.rsocket* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %115

77:                                               ; preds = %68
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %80 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 8
  %86 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %87 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  br label %104

93:                                               ; preds = %64
  %94 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @ds_init(%struct.rsocket* %94, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %115

100:                                              ; preds = %93
  %101 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %102 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %100, %77
  %105 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @rs_insert(%struct.rsocket* %105, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %115

111:                                              ; preds = %104
  %112 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %113 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %4, align 4
  br label %119

115:                                              ; preds = %110, %99, %76
  %116 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %117 = call i32 @rs_free(%struct.rsocket* %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %111, %61, %52
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rs_configure(...) #1

declare dso_local %struct.rsocket* @rs_alloc(i32*, i32) #1

declare dso_local i32 @rdma_create_id(i32*, %struct.TYPE_10__**, %struct.rsocket*, i32) #1

declare dso_local i32 @ds_init(%struct.rsocket*, i32) #1

declare dso_local i32 @rs_insert(%struct.rsocket*, i32) #1

declare dso_local i32 @rs_free(%struct.rsocket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
