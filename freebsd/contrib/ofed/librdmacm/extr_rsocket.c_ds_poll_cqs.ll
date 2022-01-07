; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_poll_cqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_poll_cqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i32, %struct.ds_qp*, i64, i64, %struct.ds_smsg*, i64, %struct.ds_rmsg* }
%struct.ds_qp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ds_smsg = type { %struct.ds_smsg* }
%struct.ds_rmsg = type { i64, i64, %struct.ds_qp* }
%struct.ibv_wc = type { i64, i32, i64 }

@IBV_WC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsocket*)* @ds_poll_cqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_poll_cqs(%struct.rsocket* %0) #0 {
  %2 = alloca %struct.rsocket*, align 8
  %3 = alloca %struct.ds_qp*, align 8
  %4 = alloca %struct.ds_smsg*, align 8
  %5 = alloca %struct.ds_rmsg*, align 8
  %6 = alloca %struct.ibv_wc, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %2, align 8
  %9 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %10 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %9, i32 0, i32 2
  %11 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  store %struct.ds_qp* %11, %struct.ds_qp** %3, align 8
  %12 = icmp ne %struct.ds_qp* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %144

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %141, %14
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %134, %15
  %17 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %18 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ibv_poll_cq(i32 %21, i32 1, %struct.ibv_wc* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %27 = call %struct.ds_qp* @ds_next_qp(%struct.ds_qp* %26)
  store %struct.ds_qp* %27, %struct.ds_qp** %3, align 8
  br label %134

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @rs_wr_is_recv(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %94

33:                                               ; preds = %28
  %34 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %35 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IBV_WC_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %38
  %44 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %45 = call i64 @ds_valid_recv(%struct.ds_qp* %44, %struct.ibv_wc* %6)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %86

47:                                               ; preds = %43
  %48 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %49 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %53 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %52, i32 0, i32 7
  %54 = load %struct.ds_rmsg*, %struct.ds_rmsg** %53, align 8
  %55 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %56 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.ds_rmsg, %struct.ds_rmsg* %54, i64 %57
  store %struct.ds_rmsg* %58, %struct.ds_rmsg** %5, align 8
  %59 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %60 = load %struct.ds_rmsg*, %struct.ds_rmsg** %5, align 8
  %61 = getelementptr inbounds %struct.ds_rmsg, %struct.ds_rmsg* %60, i32 0, i32 2
  store %struct.ds_qp* %59, %struct.ds_qp** %61, align 8
  %62 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %6, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @rs_wr_data(i32 %63)
  %65 = load %struct.ds_rmsg*, %struct.ds_rmsg** %5, align 8
  %66 = getelementptr inbounds %struct.ds_rmsg, %struct.ds_rmsg* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %6, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %68, 4
  %70 = load %struct.ds_rmsg*, %struct.ds_rmsg** %5, align 8
  %71 = getelementptr inbounds %struct.ds_rmsg, %struct.ds_rmsg* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %73 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %77 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = icmp eq i64 %75, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %47
  %83 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %84 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %47
  br label %93

86:                                               ; preds = %43, %38, %33
  %87 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %88 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %89 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @rs_wr_data(i32 %90)
  %92 = call i32 @ds_post_recv(%struct.rsocket* %87, %struct.ds_qp* %88, i64 %91)
  br label %93

93:                                               ; preds = %86, %85
  br label %115

94:                                               ; preds = %28
  %95 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %96 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %6, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @rs_wr_data(i32 %99)
  %101 = add nsw i64 %97, %100
  %102 = inttoptr i64 %101 to %struct.ds_smsg*
  store %struct.ds_smsg* %102, %struct.ds_smsg** %4, align 8
  %103 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %104 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %103, i32 0, i32 5
  %105 = load %struct.ds_smsg*, %struct.ds_smsg** %104, align 8
  %106 = load %struct.ds_smsg*, %struct.ds_smsg** %4, align 8
  %107 = getelementptr inbounds %struct.ds_smsg, %struct.ds_smsg* %106, i32 0, i32 0
  store %struct.ds_smsg* %105, %struct.ds_smsg** %107, align 8
  %108 = load %struct.ds_smsg*, %struct.ds_smsg** %4, align 8
  %109 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %110 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %109, i32 0, i32 5
  store %struct.ds_smsg* %108, %struct.ds_smsg** %110, align 8
  %111 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %112 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %94, %93
  %116 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %117 = call %struct.ds_qp* @ds_next_qp(%struct.ds_qp* %116)
  store %struct.ds_qp* %117, %struct.ds_qp** %3, align 8
  %118 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %119 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %115
  %123 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %124 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %129 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %130 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %129, i32 0, i32 2
  store %struct.ds_qp* %128, %struct.ds_qp** %130, align 8
  br label %144

131:                                              ; preds = %122, %115
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %131, %25
  %135 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %136 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %137 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %136, i32 0, i32 2
  %138 = load %struct.ds_qp*, %struct.ds_qp** %137, align 8
  %139 = icmp ne %struct.ds_qp* %135, %138
  br i1 %139, label %16, label %140

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %15, label %144

144:                                              ; preds = %13, %127, %141
  ret void
}

declare dso_local i32 @ibv_poll_cq(i32, i32, %struct.ibv_wc*) #1

declare dso_local %struct.ds_qp* @ds_next_qp(%struct.ds_qp*) #1

declare dso_local i64 @rs_wr_is_recv(i32) #1

declare dso_local i64 @ds_valid_recv(%struct.ds_qp*, %struct.ibv_wc*) #1

declare dso_local i64 @rs_wr_data(i32) #1

declare dso_local i32 @ds_post_recv(%struct.rsocket*, %struct.ds_qp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
