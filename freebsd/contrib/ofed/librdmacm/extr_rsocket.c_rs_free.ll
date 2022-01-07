; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, %struct.rsocket*, i64, %struct.rsocket*, i64, %struct.rsocket*, i64, %struct.rsocket* }
%struct.TYPE_3__ = type { i32, i64 }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsocket*)* @rs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_free(%struct.rsocket* %0) #0 {
  %2 = alloca %struct.rsocket*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %2, align 8
  %3 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %4 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SOCK_DGRAM, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %10 = call i32 @ds_free(%struct.rsocket* %9)
  br label %140

11:                                               ; preds = %1
  %12 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %13 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %12, i32 0, i32 15
  %14 = load %struct.rsocket*, %struct.rsocket** %13, align 8
  %15 = icmp ne %struct.rsocket* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %18 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %17, i32 0, i32 15
  %19 = load %struct.rsocket*, %struct.rsocket** %18, align 8
  %20 = call i32 @free(%struct.rsocket* %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %23 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %22, i32 0, i32 13
  %24 = load %struct.rsocket*, %struct.rsocket** %23, align 8
  %25 = icmp ne %struct.rsocket* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %28 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %27, i32 0, i32 14
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %33 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %32, i32 0, i32 14
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @rdma_dereg_mr(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %38 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %37, i32 0, i32 13
  %39 = load %struct.rsocket*, %struct.rsocket** %38, align 8
  %40 = call i32 @free(%struct.rsocket* %39)
  br label %41

41:                                               ; preds = %36, %21
  %42 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %43 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %42, i32 0, i32 11
  %44 = load %struct.rsocket*, %struct.rsocket** %43, align 8
  %45 = icmp ne %struct.rsocket* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %48 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %47, i32 0, i32 12
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %53 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %52, i32 0, i32 12
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @rdma_dereg_mr(i64 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %58 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %57, i32 0, i32 11
  %59 = load %struct.rsocket*, %struct.rsocket** %58, align 8
  %60 = call i32 @free(%struct.rsocket* %59)
  br label %61

61:                                               ; preds = %56, %41
  %62 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %63 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %62, i32 0, i32 9
  %64 = load %struct.rsocket*, %struct.rsocket** %63, align 8
  %65 = icmp ne %struct.rsocket* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %68 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %67, i32 0, i32 10
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %73 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %72, i32 0, i32 10
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @rdma_dereg_mr(i64 %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %78 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %77, i32 0, i32 9
  %79 = load %struct.rsocket*, %struct.rsocket** %78, align 8
  %80 = call i32 @free(%struct.rsocket* %79)
  br label %81

81:                                               ; preds = %76, %61
  %82 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %83 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %82, i32 0, i32 7
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = icmp ne %struct.TYPE_3__* %84, null
  br i1 %85, label %86, label %114

86:                                               ; preds = %81
  %87 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %88 = call i32 @rs_free_iomappings(%struct.rsocket* %87)
  %89 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %90 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %89, i32 0, i32 7
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %86
  %96 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %97 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %96, i32 0, i32 7
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %102 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ibv_ack_cq_events(i32 %100, i32 %103)
  %105 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %106 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %105, i32 0, i32 7
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = call i32 @rdma_destroy_qp(%struct.TYPE_3__* %107)
  br label %109

109:                                              ; preds = %95, %86
  %110 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %111 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %110, i32 0, i32 7
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = call i32 @rdma_destroy_id(%struct.TYPE_3__* %112)
  br label %114

114:                                              ; preds = %109, %81
  %115 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %116 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %121 = call i32 @rs_remove(%struct.rsocket* %120)
  br label %122

122:                                              ; preds = %119, %114
  %123 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %124 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %123, i32 0, i32 6
  %125 = call i32 @fastlock_destroy(i32* %124)
  %126 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %127 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %126, i32 0, i32 5
  %128 = call i32 @fastlock_destroy(i32* %127)
  %129 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %130 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %129, i32 0, i32 4
  %131 = call i32 @fastlock_destroy(i32* %130)
  %132 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %133 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %132, i32 0, i32 3
  %134 = call i32 @fastlock_destroy(i32* %133)
  %135 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %136 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %135, i32 0, i32 2
  %137 = call i32 @fastlock_destroy(i32* %136)
  %138 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %139 = call i32 @free(%struct.rsocket* %138)
  br label %140

140:                                              ; preds = %122, %8
  ret void
}

declare dso_local i32 @ds_free(%struct.rsocket*) #1

declare dso_local i32 @free(%struct.rsocket*) #1

declare dso_local i32 @rdma_dereg_mr(i64) #1

declare dso_local i32 @rs_free_iomappings(%struct.rsocket*) #1

declare dso_local i32 @ibv_ack_cq_events(i32, i32) #1

declare dso_local i32 @rdma_destroy_qp(%struct.TYPE_3__*) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_3__*) #1

declare dso_local i32 @rs_remove(%struct.rsocket*) #1

declare dso_local i32 @fastlock_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
