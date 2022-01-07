; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_get_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_stats = type { i32, i32, i32*, %struct.timeval }
%struct.timeval = type { i32 }
%struct.vmctx = type { i32 }

@vm_get_stats.vmstats = internal global %struct.vm_stats zeroinitializer, align 8
@VM_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vm_get_stats(%struct.vmctx* %0, i32 %1, %struct.timeval* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vmctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.timeval* %2, %struct.timeval** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.vm_stats, %struct.vm_stats* @vm_get_stats.vmstats, i32 0, i32 0), align 8
  %12 = load %struct.vmctx*, %struct.vmctx** %6, align 8
  %13 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VM_STATS, align 4
  %16 = call i32 @ioctl(i32 %14, i32 %15, %struct.vm_stats* @vm_get_stats.vmstats)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* getelementptr inbounds (%struct.vm_stats, %struct.vm_stats* @vm_get_stats.vmstats, i32 0, i32 1), align 4
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.timeval*, %struct.timeval** %8, align 8
  %27 = icmp ne %struct.timeval* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.timeval*, %struct.timeval** %8, align 8
  %30 = bitcast %struct.timeval* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 8 bitcast (%struct.timeval* getelementptr inbounds (%struct.vm_stats, %struct.vm_stats* @vm_get_stats.vmstats, i32 0, i32 3) to i8*), i64 4, i1 false)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32*, i32** getelementptr inbounds (%struct.vm_stats, %struct.vm_stats* @vm_get_stats.vmstats, i32 0, i32 2), align 8
  store i32* %32, i32** %5, align 8
  br label %34

33:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i32*, i32** %5, align 8
  ret i32* %35
}

declare dso_local i32 @ioctl(i32, i32, %struct.vm_stats*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
