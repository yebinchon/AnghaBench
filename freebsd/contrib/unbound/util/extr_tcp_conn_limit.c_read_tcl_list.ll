; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tcp_conn_limit.c_read_tcl_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tcp_conn_limit.c_read_tcl_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcl_list = type { i32 }
%struct.config_file = type { %struct.config_str2list* }
%struct.config_str2list = type { i64, i64, %struct.config_str2list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcl_list*, %struct.config_file*)* @read_tcl_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tcl_list(%struct.tcl_list* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcl_list*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_str2list*, align 8
  store %struct.tcl_list* %0, %struct.tcl_list** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %7 = load %struct.config_file*, %struct.config_file** %5, align 8
  %8 = getelementptr inbounds %struct.config_file, %struct.config_file* %7, i32 0, i32 0
  %9 = load %struct.config_str2list*, %struct.config_str2list** %8, align 8
  store %struct.config_str2list* %9, %struct.config_str2list** %6, align 8
  br label %10

10:                                               ; preds = %38, %2
  %11 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %12 = icmp ne %struct.config_str2list* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %15 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %20 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @log_assert(i32 %25)
  %27 = load %struct.tcl_list*, %struct.tcl_list** %4, align 8
  %28 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %29 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %32 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @tcl_list_str_cfg(%struct.tcl_list* %27, i64 %30, i64 %33, i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %43

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %40 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %39, i32 0, i32 2
  %41 = load %struct.config_str2list*, %struct.config_str2list** %40, align 8
  store %struct.config_str2list* %41, %struct.config_str2list** %6, align 8
  br label %10

42:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @tcl_list_str_cfg(%struct.tcl_list*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
