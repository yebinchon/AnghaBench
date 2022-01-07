; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_set_ah_attr_by_ipv6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_set_ah_attr_by_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_ah_attr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }
%struct.ibv_grh = type { i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IBV_GID_TYPE_ROCE_V2 = common dso_local global i32 0, align 4
@IB_NEXT_HDR = common dso_local global i64 0, align 8
@IBV_GID_TYPE_IB_ROCE_V1 = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_context*, %struct.ibv_ah_attr*, %struct.ibv_grh*, i64)* @set_ah_attr_by_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ah_attr_by_ipv6(%struct.ibv_context* %0, %struct.ibv_ah_attr* %1, %struct.ibv_grh* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca %struct.ibv_ah_attr*, align 8
  %8 = alloca %struct.ibv_grh*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %6, align 8
  store %struct.ibv_ah_attr* %1, %struct.ibv_ah_attr** %7, align 8
  store %struct.ibv_grh* %2, %struct.ibv_grh** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.ibv_grh*, %struct.ibv_grh** %8, align 8
  %14 = getelementptr inbounds %struct.ibv_grh, %struct.ibv_grh* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %80

22:                                               ; preds = %4
  %23 = load %struct.ibv_grh*, %struct.ibv_grh** %8, align 8
  %24 = getelementptr inbounds %struct.ibv_grh, %struct.ibv_grh* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %27 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = load %struct.ibv_grh*, %struct.ibv_grh** %8, align 8
  %30 = getelementptr inbounds %struct.ibv_grh, %struct.ibv_grh* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPPROTO_UDP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @IBV_GID_TYPE_ROCE_V2, align 4
  store i32 %35, i32* %11, align 4
  br label %47

36:                                               ; preds = %22
  %37 = load %struct.ibv_grh*, %struct.ibv_grh** %8, align 8
  %38 = getelementptr inbounds %struct.ibv_grh, %struct.ibv_grh* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IB_NEXT_HDR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @IBV_GID_TYPE_IB_ROCE_V1, align 4
  store i32 %43, i32* %11, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %45, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %80

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.ibv_grh*, %struct.ibv_grh** %8, align 8
  %51 = getelementptr inbounds %struct.ibv_grh, %struct.ibv_grh* %50, i32 0, i32 3
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @ibv_find_gid_index(%struct.ibv_context* %48, i64 %49, %struct.TYPE_4__* %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %80

58:                                               ; preds = %47
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %62 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i64 %60, i64* %63, align 8
  %64 = load %struct.ibv_grh*, %struct.ibv_grh** %8, align 8
  %65 = getelementptr inbounds %struct.ibv_grh, %struct.ibv_grh* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32toh(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.ibv_grh*, %struct.ibv_grh** %8, align 8
  %69 = getelementptr inbounds %struct.ibv_grh, %struct.ibv_grh* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %72 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 20
  %76 = and i32 %75, 255
  %77 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %78 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %58, %56, %44, %20
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @ibv_find_gid_index(%struct.ibv_context*, i64, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
