; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_check_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_check_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_cache = type { i32, i32, %struct.address_cache* }

@front = common dso_local global %struct.address_cache* null, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.address_cache* (i8*, i8*)* @check_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.address_cache* @check_cache(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.address_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.address_cache*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.address_cache*, %struct.address_cache** @front, align 8
  store %struct.address_cache* %7, %struct.address_cache** %6, align 8
  br label %8

8:                                                ; preds = %28, %2
  %9 = load %struct.address_cache*, %struct.address_cache** %6, align 8
  %10 = icmp ne %struct.address_cache* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load %struct.address_cache*, %struct.address_cache** %6, align 8
  %13 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcmp(i32 %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %11
  %19 = load %struct.address_cache*, %struct.address_cache** %6, align 8
  %20 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load %struct.address_cache*, %struct.address_cache** %6, align 8
  store %struct.address_cache* %26, %struct.address_cache** %3, align 8
  br label %33

27:                                               ; preds = %18, %11
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.address_cache*, %struct.address_cache** %6, align 8
  %30 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %29, i32 0, i32 2
  %31 = load %struct.address_cache*, %struct.address_cache** %30, align 8
  store %struct.address_cache* %31, %struct.address_cache** %6, align 8
  br label %8

32:                                               ; preds = %8
  store %struct.address_cache* null, %struct.address_cache** %3, align 8
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  ret %struct.address_cache* %34
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
