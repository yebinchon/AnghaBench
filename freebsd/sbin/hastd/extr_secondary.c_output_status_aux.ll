; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_output_status_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_output_status_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv = type { i32 }

@hio_free_list_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"idle_queue_size\00", align 1
@hio_disk_list_size = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"local_queue_size\00", align 1
@hio_send_list_size = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"send_queue_size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv*)* @output_status_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_status_aux(%struct.nv* %0) #0 {
  %2 = alloca %struct.nv*, align 8
  store %struct.nv* %0, %struct.nv** %2, align 8
  %3 = load %struct.nv*, %struct.nv** %2, align 8
  %4 = load i64, i64* @hio_free_list_size, align 8
  %5 = trunc i64 %4 to i32
  %6 = call i32 @nv_add_uint64(%struct.nv* %3, i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.nv*, %struct.nv** %2, align 8
  %8 = load i64, i64* @hio_disk_list_size, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 @nv_add_uint64(%struct.nv* %7, i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.nv*, %struct.nv** %2, align 8
  %12 = load i64, i64* @hio_send_list_size, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @nv_add_uint64(%struct.nv* %11, i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @nv_add_uint64(%struct.nv*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
