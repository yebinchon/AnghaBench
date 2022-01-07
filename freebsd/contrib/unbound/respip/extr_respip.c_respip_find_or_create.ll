; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_find_or_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_find_or_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resp_addr = type { i32, i32 }
%struct.respip_set = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"cannot parse netblock: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@respip_none = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unexpected: duplicate address: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resp_addr* (%struct.respip_set*, i8*, i32)* @respip_find_or_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resp_addr* @respip_find_or_create(%struct.respip_set* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.resp_addr*, align 8
  %5 = alloca %struct.respip_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resp_addr*, align 8
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.respip_set* %0, %struct.respip_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @netblockstrtoaddr(i8* %12, i32 0, %struct.sockaddr_storage* %9, i32* %11, i32* %10)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %16)
  store %struct.resp_addr* null, %struct.resp_addr** %4, align 8
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.respip_set*, %struct.respip_set** %5, align 8
  %20 = getelementptr inbounds %struct.respip_set, %struct.respip_set* %19, i32 0, i32 0
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @addr_tree_find(i32* %20, %struct.sockaddr_storage* %9, i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to %struct.resp_addr*
  store %struct.resp_addr* %24, %struct.resp_addr** %8, align 8
  %25 = load %struct.resp_addr*, %struct.resp_addr** %8, align 8
  %26 = icmp ne %struct.resp_addr* %25, null
  br i1 %26, label %55, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %27
  %31 = load %struct.respip_set*, %struct.respip_set** %5, align 8
  %32 = getelementptr inbounds %struct.respip_set, %struct.respip_set* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.resp_addr* @regional_alloc_zero(i32 %33, i32 8)
  store %struct.resp_addr* %34, %struct.resp_addr** %8, align 8
  %35 = load %struct.resp_addr*, %struct.resp_addr** %8, align 8
  %36 = icmp ne %struct.resp_addr* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resp_addr* null, %struct.resp_addr** %4, align 8
  br label %57

39:                                               ; preds = %30
  %40 = load i32, i32* @respip_none, align 4
  %41 = load %struct.resp_addr*, %struct.resp_addr** %8, align 8
  %42 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.respip_set*, %struct.respip_set** %5, align 8
  %44 = getelementptr inbounds %struct.respip_set, %struct.respip_set* %43, i32 0, i32 0
  %45 = load %struct.resp_addr*, %struct.resp_addr** %8, align 8
  %46 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %45, i32 0, i32 0
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @addr_tree_insert(i32* %44, i32* %46, %struct.sockaddr_storage* %9, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @log_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %39
  br label %55

55:                                               ; preds = %54, %27, %18
  %56 = load %struct.resp_addr*, %struct.resp_addr** %8, align 8
  store %struct.resp_addr* %56, %struct.resp_addr** %4, align 8
  br label %57

57:                                               ; preds = %55, %37, %15
  %58 = load %struct.resp_addr*, %struct.resp_addr** %4, align 8
  ret %struct.resp_addr* %58
}

declare dso_local i32 @netblockstrtoaddr(i8*, i32, %struct.sockaddr_storage*, i32*, i32*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i64 @addr_tree_find(i32*, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local %struct.resp_addr* @regional_alloc_zero(i32, i32) #1

declare dso_local i32 @addr_tree_insert(i32*, i32*, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @log_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
