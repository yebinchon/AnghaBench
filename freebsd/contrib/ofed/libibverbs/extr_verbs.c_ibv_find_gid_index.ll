; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_find_gid_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_find_gid_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%union.ibv_gid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_context*, i32, %union.ibv_gid*, i32)* @ibv_find_gid_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibv_find_gid_index(%struct.ibv_context* %0, i32 %1, %union.ibv_gid* %2, i32 %3) #0 {
  %5 = alloca %struct.ibv_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ibv_gid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ibv_gid, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.ibv_gid* %2, %union.ibv_gid** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %41, %4
  %14 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @ibv_query_gid(%struct.ibv_context* %14, i32 %15, i32 %16, %union.ibv_gid* %10)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @ibv_query_gid_type(%struct.ibv_context* %21, i32 %22, i32 %23, i32* %9)
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = load %union.ibv_gid*, %union.ibv_gid** %7, align 8
  %33 = call i64 @memcmp(%union.ibv_gid* %10, %union.ibv_gid* %32, i32 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ true, %31 ], [ %38, %35 ]
  br label %41

41:                                               ; preds = %39, %28
  %42 = phi i1 [ false, %28 ], [ %40, %39 ]
  br i1 %42, label %13, label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  br label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i32 [ %47, %46 ], [ %50, %48 ]
  ret i32 %52
}

declare dso_local i32 @ibv_query_gid(%struct.ibv_context*, i32, i32, %union.ibv_gid*) #1

declare dso_local i32 @ibv_query_gid_type(%struct.ibv_context*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(%union.ibv_gid*, %union.ibv_gid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
