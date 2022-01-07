; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_del_strbytelist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_del_strbytelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_strbytelist = type { %struct.config_strbytelist*, %struct.config_strbytelist*, %struct.config_strbytelist* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_del_strbytelist(%struct.config_strbytelist* %0) #0 {
  %2 = alloca %struct.config_strbytelist*, align 8
  %3 = alloca %struct.config_strbytelist*, align 8
  store %struct.config_strbytelist* %0, %struct.config_strbytelist** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.config_strbytelist*, %struct.config_strbytelist** %2, align 8
  %6 = icmp ne %struct.config_strbytelist* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.config_strbytelist*, %struct.config_strbytelist** %2, align 8
  %9 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %8, i32 0, i32 2
  %10 = load %struct.config_strbytelist*, %struct.config_strbytelist** %9, align 8
  store %struct.config_strbytelist* %10, %struct.config_strbytelist** %3, align 8
  %11 = load %struct.config_strbytelist*, %struct.config_strbytelist** %2, align 8
  %12 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %11, i32 0, i32 1
  %13 = load %struct.config_strbytelist*, %struct.config_strbytelist** %12, align 8
  %14 = call i32 @free(%struct.config_strbytelist* %13)
  %15 = load %struct.config_strbytelist*, %struct.config_strbytelist** %2, align 8
  %16 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %15, i32 0, i32 0
  %17 = load %struct.config_strbytelist*, %struct.config_strbytelist** %16, align 8
  %18 = call i32 @free(%struct.config_strbytelist* %17)
  %19 = load %struct.config_strbytelist*, %struct.config_strbytelist** %2, align 8
  %20 = call i32 @free(%struct.config_strbytelist* %19)
  %21 = load %struct.config_strbytelist*, %struct.config_strbytelist** %3, align 8
  store %struct.config_strbytelist* %21, %struct.config_strbytelist** %2, align 8
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.config_strbytelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
