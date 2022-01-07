; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librss/extr_librss.c_rss_config_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librss/extr_librss.c_rss_config_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rss_config = type { %struct.rss_config* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rss_config_free(%struct.rss_config* %0) #0 {
  %2 = alloca %struct.rss_config*, align 8
  store %struct.rss_config* %0, %struct.rss_config** %2, align 8
  %3 = load %struct.rss_config*, %struct.rss_config** %2, align 8
  %4 = icmp ne %struct.rss_config* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load %struct.rss_config*, %struct.rss_config** %2, align 8
  %7 = getelementptr inbounds %struct.rss_config, %struct.rss_config* %6, i32 0, i32 0
  %8 = load %struct.rss_config*, %struct.rss_config** %7, align 8
  %9 = icmp ne %struct.rss_config* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.rss_config*, %struct.rss_config** %2, align 8
  %12 = getelementptr inbounds %struct.rss_config, %struct.rss_config* %11, i32 0, i32 0
  %13 = load %struct.rss_config*, %struct.rss_config** %12, align 8
  %14 = call i32 @free(%struct.rss_config* %13)
  br label %15

15:                                               ; preds = %10, %5, %1
  %16 = load %struct.rss_config*, %struct.rss_config** %2, align 8
  %17 = icmp ne %struct.rss_config* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.rss_config*, %struct.rss_config** %2, align 8
  %20 = call i32 @free(%struct.rss_config* %19)
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

declare dso_local i32 @free(%struct.rss_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
