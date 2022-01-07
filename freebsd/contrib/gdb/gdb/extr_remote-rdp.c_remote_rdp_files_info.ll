; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_remote_rdp_files_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_remote_rdp_files_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.target_ops = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Target capabilities:\0A\00", align 1
@stepinfo = common dso_local global i32 0, align 4
@ds = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@breakinfo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"target level RDI %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target_ops*)* @remote_rdp_files_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_rdp_files_info(%struct.target_ops* %0) #0 {
  %2 = alloca %struct.target_ops*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %2, align 8
  %3 = call i32 @printf_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @stepinfo, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds, i32 0, i32 2), align 4
  %6 = call i32 @dump_bits(i32 %4, i32 %5)
  %7 = load i32, i32* @breakinfo, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds, i32 0, i32 1), align 4
  %9 = call i32 @dump_bits(i32 %7, i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds, i32 0, i32 0), align 4
  %11 = ashr i32 %10, 5
  %12 = and i32 %11, 3
  %13 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  ret void
}

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i32 @dump_bits(i32, i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
