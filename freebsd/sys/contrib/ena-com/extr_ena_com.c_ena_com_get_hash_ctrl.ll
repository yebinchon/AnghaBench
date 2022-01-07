; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_hash_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_hash_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_rss }
%struct.ena_rss = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ena_admin_get_feat_resp = type { i32 }

@ENA_ADMIN_RSS_HASH_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_get_hash_ctrl(%struct.ena_com_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ena_rss*, align 8
  %9 = alloca %struct.ena_admin_get_feat_resp, align 4
  %10 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %11, i32 0, i32 0
  store %struct.ena_rss* %12, %struct.ena_rss** %8, align 8
  %13 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %14 = load i32, i32* @ENA_ADMIN_RSS_HASH_INPUT, align 4
  %15 = load %struct.ena_rss*, %struct.ena_rss** %8, align 8
  %16 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ena_com_get_feature_ex(%struct.ena_com_dev* %13, %struct.ena_admin_get_feat_resp* %9, i32 %14, i32 %17, i32 8, i32 0)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %40

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load %struct.ena_rss*, %struct.ena_rss** %8, align 8
  %29 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %27, %24
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @ena_com_get_feature_ex(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
