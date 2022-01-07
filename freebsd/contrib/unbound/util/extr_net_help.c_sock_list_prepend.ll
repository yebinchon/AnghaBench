; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sock_list_prepend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sock_list_prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_list = type { %struct.sock_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_list_prepend(%struct.sock_list** %0, %struct.sock_list* %1) #0 {
  %3 = alloca %struct.sock_list**, align 8
  %4 = alloca %struct.sock_list*, align 8
  %5 = alloca %struct.sock_list*, align 8
  store %struct.sock_list** %0, %struct.sock_list*** %3, align 8
  store %struct.sock_list* %1, %struct.sock_list** %4, align 8
  %6 = load %struct.sock_list*, %struct.sock_list** %4, align 8
  store %struct.sock_list* %6, %struct.sock_list** %5, align 8
  %7 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %8 = icmp ne %struct.sock_list* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %27

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %16, %10
  %12 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %13 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %12, i32 0, i32 0
  %14 = load %struct.sock_list*, %struct.sock_list** %13, align 8
  %15 = icmp ne %struct.sock_list* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %18 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %17, i32 0, i32 0
  %19 = load %struct.sock_list*, %struct.sock_list** %18, align 8
  store %struct.sock_list* %19, %struct.sock_list** %5, align 8
  br label %11

20:                                               ; preds = %11
  %21 = load %struct.sock_list**, %struct.sock_list*** %3, align 8
  %22 = load %struct.sock_list*, %struct.sock_list** %21, align 8
  %23 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %24 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %23, i32 0, i32 0
  store %struct.sock_list* %22, %struct.sock_list** %24, align 8
  %25 = load %struct.sock_list*, %struct.sock_list** %4, align 8
  %26 = load %struct.sock_list**, %struct.sock_list*** %3, align 8
  store %struct.sock_list* %25, %struct.sock_list** %26, align 8
  br label %27

27:                                               ; preds = %20, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
