; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zones = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@auth_zone_cmp = common dso_local global i32 0, align 4
@auth_xfer_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth_zones* @auth_zones_create() #0 {
  %1 = alloca %struct.auth_zones*, align 8
  %2 = alloca %struct.auth_zones*, align 8
  %3 = call i64 @calloc(i32 1, i32 12)
  %4 = inttoptr i64 %3 to %struct.auth_zones*
  store %struct.auth_zones* %4, %struct.auth_zones** %2, align 8
  %5 = load %struct.auth_zones*, %struct.auth_zones** %2, align 8
  %6 = icmp ne %struct.auth_zones* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.auth_zones* null, %struct.auth_zones** %1, align 8
  br label %30

9:                                                ; preds = %0
  %10 = load %struct.auth_zones*, %struct.auth_zones** %2, align 8
  %11 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %10, i32 0, i32 2
  %12 = call i32 @rbtree_init(i32* %11, i32* @auth_zone_cmp)
  %13 = load %struct.auth_zones*, %struct.auth_zones** %2, align 8
  %14 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %13, i32 0, i32 0
  %15 = call i32 @rbtree_init(i32* %14, i32* @auth_xfer_cmp)
  %16 = load %struct.auth_zones*, %struct.auth_zones** %2, align 8
  %17 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %16, i32 0, i32 1
  %18 = call i32 @lock_rw_init(i32* %17)
  %19 = load %struct.auth_zones*, %struct.auth_zones** %2, align 8
  %20 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %19, i32 0, i32 1
  %21 = load %struct.auth_zones*, %struct.auth_zones** %2, align 8
  %22 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %21, i32 0, i32 2
  %23 = call i32 @lock_protect(i32* %20, i32* %22, i32 4)
  %24 = load %struct.auth_zones*, %struct.auth_zones** %2, align 8
  %25 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %24, i32 0, i32 1
  %26 = load %struct.auth_zones*, %struct.auth_zones** %2, align 8
  %27 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %26, i32 0, i32 0
  %28 = call i32 @lock_protect(i32* %25, i32* %27, i32 4)
  %29 = load %struct.auth_zones*, %struct.auth_zones** %2, align 8
  store %struct.auth_zones* %29, %struct.auth_zones** %1, align 8
  br label %30

30:                                               ; preds = %9, %7
  %31 = load %struct.auth_zones*, %struct.auth_zones** %1, align 8
  ret %struct.auth_zones* %31
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

declare dso_local i32 @lock_rw_init(i32*) #1

declare dso_local i32 @lock_protect(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
