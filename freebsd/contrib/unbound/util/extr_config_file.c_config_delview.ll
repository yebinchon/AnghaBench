; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_delview.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_delview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_view = type { i32, i32, i32, %struct.config_view* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_delview(%struct.config_view* %0) #0 {
  %2 = alloca %struct.config_view*, align 8
  store %struct.config_view* %0, %struct.config_view** %2, align 8
  %3 = load %struct.config_view*, %struct.config_view** %2, align 8
  %4 = icmp ne %struct.config_view* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load %struct.config_view*, %struct.config_view** %2, align 8
  %8 = getelementptr inbounds %struct.config_view, %struct.config_view* %7, i32 0, i32 3
  %9 = load %struct.config_view*, %struct.config_view** %8, align 8
  %10 = call i32 @free(%struct.config_view* %9)
  %11 = load %struct.config_view*, %struct.config_view** %2, align 8
  %12 = getelementptr inbounds %struct.config_view, %struct.config_view* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @config_deldblstrlist(i32 %13)
  %15 = load %struct.config_view*, %struct.config_view** %2, align 8
  %16 = getelementptr inbounds %struct.config_view, %struct.config_view* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @config_delstrlist(i32 %17)
  %19 = load %struct.config_view*, %struct.config_view** %2, align 8
  %20 = getelementptr inbounds %struct.config_view, %struct.config_view* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @config_delstrlist(i32 %21)
  %23 = load %struct.config_view*, %struct.config_view** %2, align 8
  %24 = call i32 @free(%struct.config_view* %23)
  br label %25

25:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @free(%struct.config_view*) #1

declare dso_local i32 @config_deldblstrlist(i32) #1

declare dso_local i32 @config_delstrlist(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
