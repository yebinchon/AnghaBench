; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_flush_bogus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_flush_bogus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.del_info = type { i32, i64, i64, i64, %struct.worker* }

@bogus_del_rrset = common dso_local global i32 0, align 4
@bogus_del_msg = common dso_local global i32 0, align 4
@bogus_del_kcache = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"ok removed %lu rrsets, %lu messages and %lu key entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*)* @do_flush_bogus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_flush_bogus(i32* %0, %struct.worker* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.worker*, align 8
  %5 = alloca %struct.del_info, align 8
  store i32* %0, i32** %3, align 8
  store %struct.worker* %1, %struct.worker** %4, align 8
  %6 = load %struct.worker*, %struct.worker** %4, align 8
  %7 = getelementptr inbounds %struct.del_info, %struct.del_info* %5, i32 0, i32 4
  store %struct.worker* %6, %struct.worker** %7, align 8
  %8 = load %struct.worker*, %struct.worker** %4, align 8
  %9 = getelementptr inbounds %struct.worker, %struct.worker* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.del_info, %struct.del_info* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.del_info, %struct.del_info* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 3
  store i32 %16, i32* %14, align 8
  %17 = getelementptr inbounds %struct.del_info, %struct.del_info* %5, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.del_info, %struct.del_info* %5, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.del_info, %struct.del_info* %5, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.worker*, %struct.worker** %4, align 8
  %21 = getelementptr inbounds %struct.worker, %struct.worker* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @slabhash_traverse(i32* %24, i32 1, i32* @bogus_del_rrset, %struct.del_info* %5)
  %26 = load %struct.worker*, %struct.worker** %4, align 8
  %27 = getelementptr inbounds %struct.worker, %struct.worker* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @slabhash_traverse(i32* %29, i32 1, i32* @bogus_del_msg, %struct.del_info* %5)
  %31 = load %struct.worker*, %struct.worker** %4, align 8
  %32 = getelementptr inbounds %struct.worker, %struct.worker* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %2
  %37 = load %struct.worker*, %struct.worker** %4, align 8
  %38 = getelementptr inbounds %struct.worker, %struct.worker* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @slabhash_traverse(i32* %42, i32 1, i32* @bogus_del_kcache, %struct.del_info* %5)
  br label %44

44:                                               ; preds = %36, %2
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds %struct.del_info, %struct.del_info* %5, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.del_info, %struct.del_info* %5, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.del_info, %struct.del_info* %5, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @ssl_printf(i32* %45, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %49, i64 %51)
  ret void
}

declare dso_local i32 @slabhash_traverse(i32*, i32, i32*, %struct.del_info*) #1

declare dso_local i32 @ssl_printf(i32*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
