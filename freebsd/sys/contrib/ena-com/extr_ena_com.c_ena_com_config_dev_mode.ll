; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_config_dev_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_config_dev_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ena_admin_feature_llq_desc = type { i32 }
%struct.ena_llq_configurations = type { i32 }

@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"the size of the LLQ entry is smaller than needed\0A\00", align 1
@ENA_COM_INVAL = common dso_local global i32 0, align 4
@ENA_ADMIN_PLACEMENT_POLICY_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_config_dev_mode(%struct.ena_com_dev* %0, %struct.ena_admin_feature_llq_desc* %1, %struct.ena_llq_configurations* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca %struct.ena_admin_feature_llq_desc*, align 8
  %7 = alloca %struct.ena_llq_configurations*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store %struct.ena_admin_feature_llq_desc* %1, %struct.ena_admin_feature_llq_desc** %6, align 8
  store %struct.ena_llq_configurations* %2, %struct.ena_llq_configurations** %7, align 8
  %10 = load %struct.ena_admin_feature_llq_desc*, %struct.ena_admin_feature_llq_desc** %6, align 8
  %11 = getelementptr inbounds %struct.ena_admin_feature_llq_desc, %struct.ena_admin_feature_llq_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 4
  %16 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %17 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %20 = load %struct.ena_admin_feature_llq_desc*, %struct.ena_admin_feature_llq_desc** %6, align 8
  %21 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %22 = call i32 @ena_com_config_llq_info(%struct.ena_com_dev* %19, %struct.ena_admin_feature_llq_desc* %20, %struct.ena_llq_configurations* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %18
  %28 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %29 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %32 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %42 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %27
  %51 = call i32 @ena_trc_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %52, i32* %4, align 4
  br label %57

53:                                               ; preds = %27
  %54 = load i32, i32* @ENA_ADMIN_PLACEMENT_POLICY_DEV, align 4
  %55 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %56 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %50, %25, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ena_com_config_llq_info(%struct.ena_com_dev*, %struct.ena_admin_feature_llq_desc*, %struct.ena_llq_configurations*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
