; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_callback_list_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_callback_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serviced_query = type { %struct.service_callback* }
%struct.service_callback = type { i8*, %struct.service_callback* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serviced_query*, i8*)* @callback_list_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callback_list_remove(%struct.serviced_query* %0, i8* %1) #0 {
  %3 = alloca %struct.serviced_query*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.service_callback**, align 8
  %6 = alloca %struct.service_callback*, align 8
  store %struct.serviced_query* %0, %struct.serviced_query** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %8 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %7, i32 0, i32 0
  store %struct.service_callback** %8, %struct.service_callback*** %5, align 8
  br label %9

9:                                                ; preds = %29, %2
  %10 = load %struct.service_callback**, %struct.service_callback*** %5, align 8
  %11 = load %struct.service_callback*, %struct.service_callback** %10, align 8
  %12 = icmp ne %struct.service_callback* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.service_callback**, %struct.service_callback*** %5, align 8
  %15 = load %struct.service_callback*, %struct.service_callback** %14, align 8
  %16 = getelementptr inbounds %struct.service_callback, %struct.service_callback* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.service_callback**, %struct.service_callback*** %5, align 8
  %22 = load %struct.service_callback*, %struct.service_callback** %21, align 8
  store %struct.service_callback* %22, %struct.service_callback** %6, align 8
  %23 = load %struct.service_callback*, %struct.service_callback** %6, align 8
  %24 = getelementptr inbounds %struct.service_callback, %struct.service_callback* %23, i32 0, i32 1
  %25 = load %struct.service_callback*, %struct.service_callback** %24, align 8
  %26 = load %struct.service_callback**, %struct.service_callback*** %5, align 8
  store %struct.service_callback* %25, %struct.service_callback** %26, align 8
  %27 = load %struct.service_callback*, %struct.service_callback** %6, align 8
  %28 = call i32 @free(%struct.service_callback* %27)
  br label %33

29:                                               ; preds = %13
  %30 = load %struct.service_callback**, %struct.service_callback*** %5, align 8
  %31 = load %struct.service_callback*, %struct.service_callback** %30, align 8
  %32 = getelementptr inbounds %struct.service_callback, %struct.service_callback* %31, i32 0, i32 1
  store %struct.service_callback** %32, %struct.service_callback*** %5, align 8
  br label %9

33:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @free(%struct.service_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
