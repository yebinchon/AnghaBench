; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i32, i64, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.local_zone* }

@local_data_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.local_zone* (i32*, i64, i32, i32, i32)* @local_zone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.local_zone* @local_zone_create(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.local_zone*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.local_zone*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = call i64 @calloc(i32 1, i32 64)
  %14 = inttoptr i64 %13 to %struct.local_zone*
  store %struct.local_zone* %14, %struct.local_zone** %12, align 8
  %15 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %16 = icmp ne %struct.local_zone* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.local_zone* null, %struct.local_zone** %6, align 8
  br label %61

18:                                               ; preds = %5
  %19 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %20 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %21 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.local_zone* %19, %struct.local_zone** %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %25 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %28 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %31 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %30, i32 0, i32 7
  store i32* %29, i32** %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %34 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %37 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %39 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %38, i32 0, i32 4
  %40 = call i32 @lock_rw_init(i32* %39)
  %41 = call i32 @regional_create_custom(i32 4)
  %42 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %43 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %45 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %18
  %49 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %50 = call i32 @free(%struct.local_zone* %49)
  store %struct.local_zone* null, %struct.local_zone** %6, align 8
  br label %61

51:                                               ; preds = %18
  %52 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %53 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %52, i32 0, i32 5
  %54 = call i32 @rbtree_init(i32* %53, i32* @local_data_cmp)
  %55 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %56 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %55, i32 0, i32 4
  %57 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  %58 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %57, i32 0, i32 3
  %59 = call i32 @lock_protect(i32* %56, i32* %58, i32 60)
  %60 = load %struct.local_zone*, %struct.local_zone** %12, align 8
  store %struct.local_zone* %60, %struct.local_zone** %6, align 8
  br label %61

61:                                               ; preds = %51, %48, %17
  %62 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  ret %struct.local_zone* %62
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @lock_rw_init(i32*) #1

declare dso_local i32 @regional_create_custom(i32) #1

declare dso_local i32 @free(%struct.local_zone*) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

declare dso_local i32 @lock_protect(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
