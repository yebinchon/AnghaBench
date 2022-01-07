; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_indirect_table_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_indirect_table_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_rss }
%struct.ena_rss = type { i64, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_dev*)* @ena_com_indirect_table_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_com_indirect_table_destroy(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_rss*, align 8
  %4 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %5 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %6 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %5, i32 0, i32 1
  store %struct.ena_rss* %6, %struct.ena_rss** %3, align 8
  %7 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %8 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = shl i64 1, %9
  %11 = mul i64 %10, 4
  store i64 %11, i64* %4, align 8
  %12 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %13 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %18 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %22 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %25 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %28 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ENA_MEM_FREE_COHERENT(i32 %19, i64 %20, i32* %23, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %16, %1
  %32 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %33 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %35 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %40 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %43 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ENA_MEM_FREE(i32 %41, i32* %44)
  br label %46

46:                                               ; preds = %38, %31
  %47 = load %struct.ena_rss*, %struct.ena_rss** %3, align 8
  %48 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  ret void
}

declare dso_local i32 @ENA_MEM_FREE_COHERENT(i32, i64, i32*, i32, i32) #1

declare dso_local i32 @ENA_MEM_FREE(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
