; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_extra_properties_strings_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_extra_properties_strings_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_extra_properties_strings }
%struct.ena_extra_properties_strings = type { i32, i32, i32, i32 }
%struct.ena_admin_get_feat_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENA_ADMIN_EXTRA_PROPERTIES_COUNT = common dso_local global i32 0, align 4
@ENA_ADMIN_EXTRA_PROPERTIES_STRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to allocate extra properties strings\0A\00", align 1
@ENA_ADMIN_EXTRA_PROPERTIES_STRINGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to get extra properties strings\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_extra_properties_strings_init(%struct.ena_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_admin_get_feat_resp, align 4
  %5 = alloca %struct.ena_extra_properties_strings*, align 8
  %6 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  %7 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %7, i32 0, i32 1
  store %struct.ena_extra_properties_strings* %8, %struct.ena_extra_properties_strings** %5, align 8
  %9 = load i32, i32* @ENA_ADMIN_EXTRA_PROPERTIES_COUNT, align 4
  %10 = load i32, i32* @ENA_ADMIN_EXTRA_PROPERTIES_STRING_LEN, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %5, align 8
  %13 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %5, align 8
  %18 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %5, align 8
  %21 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %5, align 8
  %24 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %5, align 8
  %27 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ENA_MEM_ALLOC_COHERENT(i32 %16, i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %5, align 8
  %31 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = call i32 @ena_trc_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %62

40:                                               ; preds = %1
  %41 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %42 = load i32, i32* @ENA_ADMIN_EXTRA_PROPERTIES_STRINGS, align 4
  %43 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %5, align 8
  %44 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %5, align 8
  %47 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ena_com_get_feature_ex(%struct.ena_com_dev* %41, %struct.ena_admin_get_feat_resp* %4, i32 %42, i32 %45, i32 %48, i32 0)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = call i32 @ena_trc_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %59

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %4, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %2, align 4
  br label %62

59:                                               ; preds = %52
  %60 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %61 = call i32 @ena_com_delete_extra_properties_strings(%struct.ena_com_dev* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %54, %38
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @ENA_MEM_ALLOC_COHERENT(i32, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*) #1

declare dso_local i64 @ena_com_get_feature_ex(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32, i32, i32) #1

declare dso_local i32 @ena_trc_dbg(i8*) #1

declare dso_local i32 @ena_com_delete_extra_properties_strings(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
