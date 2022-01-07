; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_init_interrupt_moderation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_init_interrupt_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32 }
%struct.ena_admin_get_feat_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENA_ADMIN_INTERRUPT_MODERATION = common dso_local global i32 0, align 4
@ENA_COM_UNSUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Feature %d isn't supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Failed to get interrupt moderation admin cmd. rc: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_init_interrupt_moderation(%struct.ena_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_admin_get_feat_resp, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  %7 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %8 = load i32, i32* @ENA_ADMIN_INTERRUPT_MODERATION, align 4
  %9 = call i32 @ena_com_get_feature(%struct.ena_com_dev* %7, %struct.ena_admin_get_feat_resp* %4, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ENA_COM_UNSUPPORTED, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @ENA_ADMIN_INTERRUPT_MODERATION, align 4
  %18 = call i32 @ena_trc_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %6, align 4
  br label %22

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ena_trc_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %24 = call i32 @ena_com_disable_adaptive_moderation(%struct.ena_com_dev* %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %1
  %27 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %28 = call i32 @ena_com_init_interrupt_moderation_table(%struct.ena_com_dev* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %42

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %4, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ena_com_update_intr_delay_resolution(%struct.ena_com_dev* %37, i32 %38)
  %40 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %41 = call i32 @ena_com_enable_adaptive_moderation(%struct.ena_com_dev* %40)
  store i32 0, i32* %2, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %44 = call i32 @ena_com_destroy_interrupt_moderation(%struct.ena_com_dev* %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %32, %22
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ena_com_get_feature(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32) #1

declare dso_local i32 @ena_trc_dbg(i8*, i32) #1

declare dso_local i32 @ena_trc_err(i8*, i32) #1

declare dso_local i32 @ena_com_disable_adaptive_moderation(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_init_interrupt_moderation_table(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_update_intr_delay_resolution(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_enable_adaptive_moderation(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_destroy_interrupt_moderation(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
