; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_find_or_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_find_or_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_addr = type { i32 }
%struct.acl_list = type { i32 }
%struct.sockaddr_storage = type { i32 }

@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot parse netblock: %s\00", align 1
@acl_allow = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acl_addr* (%struct.acl_list*, i8*)* @acl_find_or_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acl_addr* @acl_find_or_create(%struct.acl_list* %0, i8* %1) #0 {
  %3 = alloca %struct.acl_addr*, align 8
  %4 = alloca %struct.acl_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acl_addr*, align 8
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.acl_list* %0, %struct.acl_list** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %12 = call i32 @netblockstrtoaddr(i8* %10, i32 %11, %struct.sockaddr_storage* %7, i32* %9, i32* %8)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %15)
  store %struct.acl_addr* null, %struct.acl_addr** %3, align 8
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.acl_list*, %struct.acl_list** %4, align 8
  %19 = getelementptr inbounds %struct.acl_list, %struct.acl_list* %18, i32 0, i32 0
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @addr_tree_find(i32* %19, %struct.sockaddr_storage* %7, i32 %20, i32 %21)
  %23 = inttoptr i64 %22 to %struct.acl_addr*
  store %struct.acl_addr* %23, %struct.acl_addr** %6, align 8
  %24 = icmp ne %struct.acl_addr* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = load %struct.acl_list*, %struct.acl_list** %4, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @acl_allow, align 4
  %30 = call i64 @acl_list_insert(%struct.acl_list* %26, %struct.sockaddr_storage* %7, i32 %27, i32 %28, i32 %29, i32 1)
  %31 = inttoptr i64 %30 to %struct.acl_addr*
  store %struct.acl_addr* %31, %struct.acl_addr** %6, align 8
  %32 = icmp ne %struct.acl_addr* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.acl_addr* null, %struct.acl_addr** %3, align 8
  br label %38

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %17
  %37 = load %struct.acl_addr*, %struct.acl_addr** %6, align 8
  store %struct.acl_addr* %37, %struct.acl_addr** %3, align 8
  br label %38

38:                                               ; preds = %36, %33, %14
  %39 = load %struct.acl_addr*, %struct.acl_addr** %3, align 8
  ret %struct.acl_addr* %39
}

declare dso_local i32 @netblockstrtoaddr(i8*, i32, %struct.sockaddr_storage*, i32*, i32*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i64 @addr_tree_find(i32*, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @acl_list_insert(%struct.acl_list*, %struct.sockaddr_storage*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
