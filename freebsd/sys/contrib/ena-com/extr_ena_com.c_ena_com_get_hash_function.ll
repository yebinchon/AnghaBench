; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_hash_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_hash_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_rss }
%struct.ena_rss = type { i32, i32, %struct.ena_admin_feature_rss_flow_hash_control* }
%struct.ena_admin_feature_rss_flow_hash_control = type { i64, i32 }
%struct.ena_admin_get_feat_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENA_ADMIN_RSS_HASH_FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_get_hash_function(%struct.ena_com_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ena_rss*, align 8
  %9 = alloca %struct.ena_admin_get_feat_resp, align 4
  %10 = alloca %struct.ena_admin_feature_rss_flow_hash_control*, align 8
  %11 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %13 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %12, i32 0, i32 0
  store %struct.ena_rss* %13, %struct.ena_rss** %8, align 8
  %14 = load %struct.ena_rss*, %struct.ena_rss** %8, align 8
  %15 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %14, i32 0, i32 2
  %16 = load %struct.ena_admin_feature_rss_flow_hash_control*, %struct.ena_admin_feature_rss_flow_hash_control** %15, align 8
  store %struct.ena_admin_feature_rss_flow_hash_control* %16, %struct.ena_admin_feature_rss_flow_hash_control** %10, align 8
  %17 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %18 = load i32, i32* @ENA_ADMIN_RSS_HASH_FUNCTION, align 4
  %19 = load %struct.ena_rss*, %struct.ena_rss** %8, align 8
  %20 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ena_com_get_feature_ex(%struct.ena_com_dev* %17, %struct.ena_admin_get_feat_resp* %9, i32 %18, i32 %21, i32 16, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %56

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %9, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ena_rss*, %struct.ena_rss** %8, align 8
  %34 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.ena_rss*, %struct.ena_rss** %8, align 8
  %39 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %28
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.ena_admin_feature_rss_flow_hash_control*, %struct.ena_admin_feature_rss_flow_hash_control** %10, align 8
  %48 = getelementptr inbounds %struct.ena_admin_feature_rss_flow_hash_control, %struct.ena_admin_feature_rss_flow_hash_control* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ena_admin_feature_rss_flow_hash_control*, %struct.ena_admin_feature_rss_flow_hash_control** %10, align 8
  %51 = getelementptr inbounds %struct.ena_admin_feature_rss_flow_hash_control, %struct.ena_admin_feature_rss_flow_hash_control* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = shl i64 %52, 2
  %54 = call i32 @memcpy(i32* %46, i32 %49, i64 %53)
  br label %55

55:                                               ; preds = %45, %42
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ena_com_get_feature_ex(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
