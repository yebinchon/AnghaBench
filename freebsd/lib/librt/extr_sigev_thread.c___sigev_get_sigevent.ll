; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c___sigev_get_sigevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c___sigev_get_sigevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigev_node = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sigevent = type { %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { i8* }

@SIGEV_THREAD_ID = common dso_local global i32 0, align 4
@SIGLIBRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__sigev_get_sigevent(%struct.sigev_node* %0, %struct.sigevent* %1, i64 %2) #0 {
  %4 = alloca %struct.sigev_node*, align 8
  %5 = alloca %struct.sigevent*, align 8
  %6 = alloca i64, align 8
  store %struct.sigev_node* %0, %struct.sigev_node** %4, align 8
  store %struct.sigevent* %1, %struct.sigevent** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @SIGEV_THREAD_ID, align 4
  %8 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %9 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @SIGLIBRT, align 4
  %11 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %12 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.sigev_node*, %struct.sigev_node** %4, align 8
  %14 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %19 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %23 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
