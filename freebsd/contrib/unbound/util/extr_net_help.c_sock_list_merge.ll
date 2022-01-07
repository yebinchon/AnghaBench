; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sock_list_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sock_list_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.sock_list = type { i32, i32, %struct.sock_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_list_merge(%struct.sock_list** %0, %struct.regional* %1, %struct.sock_list* %2) #0 {
  %4 = alloca %struct.sock_list**, align 8
  %5 = alloca %struct.regional*, align 8
  %6 = alloca %struct.sock_list*, align 8
  %7 = alloca %struct.sock_list*, align 8
  store %struct.sock_list** %0, %struct.sock_list*** %4, align 8
  store %struct.regional* %1, %struct.regional** %5, align 8
  store %struct.sock_list* %2, %struct.sock_list** %6, align 8
  %8 = load %struct.sock_list*, %struct.sock_list** %6, align 8
  store %struct.sock_list* %8, %struct.sock_list** %7, align 8
  br label %9

9:                                                ; preds = %32, %3
  %10 = load %struct.sock_list*, %struct.sock_list** %7, align 8
  %11 = icmp ne %struct.sock_list* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load %struct.sock_list**, %struct.sock_list*** %4, align 8
  %14 = load %struct.sock_list*, %struct.sock_list** %13, align 8
  %15 = load %struct.sock_list*, %struct.sock_list** %7, align 8
  %16 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %15, i32 0, i32 1
  %17 = load %struct.sock_list*, %struct.sock_list** %7, align 8
  %18 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sock_list_find(%struct.sock_list* %14, i32* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %12
  %23 = load %struct.sock_list**, %struct.sock_list*** %4, align 8
  %24 = load %struct.sock_list*, %struct.sock_list** %7, align 8
  %25 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %24, i32 0, i32 1
  %26 = load %struct.sock_list*, %struct.sock_list** %7, align 8
  %27 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.regional*, %struct.regional** %5, align 8
  %30 = call i32 @sock_list_insert(%struct.sock_list** %23, i32* %25, i32 %28, %struct.regional* %29)
  br label %31

31:                                               ; preds = %22, %12
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.sock_list*, %struct.sock_list** %7, align 8
  %34 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %33, i32 0, i32 2
  %35 = load %struct.sock_list*, %struct.sock_list** %34, align 8
  store %struct.sock_list* %35, %struct.sock_list** %7, align 8
  br label %9

36:                                               ; preds = %9
  ret void
}

declare dso_local i32 @sock_list_find(%struct.sock_list*, i32*, i32) #1

declare dso_local i32 @sock_list_insert(%struct.sock_list**, i32*, i32, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
