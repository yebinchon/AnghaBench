; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping.c_krping_get_ipv6_scope_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping.c_krping_get_ipv6_scope_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @krping_get_ipv6_scope_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krping_get_ipv6_scope_id(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load i32, i32* @curthread, align 4
  %11 = call i32 @TD_TO_VNET(i32 %10)
  %12 = call i32 @CURVNET_SET_QUIET(i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.ifnet* @ifunit_ref(i8* %13)
  store %struct.ifnet* %14, %struct.ifnet** %4, align 8
  %15 = call i32 (...) @CURVNET_RESTORE()
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = icmp eq %struct.ifnet* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %26

19:                                               ; preds = %9
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = call i32 @if_rele(%struct.ifnet* %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %18, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @CURVNET_SET_QUIET(i32) #1

declare dso_local i32 @TD_TO_VNET(i32) #1

declare dso_local %struct.ifnet* @ifunit_ref(i8*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @if_rele(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
