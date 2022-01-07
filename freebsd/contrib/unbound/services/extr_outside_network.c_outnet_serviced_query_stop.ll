; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_serviced_query_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_serviced_query_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serviced_query = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @outnet_serviced_query_stop(%struct.serviced_query* %0, i8* %1) #0 {
  %3 = alloca %struct.serviced_query*, align 8
  %4 = alloca i8*, align 8
  store %struct.serviced_query* %0, %struct.serviced_query** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %6 = icmp ne %struct.serviced_query* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %31

8:                                                ; preds = %2
  %9 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @callback_list_remove(%struct.serviced_query* %9, i8* %10)
  %12 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %13 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %8
  %17 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %18 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %23 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %28 = call i32 @rbtree_delete(i32 %26, %struct.serviced_query* %27)
  %29 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %30 = call i32 @serviced_delete(%struct.serviced_query* %29)
  br label %31

31:                                               ; preds = %7, %21, %16, %8
  ret void
}

declare dso_local i32 @callback_list_remove(%struct.serviced_query*, i8*) #1

declare dso_local i32 @rbtree_delete(i32, %struct.serviced_query*) #1

declare dso_local i32 @serviced_delete(%struct.serviced_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
