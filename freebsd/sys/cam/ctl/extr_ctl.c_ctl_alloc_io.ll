; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_alloc_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_alloc_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.ctl_io_pool = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.ctl_io* @ctl_alloc_io(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ctl_io_pool*, align 8
  %4 = alloca %union.ctl_io*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ctl_io_pool*
  store %struct.ctl_io_pool* %7, %struct.ctl_io_pool** %3, align 8
  %8 = load %struct.ctl_io_pool*, %struct.ctl_io_pool** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_io_pool, %struct.ctl_io_pool* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = call %union.ctl_io* @uma_zalloc(i32 %10, i32 %11)
  store %union.ctl_io* %12, %union.ctl_io** %4, align 8
  %13 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %14 = icmp ne %union.ctl_io* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %18 = bitcast %union.ctl_io* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load %struct.ctl_io_pool*, %struct.ctl_io_pool** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_io_pool, %struct.ctl_io_pool* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @TAILQ_INIT(i32* %25)
  br label %27

27:                                               ; preds = %15, %1
  %28 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  ret %union.ctl_io* %28
}

declare dso_local %union.ctl_io* @uma_zalloc(i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
