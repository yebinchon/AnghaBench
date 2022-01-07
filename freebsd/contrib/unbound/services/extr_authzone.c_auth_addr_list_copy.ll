; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_addr_list_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_addr_list_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_addr = type { %struct.auth_addr* }

@.str = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_addr* (%struct.auth_addr*)* @auth_addr_list_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_addr* @auth_addr_list_copy(%struct.auth_addr* %0) #0 {
  %2 = alloca %struct.auth_addr*, align 8
  %3 = alloca %struct.auth_addr*, align 8
  %4 = alloca %struct.auth_addr*, align 8
  %5 = alloca %struct.auth_addr*, align 8
  %6 = alloca %struct.auth_addr*, align 8
  %7 = alloca %struct.auth_addr*, align 8
  store %struct.auth_addr* %0, %struct.auth_addr** %3, align 8
  store %struct.auth_addr* null, %struct.auth_addr** %4, align 8
  store %struct.auth_addr* null, %struct.auth_addr** %5, align 8
  %8 = load %struct.auth_addr*, %struct.auth_addr** %3, align 8
  store %struct.auth_addr* %8, %struct.auth_addr** %6, align 8
  br label %9

9:                                                ; preds = %38, %1
  %10 = load %struct.auth_addr*, %struct.auth_addr** %6, align 8
  %11 = icmp ne %struct.auth_addr* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load %struct.auth_addr*, %struct.auth_addr** %6, align 8
  %14 = call i64 @memdup(%struct.auth_addr* %13, i32 8)
  %15 = inttoptr i64 %14 to %struct.auth_addr*
  store %struct.auth_addr* %15, %struct.auth_addr** %7, align 8
  %16 = load %struct.auth_addr*, %struct.auth_addr** %7, align 8
  %17 = icmp ne %struct.auth_addr* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.auth_addr*, %struct.auth_addr** %4, align 8
  %21 = call i32 @auth_free_master_addrs(%struct.auth_addr* %20)
  store %struct.auth_addr* null, %struct.auth_addr** %2, align 8
  br label %44

22:                                               ; preds = %12
  %23 = load %struct.auth_addr*, %struct.auth_addr** %7, align 8
  %24 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %23, i32 0, i32 0
  store %struct.auth_addr* null, %struct.auth_addr** %24, align 8
  %25 = load %struct.auth_addr*, %struct.auth_addr** %5, align 8
  %26 = icmp ne %struct.auth_addr* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.auth_addr*, %struct.auth_addr** %7, align 8
  %29 = load %struct.auth_addr*, %struct.auth_addr** %5, align 8
  %30 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %29, i32 0, i32 0
  store %struct.auth_addr* %28, %struct.auth_addr** %30, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.auth_addr*, %struct.auth_addr** %4, align 8
  %33 = icmp ne %struct.auth_addr* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load %struct.auth_addr*, %struct.auth_addr** %7, align 8
  store %struct.auth_addr* %35, %struct.auth_addr** %4, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load %struct.auth_addr*, %struct.auth_addr** %7, align 8
  store %struct.auth_addr* %37, %struct.auth_addr** %5, align 8
  br label %38

38:                                               ; preds = %36
  %39 = load %struct.auth_addr*, %struct.auth_addr** %6, align 8
  %40 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %39, i32 0, i32 0
  %41 = load %struct.auth_addr*, %struct.auth_addr** %40, align 8
  store %struct.auth_addr* %41, %struct.auth_addr** %6, align 8
  br label %9

42:                                               ; preds = %9
  %43 = load %struct.auth_addr*, %struct.auth_addr** %4, align 8
  store %struct.auth_addr* %43, %struct.auth_addr** %2, align 8
  br label %44

44:                                               ; preds = %42, %18
  %45 = load %struct.auth_addr*, %struct.auth_addr** %2, align 8
  ret %struct.auth_addr* %45
}

declare dso_local i64 @memdup(%struct.auth_addr*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @auth_free_master_addrs(%struct.auth_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
