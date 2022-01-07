; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_fill_hash_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_fill_hash_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_rss }
%struct.ena_rss = type { i32, i8*, i32, %struct.ena_admin_feature_rss_flow_hash_control* }
%struct.ena_admin_feature_rss_flow_hash_control = type { i32, i32 }
%struct.ena_admin_get_feat_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENA_COM_INVAL = common dso_local global i32 0, align 4
@ENA_ADMIN_RSS_HASH_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Flow hash function %d isn't supported\0A\00", align 1
@ENA_COM_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"key len (%hu) is bigger than the max supported (%zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid hash function (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_fill_hash_function(%struct.ena_com_dev* %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ena_com_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ena_rss*, align 8
  %13 = alloca %struct.ena_admin_get_feat_resp, align 4
  %14 = alloca %struct.ena_admin_feature_rss_flow_hash_control*, align 8
  %15 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %17 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %16, i32 0, i32 0
  store %struct.ena_rss* %17, %struct.ena_rss** %12, align 8
  %18 = load %struct.ena_rss*, %struct.ena_rss** %12, align 8
  %19 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %18, i32 0, i32 3
  %20 = load %struct.ena_admin_feature_rss_flow_hash_control*, %struct.ena_admin_feature_rss_flow_hash_control** %19, align 8
  store %struct.ena_admin_feature_rss_flow_hash_control* %20, %struct.ena_admin_feature_rss_flow_hash_control** %14, align 8
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 3
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %26, i32* %6, align 4
  br label %98

27:                                               ; preds = %5
  %28 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %29 = load i32, i32* @ENA_ADMIN_RSS_HASH_FUNCTION, align 4
  %30 = load %struct.ena_rss*, %struct.ena_rss** %12, align 8
  %31 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ena_com_get_feature_ex(%struct.ena_com_dev* %28, %struct.ena_admin_get_feat_resp* %13, i32 %29, i32 %32, i32 8, i32 0)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %6, align 4
  br label %98

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 1, %40
  %42 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %13, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i8*, i32, ...) @ena_trc_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENA_COM_UNSUPPORTED, align 4
  store i32 %51, i32* %6, align 4
  br label %98

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %80 [
    i32 128, label %54
    i32 129, label %76
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %56, 4
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i8*, i32, ...) @ena_trc_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %59, i64 4)
  %61 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %61, i32* %6, align 4
  br label %98

62:                                               ; preds = %54
  %63 = load %struct.ena_admin_feature_rss_flow_hash_control*, %struct.ena_admin_feature_rss_flow_hash_control** %14, align 8
  %64 = getelementptr inbounds %struct.ena_admin_feature_rss_flow_hash_control, %struct.ena_admin_feature_rss_flow_hash_control* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @memcpy(i32 %65, i32* %66, i32 %67)
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.ena_rss*, %struct.ena_rss** %12, align 8
  %71 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %10, align 4
  %73 = ashr i32 %72, 2
  %74 = load %struct.ena_admin_feature_rss_flow_hash_control*, %struct.ena_admin_feature_rss_flow_hash_control** %14, align 8
  %75 = getelementptr inbounds %struct.ena_admin_feature_rss_flow_hash_control, %struct.ena_admin_feature_rss_flow_hash_control* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %84

76:                                               ; preds = %52
  %77 = load i8*, i8** %11, align 8
  %78 = load %struct.ena_rss*, %struct.ena_rss** %12, align 8
  %79 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %84

80:                                               ; preds = %52
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (i8*, i32, ...) @ena_trc_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %83, i32* %6, align 4
  br label %98

84:                                               ; preds = %76, %62
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.ena_rss*, %struct.ena_rss** %12, align 8
  %87 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %89 = call i32 @ena_com_set_hash_function(%struct.ena_com_dev* %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %95 = call i32 @ena_com_get_hash_function(%struct.ena_com_dev* %94, i32* null, i32* null)
  br label %96

96:                                               ; preds = %93, %84
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %80, %58, %48, %37, %25
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_get_feature_ex(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32, i32, i32) #1

declare dso_local i32 @ena_trc_err(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ena_com_set_hash_function(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_get_hash_function(%struct.ena_com_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
