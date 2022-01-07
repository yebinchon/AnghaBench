; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_fill_hash_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_fill_hash_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_rss }
%struct.ena_rss = type { %struct.ena_admin_feature_rss_hash_control* }
%struct.ena_admin_feature_rss_hash_control = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENA_ADMIN_RSS_PROTO_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid proto num (%u)\0A\00", align 1
@ENA_COM_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"proto %d doesn't support the required fields %x. supports only: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_fill_hash_ctrl(%struct.ena_com_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ena_rss*, align 8
  %9 = alloca %struct.ena_admin_feature_rss_hash_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %13 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %12, i32 0, i32 0
  store %struct.ena_rss* %13, %struct.ena_rss** %8, align 8
  %14 = load %struct.ena_rss*, %struct.ena_rss** %8, align 8
  %15 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %14, i32 0, i32 0
  %16 = load %struct.ena_admin_feature_rss_hash_control*, %struct.ena_admin_feature_rss_hash_control** %15, align 8
  store %struct.ena_admin_feature_rss_hash_control* %16, %struct.ena_admin_feature_rss_hash_control** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ENA_ADMIN_RSS_PROTO_NUM, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, i32, ...) @ena_trc_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %70

24:                                               ; preds = %3
  %25 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ena_com_get_hash_ctrl(%struct.ena_com_dev* %25, i32 %26, i32* null)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %70

33:                                               ; preds = %24
  %34 = load %struct.ena_admin_feature_rss_hash_control*, %struct.ena_admin_feature_rss_hash_control** %9, align 8
  %35 = getelementptr inbounds %struct.ena_admin_feature_rss_hash_control, %struct.ena_admin_feature_rss_hash_control* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i8*, i32, ...) @ena_trc_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %33
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.ena_admin_feature_rss_hash_control*, %struct.ena_admin_feature_rss_hash_control** %9, align 8
  %55 = getelementptr inbounds %struct.ena_admin_feature_rss_hash_control, %struct.ena_admin_feature_rss_hash_control* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %53, i32* %60, align 4
  %61 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %62 = call i32 @ena_com_set_hash_ctrl(%struct.ena_com_dev* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %68 = call i32 @ena_com_get_hash_ctrl(%struct.ena_com_dev* %67, i32 0, i32* null)
  br label %69

69:                                               ; preds = %66, %52
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %31, %20
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ena_trc_err(i8*, i32, ...) #1

declare dso_local i32 @ena_com_get_hash_ctrl(%struct.ena_com_dev*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_set_hash_ctrl(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
