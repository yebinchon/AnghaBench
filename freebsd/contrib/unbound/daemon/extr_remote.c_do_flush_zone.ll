; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_flush_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_flush_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.del_info = type { i64, i32, i32, i64, i64, i64, i32*, %struct.worker* }

@zone_del_rrset = common dso_local global i32 0, align 4
@zone_del_msg = common dso_local global i32 0, align 4
@zone_del_kcache = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"ok removed %lu rrsets, %lu messages and %lu key entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_flush_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_flush_zone(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.del_info, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @parse_arg_name(i32* %11, i8* %12, i32** %7, i64* %9, i32* %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %72

16:                                               ; preds = %3
  %17 = load %struct.worker*, %struct.worker** %5, align 8
  %18 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 7
  store %struct.worker* %17, %struct.worker** %18, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 6
  store i32* %19, i32** %20, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load %struct.worker*, %struct.worker** %5, align 8
  %26 = getelementptr inbounds %struct.worker, %struct.worker* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 3
  store i32 %33, i32* %31, align 4
  %34 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.worker*, %struct.worker** %5, align 8
  %38 = getelementptr inbounds %struct.worker, %struct.worker* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @slabhash_traverse(i32* %41, i32 1, i32* @zone_del_rrset, %struct.del_info* %10)
  %43 = load %struct.worker*, %struct.worker** %5, align 8
  %44 = getelementptr inbounds %struct.worker, %struct.worker* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @slabhash_traverse(i32* %46, i32 1, i32* @zone_del_msg, %struct.del_info* %10)
  %48 = load %struct.worker*, %struct.worker** %5, align 8
  %49 = getelementptr inbounds %struct.worker, %struct.worker* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %16
  %54 = load %struct.worker*, %struct.worker** %5, align 8
  %55 = getelementptr inbounds %struct.worker, %struct.worker* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @slabhash_traverse(i32* %59, i32 1, i32* @zone_del_kcache, %struct.del_info* %10)
  br label %61

61:                                               ; preds = %53, %16
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @free(i32* %62)
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.del_info, %struct.del_info* %10, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ssl_printf(i32* %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %66, i64 %68, i64 %70)
  br label %72

72:                                               ; preds = %61, %15
  ret void
}

declare dso_local i32 @parse_arg_name(i32*, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @slabhash_traverse(i32*, i32, i32*, %struct.del_info*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ssl_printf(i32*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
