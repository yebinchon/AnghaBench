; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_send_adv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_send_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32, i32, i32 }
%union.ad_u = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ICMP_ROUTERADVERT = common dso_local global i32 0, align 4
@stopint = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.interface*, i32, i32)* @send_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_adv(%struct.interface* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ad_u, align 8
  %8 = alloca i32, align 4
  store %struct.interface* %0, %struct.interface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @memset(%union.ad_u* %7, i32 0, i32 32)
  %10 = load i32, i32* @ICMP_ROUTERADVERT, align 4
  %11 = bitcast %union.ad_u* %7 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = bitcast %union.ad_u* %7 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = bitcast %union.ad_u* %7 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 2, i32* %16, align 4
  %17 = load i64, i64* @stopint, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.interface*, %struct.interface** %4, align 8
  %22 = getelementptr inbounds %struct.interface, %struct.interface* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 3
  %25 = call i32 @htons(i32 %24)
  br label %26

26:                                               ; preds = %20, %19
  %27 = phi i32 [ 0, %19 ], [ %25, %20 ]
  %28 = bitcast %union.ad_u* %7 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.interface*, %struct.interface** %4, align 8
  %31 = getelementptr inbounds %struct.interface, %struct.interface* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @UNSIGN_PREF(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.interface*, %struct.interface** %4, align 8
  %36 = call i32 @PREF(i32 %34, %struct.interface* %35)
  %37 = call i32 @SIGN_PREF(i32 %36)
  %38 = call i32 @htonl(i32 %37)
  %39 = bitcast %union.ad_u* %7 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %38, i32* %43, align 4
  %44 = load %struct.interface*, %struct.interface** %4, align 8
  %45 = getelementptr inbounds %struct.interface, %struct.interface* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %union.ad_u* %7 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = bitcast %union.ad_u* %7 to %struct.TYPE_4__*
  %53 = bitcast %struct.TYPE_4__* %52 to i32*
  %54 = call i32 @in_cksum(i32* %53, i32 32)
  %55 = bitcast %union.ad_u* %7 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.interface*, %struct.interface** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @send_rdisc(%union.ad_u* %7, i32 32, %struct.interface* %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @memset(%union.ad_u*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @UNSIGN_PREF(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @SIGN_PREF(i32) #1

declare dso_local i32 @PREF(i32, %struct.interface*) #1

declare dso_local i32 @in_cksum(i32*, i32) #1

declare dso_local i32 @send_rdisc(%union.ad_u*, i32, %struct.interface*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
