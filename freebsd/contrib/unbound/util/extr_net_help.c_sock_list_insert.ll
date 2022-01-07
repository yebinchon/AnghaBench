; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sock_list_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sock_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_list = type { i32, i64, %struct.sock_list* }
%struct.sockaddr_storage = type { i32 }
%struct.regional = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"out of memory in socketlist insert\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_list_insert(%struct.sock_list** %0, %struct.sockaddr_storage* %1, i64 %2, %struct.regional* %3) #0 {
  %5 = alloca %struct.sock_list**, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.sock_list*, align 8
  store %struct.sock_list** %0, %struct.sock_list*** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.regional* %3, %struct.regional** %8, align 8
  %10 = load %struct.regional*, %struct.regional** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = add i64 20, %11
  %13 = trunc i64 %12 to i32
  %14 = call i64 @regional_alloc(%struct.regional* %10, i32 %13)
  %15 = inttoptr i64 %14 to %struct.sock_list*
  store %struct.sock_list* %15, %struct.sock_list** %9, align 8
  %16 = load %struct.sock_list*, %struct.sock_list** %9, align 8
  %17 = icmp ne %struct.sock_list* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %40

20:                                               ; preds = %4
  %21 = load %struct.sock_list**, %struct.sock_list*** %5, align 8
  %22 = call i32 @log_assert(%struct.sock_list** %21)
  %23 = load %struct.sock_list**, %struct.sock_list*** %5, align 8
  %24 = load %struct.sock_list*, %struct.sock_list** %23, align 8
  %25 = load %struct.sock_list*, %struct.sock_list** %9, align 8
  %26 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %25, i32 0, i32 2
  store %struct.sock_list* %24, %struct.sock_list** %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.sock_list*, %struct.sock_list** %9, align 8
  %29 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.sock_list*, %struct.sock_list** %9, align 8
  %31 = load %struct.sock_list**, %struct.sock_list*** %5, align 8
  store %struct.sock_list* %30, %struct.sock_list** %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load %struct.sock_list*, %struct.sock_list** %9, align 8
  %36 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %35, i32 0, i32 0
  %37 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @memmove(i32* %36, %struct.sockaddr_storage* %37, i64 %38)
  br label %40

40:                                               ; preds = %18, %34, %20
  ret void
}

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @log_assert(%struct.sock_list**) #1

declare dso_local i32 @memmove(i32*, %struct.sockaddr_storage*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
