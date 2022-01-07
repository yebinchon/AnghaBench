; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_indirect_table_allocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_indirect_table_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_rss }
%struct.ena_rss = type { i32, i32*, i32, i32, i32 }
%struct.ena_admin_get_feat_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"indirect table size doesn't fit. requested size: %d while min is:%d and max %d\0A\00", align 1
@ENA_COM_INVAL = common dso_local global i32 0, align 4
@ENA_COM_NO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, i32)* @ena_com_indirect_table_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_indirect_table_allocate(%struct.ena_com_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_rss*, align 8
  %7 = alloca %struct.ena_admin_get_feat_resp, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %11 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %10, i32 0, i32 1
  store %struct.ena_rss* %11, %struct.ena_rss** %6, align 8
  %12 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %13 = load i32, i32* @ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG, align 4
  %14 = call i32 @ena_com_get_feature(%struct.ena_com_dev* %12, %struct.ena_admin_get_feat_resp* %7, i32 %13, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %127

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %27, %20
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 1, %35
  %37 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %7, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 1, %45
  %47 = call i32 @ena_trc_err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41, i32 %46)
  %48 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %48, i32* %3, align 4
  br label %127

49:                                               ; preds = %27
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 1, %51
  %53 = mul i64 %52, 4
  store i64 %53, i64* %8, align 8
  %54 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %55 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %59 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %62 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %65 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ENA_MEM_ALLOC_COHERENT(i32 %56, i64 %57, i32* %60, i32 %63, i32 %66)
  %68 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %69 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %49
  br label %123

77:                                               ; preds = %49
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = shl i64 1, %79
  %81 = mul i64 %80, 4
  store i64 %81, i64* %8, align 8
  %82 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %83 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @ENA_MEM_ALLOC(i32 %84, i64 %85)
  %87 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %88 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %90 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %77
  br label %102

98:                                               ; preds = %77
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %101 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %3, align 4
  br label %127

102:                                              ; preds = %97
  %103 = load i32, i32* %5, align 4
  %104 = zext i32 %103 to i64
  %105 = shl i64 1, %104
  %106 = mul i64 %105, 4
  store i64 %106, i64* %8, align 8
  %107 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %108 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %112 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %115 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %118 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ENA_MEM_FREE_COHERENT(i32 %109, i64 %110, i32* %113, i32 %116, i32 %119)
  %121 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %122 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %121, i32 0, i32 1
  store i32* null, i32** %122, align 8
  br label %123

123:                                              ; preds = %102, %76
  %124 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %125 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  %126 = load i32, i32* @ENA_COM_NO_MEM, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %98, %34, %18
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @ena_com_get_feature(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*, i32, i32, i32) #1

declare dso_local i32 @ENA_MEM_ALLOC_COHERENT(i32, i64, i32*, i32, i32) #1

declare dso_local i32 @ENA_MEM_ALLOC(i32, i64) #1

declare dso_local i32 @ENA_MEM_FREE_COHERENT(i32, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
