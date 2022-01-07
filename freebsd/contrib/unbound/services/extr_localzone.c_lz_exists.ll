; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32, i32 }
%struct.local_zone = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.local_zone* }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bad name %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_zones*, i8*)* @lz_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_exists(%struct.local_zones* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.local_zones*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.local_zone, align 8
  store %struct.local_zones* %0, %struct.local_zones** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.local_zone* %6, %struct.local_zone** %8, align 8
  %9 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %10 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %6, i32 0, i32 4
  store i32 %9, i32* %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %6, i32 0, i32 0
  %13 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %6, i32 0, i32 3
  %14 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %6, i32 0, i32 2
  %15 = call i32 @parse_dname(i8* %11, i32* %12, i32* %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @log_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 0, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %22 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %21, i32 0, i32 0
  %23 = call i32 @lock_rw_rdlock(i32* %22)
  %24 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %25 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %6, i32 0, i32 1
  %27 = call i64 @rbtree_search(i32* %25, %struct.TYPE_2__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %31 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %30, i32 0, i32 0
  %32 = call i32 @lock_rw_unlock(i32* %31)
  %33 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @free(i32 %34)
  store i32 1, i32* %3, align 4
  br label %43

36:                                               ; preds = %20
  %37 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %38 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %37, i32 0, i32 0
  %39 = call i32 @lock_rw_unlock(i32* %38)
  %40 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @free(i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %29, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @parse_dname(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local i64 @rbtree_search(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
