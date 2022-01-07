; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_close_xrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_close_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.verbs_xrcd = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ibv_close_xrcd = type { i32 }

@CLOSE_XRCD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_close_xrcd(%struct.verbs_xrcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.verbs_xrcd*, align 8
  %4 = alloca %struct.ibv_close_xrcd, align 4
  store %struct.verbs_xrcd* %0, %struct.verbs_xrcd** %3, align 8
  %5 = load i32, i32* @CLOSE_XRCD, align 4
  %6 = call i32 @IBV_INIT_CMD(%struct.ibv_close_xrcd* %4, i32 4, i32 %5)
  %7 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %3, align 8
  %8 = getelementptr inbounds %struct.verbs_xrcd, %struct.verbs_xrcd* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.ibv_close_xrcd, %struct.ibv_close_xrcd* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %3, align 8
  %12 = getelementptr inbounds %struct.verbs_xrcd, %struct.verbs_xrcd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @write(i32 %16, %struct.ibv_close_xrcd* %4, i32 4)
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @IBV_INIT_CMD(%struct.ibv_close_xrcd*, i32, i32) #1

declare dso_local i32 @write(i32, %struct.ibv_close_xrcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
