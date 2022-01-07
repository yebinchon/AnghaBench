; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_get_rrset_bogus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_get_rrset_bogus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, i64*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.val_env = type { i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"validator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.worker*, i32)* @get_rrset_bogus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rrset_bogus(%struct.worker* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.worker*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.val_env*, align 8
  %8 = alloca i64, align 8
  store %struct.worker* %0, %struct.worker** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.worker*, %struct.worker** %4, align 8
  %10 = getelementptr inbounds %struct.worker, %struct.worker* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @modstack_find(i32* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.worker*, %struct.worker** %4, align 8
  %20 = getelementptr inbounds %struct.worker, %struct.worker* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.val_env*
  store %struct.val_env* %27, %struct.val_env** %7, align 8
  %28 = load %struct.val_env*, %struct.val_env** %7, align 8
  %29 = getelementptr inbounds %struct.val_env, %struct.val_env* %28, i32 0, i32 1
  %30 = call i32 @lock_basic_lock(i32* %29)
  %31 = load %struct.val_env*, %struct.val_env** %7, align 8
  %32 = getelementptr inbounds %struct.val_env, %struct.val_env* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %18
  %37 = load %struct.worker*, %struct.worker** %4, align 8
  %38 = getelementptr inbounds %struct.worker, %struct.worker* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load %struct.val_env*, %struct.val_env** %7, align 8
  %46 = getelementptr inbounds %struct.val_env, %struct.val_env* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %36, %18
  %48 = load %struct.val_env*, %struct.val_env** %7, align 8
  %49 = getelementptr inbounds %struct.val_env, %struct.val_env* %48, i32 0, i32 1
  %50 = call i32 @lock_basic_unlock(i32* %49)
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %47, %17
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i32 @modstack_find(i32*, i8*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
