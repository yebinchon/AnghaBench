; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_geturb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_geturb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.usbd_urb = type { i32 }
%struct.io_stack_location = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %union.usbd_urb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.usbd_urb* (i32*)* @usbd_geturb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.usbd_urb* @usbd_geturb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.io_stack_location*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.io_stack_location* @IoGetCurrentIrpStackLocation(i32* %4)
  store %struct.io_stack_location* %5, %struct.io_stack_location** %3, align 8
  %6 = load %struct.io_stack_location*, %struct.io_stack_location** %3, align 8
  %7 = getelementptr inbounds %struct.io_stack_location, %struct.io_stack_location* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %union.usbd_urb*, %union.usbd_urb** %9, align 8
  ret %union.usbd_urb* %10
}

declare dso_local %struct.io_stack_location* @IoGetCurrentIrpStackLocation(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
