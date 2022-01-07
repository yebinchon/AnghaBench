; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_listen_list_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_listen_list_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listen_list = type { i32, %struct.listen_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listen_list_delete(%struct.listen_list* %0) #0 {
  %2 = alloca %struct.listen_list*, align 8
  %3 = alloca %struct.listen_list*, align 8
  %4 = alloca %struct.listen_list*, align 8
  store %struct.listen_list* %0, %struct.listen_list** %2, align 8
  %5 = load %struct.listen_list*, %struct.listen_list** %2, align 8
  store %struct.listen_list* %5, %struct.listen_list** %3, align 8
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.listen_list*, %struct.listen_list** %3, align 8
  %8 = icmp ne %struct.listen_list* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.listen_list*, %struct.listen_list** %3, align 8
  %11 = getelementptr inbounds %struct.listen_list, %struct.listen_list* %10, i32 0, i32 1
  %12 = load %struct.listen_list*, %struct.listen_list** %11, align 8
  store %struct.listen_list* %12, %struct.listen_list** %4, align 8
  %13 = load %struct.listen_list*, %struct.listen_list** %3, align 8
  %14 = getelementptr inbounds %struct.listen_list, %struct.listen_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @comm_point_delete(i32 %15)
  %17 = load %struct.listen_list*, %struct.listen_list** %3, align 8
  %18 = call i32 @free(%struct.listen_list* %17)
  %19 = load %struct.listen_list*, %struct.listen_list** %4, align 8
  store %struct.listen_list* %19, %struct.listen_list** %3, align 8
  br label %6

20:                                               ; preds = %6
  ret void
}

declare dso_local i32 @comm_point_delete(i32) #1

declare dso_local i32 @free(%struct.listen_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
