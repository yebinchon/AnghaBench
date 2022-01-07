; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_thread_init_invl_gen_u.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_thread_init_invl_gen_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pmap_invl_gen }
%struct.pmap_invl_gen = type { i8*, i64 }

@PMAP_INVL_GEN_NEXT_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @pmap_thread_init_invl_gen_u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_thread_init_invl_gen_u(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.pmap_invl_gen*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.pmap_invl_gen* %6, %struct.pmap_invl_gen** %3, align 8
  %7 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %3, align 8
  %8 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* @PMAP_INVL_GEN_NEXT_INVALID, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %3, align 8
  %12 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
