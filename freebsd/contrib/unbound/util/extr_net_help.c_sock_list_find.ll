; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sock_list_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sock_list_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_list = type { i64, %struct.sock_list*, i32 }
%struct.sockaddr_storage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_list_find(%struct.sock_list* %0, %struct.sockaddr_storage* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_list*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i64, align 8
  store %struct.sock_list* %0, %struct.sock_list** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %8

8:                                                ; preds = %32, %3
  %9 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %10 = icmp ne %struct.sock_list* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %14 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %24 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %23, i32 0, i32 2
  %25 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %26 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @sockaddr_cmp_addr(%struct.sockaddr_storage* %21, i64 %22, i32* %24, i64 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20, %17
  store i32 1, i32* %4, align 4
  br label %37

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %11
  %33 = load %struct.sock_list*, %struct.sock_list** %5, align 8
  %34 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %33, i32 0, i32 1
  %35 = load %struct.sock_list*, %struct.sock_list** %34, align 8
  store %struct.sock_list* %35, %struct.sock_list** %5, align 8
  br label %8

36:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @sockaddr_cmp_addr(%struct.sockaddr_storage*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
