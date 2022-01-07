; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tcp_conn_limit.c_tcl_list_str_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tcp_conn_limit.c_tcl_list_str_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcl_list = type { i32 }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"bad connection limit %s\00", align 1
@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"cannot parse connection limit netblock: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcl_list*, i8*, i8*, i32)* @tcl_list_str_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcl_list_str_cfg(%struct.tcl_list* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcl_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.tcl_list* %0, %struct.tcl_list** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @atoi(i8* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 0, i32* %5, align 4
  br label %41

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @atoi(i8* %21)
  store i64 %22, i64* %13, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %25 = call i32 @netblockstrtoaddr(i8* %23, i32 %24, %struct.sockaddr_storage* %10, i32* %12, i32* %11)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 0, i32* %5, align 4
  br label %41

30:                                               ; preds = %20
  %31 = load %struct.tcl_list*, %struct.tcl_list** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i64, i64* %13, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @tcl_list_insert(%struct.tcl_list* %31, %struct.sockaddr_storage* %10, i32 %32, i32 %33, i64 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %41

40:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %38, %27, %17
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @netblockstrtoaddr(i8*, i32, %struct.sockaddr_storage*, i32*, i32*) #1

declare dso_local i32 @tcl_list_insert(%struct.tcl_list*, %struct.sockaddr_storage*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
