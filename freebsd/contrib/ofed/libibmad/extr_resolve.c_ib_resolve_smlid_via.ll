; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_resolve.c_ib_resolve_smlid_via.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_resolve.c_ib_resolve_smlid_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.ibmad_port = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_resolve_smlid_via(%struct.TYPE_9__* %0, i32 %1, %struct.ibmad_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibmad_port*, align 8
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ibmad_port* %2, %struct.ibmad_port** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = call i32 @memset(%struct.TYPE_9__* %10, i32 0, i32 4)
  %12 = load %struct.ibmad_port*, %struct.ibmad_port** %7, align 8
  %13 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ibmad_port*, %struct.ibmad_port** %7, align 8
  %16 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @umad_get_port(i32 %14, i32 %17, %struct.TYPE_8__* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %40

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IB_LID_VALID(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %40

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ib_portid_set(%struct.TYPE_9__* %34, i32 %36, i32 0, i32 0)
  store i32 %37, i32* %9, align 4
  %38 = call i32 @umad_release_port(%struct.TYPE_8__* %8)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %29, %27, %21
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @umad_get_port(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @IB_LID_VALID(i32) #1

declare dso_local i32 @ib_portid_set(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @umad_release_port(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
