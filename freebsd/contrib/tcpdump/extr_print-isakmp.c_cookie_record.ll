; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_cookie_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_cookie_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ip = type { i32, i32 }
%struct.ip6_hdr = type { i32, i32 }

@MAXINITIATORS = common dso_local global i32 0, align 4
@ninitiator = common dso_local global i64 0, align 8
@cookiecache = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @cookie_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cookie_record(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip*, align 8
  %7 = alloca %struct.ip6_hdr*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @cookie_find(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 0, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* @MAXINITIATORS, align 4
  %16 = srem i32 %14, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* @ninitiator, align 8
  br label %80

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = bitcast i32* %19 to %struct.ip*
  store %struct.ip* %20, %struct.ip** %6, align 8
  %21 = load %struct.ip*, %struct.ip** %6, align 8
  %22 = call i32 @IP_V(%struct.ip* %21)
  switch i32 %22, label %67 [
    i32 4, label %23
    i32 6, label %44
  ]

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookiecache, align 8
  %25 = load i64, i64* @ninitiator, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 4, i32* %27, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookiecache, align 8
  %29 = load i64, i64* @ninitiator, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.ip*, %struct.ip** %6, align 8
  %34 = getelementptr inbounds %struct.ip, %struct.ip* %33, i32 0, i32 1
  %35 = call i32 @UNALIGNED_MEMCPY(i32* %32, i32* %34, i32 4)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookiecache, align 8
  %37 = load i64, i64* @ninitiator, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.ip*, %struct.ip** %6, align 8
  %42 = getelementptr inbounds %struct.ip, %struct.ip* %41, i32 0, i32 0
  %43 = call i32 @UNALIGNED_MEMCPY(i32* %40, i32* %42, i32 4)
  br label %68

44:                                               ; preds = %18
  %45 = load i32*, i32** %4, align 8
  %46 = bitcast i32* %45 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %46, %struct.ip6_hdr** %7, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookiecache, align 8
  %48 = load i64, i64* @ninitiator, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 6, i32* %50, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookiecache, align 8
  %52 = load i64, i64* @ninitiator, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.ip6_hdr*, %struct.ip6_hdr** %7, align 8
  %57 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %56, i32 0, i32 1
  %58 = call i32 @UNALIGNED_MEMCPY(i32* %55, i32* %57, i32 4)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookiecache, align 8
  %60 = load i64, i64* @ninitiator, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.ip6_hdr*, %struct.ip6_hdr** %7, align 8
  %65 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i32 0, i32 0
  %66 = call i32 @UNALIGNED_MEMCPY(i32* %63, i32* %65, i32 4)
  br label %68

67:                                               ; preds = %18
  br label %80

68:                                               ; preds = %44, %23
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookiecache, align 8
  %70 = load i64, i64* @ninitiator, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @UNALIGNED_MEMCPY(i32* %72, i32* %73, i32 4)
  %75 = load i64, i64* @ninitiator, align 8
  %76 = add i64 %75, 1
  %77 = load i32, i32* @MAXINITIATORS, align 4
  %78 = sext i32 %77 to i64
  %79 = urem i64 %76, %78
  store i64 %79, i64* @ninitiator, align 8
  br label %80

80:                                               ; preds = %68, %67, %12
  ret void
}

declare dso_local i32 @cookie_find(i32*) #1

declare dso_local i32 @IP_V(%struct.ip*) #1

declare dso_local i32 @UNALIGNED_MEMCPY(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
