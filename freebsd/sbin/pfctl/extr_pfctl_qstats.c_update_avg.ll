; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_qstats.c_update_avg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_qstats.c_update_avg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_altq_node = type { %struct.TYPE_16__, %struct.queue_stats }
%struct.TYPE_16__ = type { i64, i32 }
%struct.queue_stats = type { i32, i64, i64, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }

@AVGN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_avg(%struct.pf_altq_node* %0) #0 {
  %2 = alloca %struct.pf_altq_node*, align 8
  %3 = alloca %struct.queue_stats*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pf_altq_node* %0, %struct.pf_altq_node** %2, align 8
  %7 = load %struct.pf_altq_node*, %struct.pf_altq_node** %2, align 8
  %8 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.pf_altq_node*, %struct.pf_altq_node** %2, align 8
  %14 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 131
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %176

19:                                               ; preds = %12, %1
  %20 = load %struct.pf_altq_node*, %struct.pf_altq_node** %2, align 8
  %21 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %20, i32 0, i32 1
  store %struct.queue_stats* %21, %struct.queue_stats** %3, align 8
  %22 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %23 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.pf_altq_node*, %struct.pf_altq_node** %2, align 8
  %26 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %94 [
    i32 132, label %29
    i32 128, label %42
    i32 129, label %55
    i32 130, label %68
    i32 131, label %81
  ]

29:                                               ; preds = %19
  %30 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %31 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %4, align 8
  %36 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %37 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %5, align 8
  br label %95

42:                                               ; preds = %19
  %43 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %44 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %4, align 8
  %49 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %50 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %5, align 8
  br label %95

55:                                               ; preds = %19
  %56 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %57 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %4, align 8
  %62 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %63 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %5, align 8
  br label %95

68:                                               ; preds = %19
  %69 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %70 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %4, align 8
  %75 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %76 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %5, align 8
  br label %95

81:                                               ; preds = %19
  %82 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %83 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %4, align 8
  %88 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %89 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %5, align 8
  br label %95

94:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %95

95:                                               ; preds = %94, %81, %68, %55, %42, %29
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load i64, i64* %4, align 8
  %100 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %101 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %104 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %106 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  br label %176

109:                                              ; preds = %95
  %110 = load i64, i64* %4, align 8
  %111 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %112 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sge i64 %110, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %109
  %116 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %117 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 %119, 1
  %121 = mul nsw i32 %118, %120
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %4, align 8
  %124 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %125 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %123, %126
  %128 = add nsw i64 %122, %127
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = sdiv i64 %128, %130
  %132 = trunc i64 %131 to i32
  %133 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %134 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %115, %109
  %136 = load i64, i64* %5, align 8
  %137 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %138 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp sge i64 %136, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %135
  %142 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %143 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %6, align 4
  %146 = sub nsw i32 %145, 1
  %147 = mul nsw i32 %144, %146
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %5, align 8
  %150 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %151 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %149, %152
  %154 = add nsw i64 %148, %153
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = sdiv i64 %154, %156
  %158 = trunc i64 %157 to i32
  %159 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %160 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %141, %135
  %162 = load i64, i64* %4, align 8
  %163 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %164 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  %165 = load i64, i64* %5, align 8
  %166 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %167 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @AVGN_MAX, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %161
  %172 = load %struct.queue_stats*, %struct.queue_stats** %3, align 8
  %173 = getelementptr inbounds %struct.queue_stats, %struct.queue_stats* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %18, %98, %171, %161
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
