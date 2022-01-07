; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_get_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_nat64lsn_stats = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IP_FW_NAT64LSN_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.ipfw_nat64lsn_stats*)* @nat64lsn_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_get_stats(i8* %0, i32 %1, %struct.ipfw_nat64lsn_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipfw_nat64lsn_stats*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ipfw_nat64lsn_stats* %2, %struct.ipfw_nat64lsn_stats** %7, align 8
  store i64 16, i64* %10, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call %struct.TYPE_4__* @calloc(i32 1, i64 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @nat64lsn_fill_ntlv(i32* %14, i8* %15, i32 %16)
  %18 = load i32, i32* @IP_FW_NAT64LSN_STATS, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i64 @do_get3(i32 %18, i32* %20, i64* %10)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 1
  %26 = bitcast %struct.TYPE_4__* %25 to i32*
  store i32* %26, i32** %9, align 8
  %27 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %7, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @memcpy(%struct.ipfw_nat64lsn_stats* %27, i32* %29, i32 4)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = call i32 @free(%struct.TYPE_4__* %31)
  store i32 0, i32* %4, align 4
  br label %36

33:                                               ; preds = %3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = call i32 @free(%struct.TYPE_4__* %34)
  store i32 -1, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %23
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_4__* @calloc(i32, i64) #1

declare dso_local i32 @nat64lsn_fill_ntlv(i32*, i8*, i32) #1

declare dso_local i64 @do_get3(i32, i32*, i64*) #1

declare dso_local i32 @memcpy(%struct.ipfw_nat64lsn_stats*, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
