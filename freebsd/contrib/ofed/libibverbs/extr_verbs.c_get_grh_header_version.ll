; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_get_grh_header_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_get_grh_header_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_grh = type { i32 }
%struct.ip = type { i32, i32, i64 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_grh*)* @get_grh_header_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_grh_header_version(%struct.ibv_grh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_grh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip*, align 8
  %6 = alloca %struct.ip, align 8
  store %struct.ibv_grh* %0, %struct.ibv_grh** %3, align 8
  %7 = load %struct.ibv_grh*, %struct.ibv_grh** %3, align 8
  %8 = getelementptr inbounds %struct.ibv_grh, %struct.ibv_grh* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @be32toh(i32 %9)
  %11 = ashr i32 %10, 28
  %12 = and i32 %11, 15
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ibv_grh*, %struct.ibv_grh** %3, align 8
  %14 = bitcast %struct.ibv_grh* %13 to i8*
  %15 = getelementptr i8, i8* %14, i64 20
  %16 = bitcast i8* %15 to %struct.ip*
  store %struct.ip* %16, %struct.ip** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 6
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.ip*, %struct.ip** %5, align 8
  %21 = getelementptr inbounds %struct.ip, %struct.ip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 4, i32* %2, align 4
  br label %48

25:                                               ; preds = %19
  %26 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %48

27:                                               ; preds = %1
  %28 = load %struct.ip*, %struct.ip** %5, align 8
  %29 = getelementptr inbounds %struct.ip, %struct.ip* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 5
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 6, i32* %2, align 4
  br label %48

33:                                               ; preds = %27
  %34 = load %struct.ip*, %struct.ip** %5, align 8
  %35 = call i32 @memcpy(%struct.ip* %6, %struct.ip* %34, i32 16)
  %36 = getelementptr inbounds %struct.ip, %struct.ip* %6, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = bitcast %struct.ip* %6 to i32*
  %38 = call i64 @ipv4_calc_hdr_csum(i32* %37, i32 10)
  %39 = getelementptr inbounds %struct.ip, %struct.ip* %6, i32 0, i32 2
  store i64 %38, i64* %39, align 8
  %40 = load %struct.ip*, %struct.ip** %5, align 8
  %41 = getelementptr inbounds %struct.ip, %struct.ip* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.ip, %struct.ip* %6, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  store i32 4, i32* %2, align 4
  br label %48

47:                                               ; preds = %33
  store i32 6, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %46, %32, %25, %24
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @memcpy(%struct.ip*, %struct.ip*, i32) #1

declare dso_local i64 @ipv4_calc_hdr_csum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
