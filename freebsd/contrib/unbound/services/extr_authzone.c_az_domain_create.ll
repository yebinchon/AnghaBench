; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_domain_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_domain_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_data = type { i64, %struct.auth_data*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.auth_data* }
%struct.auth_zone = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"duplicate auth domain name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_data* (%struct.auth_zone*, i32*, i64)* @az_domain_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_data* @az_domain_create(%struct.auth_zone* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.auth_data*, align 8
  %5 = alloca %struct.auth_zone*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.auth_data*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call i64 @malloc(i32 32)
  %10 = inttoptr i64 %9 to %struct.auth_data*
  store %struct.auth_data* %10, %struct.auth_data** %8, align 8
  %11 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %12 = icmp ne %struct.auth_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.auth_data* null, %struct.auth_data** %4, align 8
  br label %57

14:                                               ; preds = %3
  %15 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %16 = call i32 @memset(%struct.auth_data* %15, i32 0, i32 32)
  %17 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %18 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %19 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.auth_data* %17, %struct.auth_data** %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.auth_data* @memdup(i32* %21, i64 %22)
  %24 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %25 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %24, i32 0, i32 1
  store %struct.auth_data* %23, %struct.auth_data** %25, align 8
  %26 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %27 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %26, i32 0, i32 1
  %28 = load %struct.auth_data*, %struct.auth_data** %27, align 8
  %29 = icmp ne %struct.auth_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %32 = call i32 @free(%struct.auth_data* %31)
  store %struct.auth_data* null, %struct.auth_data** %4, align 8
  br label %57

33:                                               ; preds = %14
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %36 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @dname_count_labels(i32* %37)
  %39 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %40 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %42 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %41, i32 0, i32 0
  %43 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %44 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %43, i32 0, i32 2
  %45 = call i32 @rbtree_insert(i32* %42, %struct.TYPE_2__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %33
  %48 = call i32 @log_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %50 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %49, i32 0, i32 1
  %51 = load %struct.auth_data*, %struct.auth_data** %50, align 8
  %52 = call i32 @free(%struct.auth_data* %51)
  %53 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %54 = call i32 @free(%struct.auth_data* %53)
  store %struct.auth_data* null, %struct.auth_data** %4, align 8
  br label %57

55:                                               ; preds = %33
  %56 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  store %struct.auth_data* %56, %struct.auth_data** %4, align 8
  br label %57

57:                                               ; preds = %55, %47, %30, %13
  %58 = load %struct.auth_data*, %struct.auth_data** %4, align 8
  ret %struct.auth_data* %58
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.auth_data*, i32, i32) #1

declare dso_local %struct.auth_data* @memdup(i32*, i64) #1

declare dso_local i32 @free(%struct.auth_data*) #1

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @rbtree_insert(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @log_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
