; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_dump_machdep.c_dumpsys_write_aux_headers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_dump_machdep.c_dumpsys_write_aux_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i32, i64, i32, i32 }

@PT_DUMP_DELTA = common dso_local global i32 0, align 4
@PF_R = common dso_local global i32 0, align 4
@KERNVIRTADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dumpsys_write_aux_headers(%struct.dumperinfo* %0) #0 {
  %2 = alloca %struct.dumperinfo*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  store %struct.dumperinfo* %0, %struct.dumperinfo** %2, align 8
  %5 = call i32 @bzero(%struct.TYPE_3__* %3, i32 48)
  %6 = load i32, i32* @PT_DUMP_DELTA, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 7
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @PF_R, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 6
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @KERNVIRTADDR, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @KERNVIRTADDR, align 4
  %14 = call i32 @pmap_kextract(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %21 = bitcast %struct.TYPE_3__* %3 to i8*
  %22 = call i32 @dumpsys_buf_write(%struct.dumperinfo* %20, i8* %21, i32 48)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @bzero(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @dumpsys_buf_write(%struct.dumperinfo*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
