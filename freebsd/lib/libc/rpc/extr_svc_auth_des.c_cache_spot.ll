; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_auth_des.c_cache_spot.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_auth_des.c_cache_spot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.timeval = type { i32 }

@authdes_cache = common dso_local global %struct.cache_entry* null, align 8
@AUTHDES_CACHESZ = common dso_local global i32 0, align 4
@svcauthdes_stats = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.TYPE_10__*, i8*, %struct.timeval*)* @cache_spot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @cache_spot(%struct.TYPE_10__* %0, i8* %1, %struct.timeval* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.cache_entry*, %struct.cache_entry** @authdes_cache, align 8
  store %struct.cache_entry* %15, %struct.cache_entry** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %69, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @AUTHDES_CACHESZ, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %74

20:                                               ; preds = %16
  %21 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %22 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %20
  %29 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %30 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %28
  %40 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %41 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = add nsw i64 %50, 1
  %52 = call i64 @bcmp(i32* %47, i8* %48, i64 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %44
  %55 = load %struct.timeval*, %struct.timeval** %7, align 8
  %56 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %57 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %56, i32 0, i32 0
  %58 = call i64 @BEFORE(%struct.timeval* %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svcauthdes_stats, i32 0, i32 2), align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svcauthdes_stats, i32 0, i32 2), align 4
  store i16 -1, i16* %4, align 2
  br label %78

63:                                               ; preds = %54
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svcauthdes_stats, i32 0, i32 1), align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svcauthdes_stats, i32 0, i32 1), align 4
  %66 = load i32, i32* %9, align 4
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %4, align 2
  br label %78

68:                                               ; preds = %44, %39, %28, %20
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %73 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %72, i32 1
  store %struct.cache_entry* %73, %struct.cache_entry** %8, align 8
  br label %16

74:                                               ; preds = %16
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svcauthdes_stats, i32 0, i32 0), align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svcauthdes_stats, i32 0, i32 0), align 4
  %77 = call signext i16 (...) @cache_victim()
  store i16 %77, i16* %4, align 2
  br label %78

78:                                               ; preds = %74, %63, %60
  %79 = load i16, i16* %4, align 2
  ret i16 %79
}

declare dso_local i64 @bcmp(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @BEFORE(%struct.timeval*, i32*) #1

declare dso_local signext i16 @cache_victim(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
