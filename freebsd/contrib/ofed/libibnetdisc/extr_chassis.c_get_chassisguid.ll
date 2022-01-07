; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_chassis.c_get_chassisguid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_chassis.c_get_chassisguid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@IB_NODE_VENDORID_F = common dso_local global i32 0, align 4
@IB_NODE_SYSTEM_GUID_F = common dso_local global i32 0, align 4
@TS_VENDOR_ID = common dso_local global i64 0, align 8
@SS_VENDOR_ID = common dso_local global i64 0, align 8
@XS_VENDOR_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @get_chassisguid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_chassisguid(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IB_NODE_VENDORID_F, align 4
  %10 = call i64 @mad_get_field(i32 %8, i32 0, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IB_NODE_SYSTEM_GUID_F, align 4
  %15 = call i32 @mad_get_field64(i32 %13, i32 0, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @TS_VENDOR_ID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @SS_VENDOR_ID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @topspin_chassisguid(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %19
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @XS_VENDOR_ID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @ibnd_is_xsigo_guid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = call i32 @xsigo_chassisguid(%struct.TYPE_4__* %35)
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %34, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @mad_get_field(i32, i32, i32) #1

declare dso_local i32 @mad_get_field64(i32, i32, i32) #1

declare dso_local i32 @topspin_chassisguid(i32) #1

declare dso_local i64 @ibnd_is_xsigo_guid(i32) #1

declare dso_local i32 @xsigo_chassisguid(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
