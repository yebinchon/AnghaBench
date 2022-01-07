; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_offload_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_offload_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32 }
%struct.ena_admin_feature_offload_desc = type { i32 }
%struct.ena_admin_get_feat_resp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENA_ADMIN_STATELESS_OFFLOAD_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to get offload capabilities %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_get_offload_settings(%struct.ena_com_dev* %0, %struct.ena_admin_feature_offload_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ena_admin_feature_offload_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ena_admin_get_feat_resp, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store %struct.ena_admin_feature_offload_desc* %1, %struct.ena_admin_feature_offload_desc** %5, align 8
  %8 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %9 = load i32, i32* @ENA_ADMIN_STATELESS_OFFLOAD_CONFIG, align 4
  %10 = call i32 @ena_com_get_feature(%struct.ena_com_dev* %8, %struct.ena_admin_get_feat_resp* %7, i32 %9, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ena_trc_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.ena_admin_feature_offload_desc*, %struct.ena_admin_feature_offload_desc** %5, align 8
  %20 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %7, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @memcpy(%struct.ena_admin_feature_offload_desc* %19, i32* %21, i32 4)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @ena_com_get_feature(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*, i32) #1

declare dso_local i32 @memcpy(%struct.ena_admin_feature_offload_desc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
