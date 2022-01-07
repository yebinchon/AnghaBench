; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_mad.c_mad_get_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_mad.c_mad_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmad_port = type { i32 }

@madrpc_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mad_get_timeout(%struct.ibmad_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ibmad_port*, align 8
  %4 = alloca i32, align 4
  store %struct.ibmad_port* %0, %struct.ibmad_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  br label %22

9:                                                ; preds = %2
  %10 = load %struct.ibmad_port*, %struct.ibmad_port** %3, align 8
  %11 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.ibmad_port*, %struct.ibmad_port** %3, align 8
  %16 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %20

18:                                               ; preds = %9
  %19 = load i32, i32* @madrpc_timeout, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %17, %14 ], [ %19, %18 ]
  br label %22

22:                                               ; preds = %20, %7
  %23 = phi i32 [ %8, %7 ], [ %21, %20 ]
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
