; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_delstrlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_delstrlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_strlist = type { %struct.config_strlist*, %struct.config_strlist* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_delstrlist(%struct.config_strlist* %0) #0 {
  %2 = alloca %struct.config_strlist*, align 8
  %3 = alloca %struct.config_strlist*, align 8
  store %struct.config_strlist* %0, %struct.config_strlist** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.config_strlist*, %struct.config_strlist** %2, align 8
  %6 = icmp ne %struct.config_strlist* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.config_strlist*, %struct.config_strlist** %2, align 8
  %9 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %8, i32 0, i32 1
  %10 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  store %struct.config_strlist* %10, %struct.config_strlist** %3, align 8
  %11 = load %struct.config_strlist*, %struct.config_strlist** %2, align 8
  %12 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %11, i32 0, i32 0
  %13 = load %struct.config_strlist*, %struct.config_strlist** %12, align 8
  %14 = call i32 @free(%struct.config_strlist* %13)
  %15 = load %struct.config_strlist*, %struct.config_strlist** %2, align 8
  %16 = call i32 @free(%struct.config_strlist* %15)
  %17 = load %struct.config_strlist*, %struct.config_strlist** %3, align 8
  store %struct.config_strlist* %17, %struct.config_strlist** %2, align 8
  br label %4

18:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.config_strlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
