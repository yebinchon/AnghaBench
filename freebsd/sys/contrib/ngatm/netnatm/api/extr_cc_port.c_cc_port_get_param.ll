; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_port_get_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_port_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdata = type { i32 }
%struct.atm_port_info = type { i32 }
%struct.ccport = type { %struct.atm_port_info }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_port_get_param(%struct.ccdata* %0, i32 %1, %struct.atm_port_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atm_port_info*, align 8
  %8 = alloca %struct.ccport*, align 8
  store %struct.ccdata* %0, %struct.ccdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.atm_port_info* %2, %struct.atm_port_info** %7, align 8
  %9 = load %struct.ccdata*, %struct.ccdata** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.ccport* @find_port(%struct.ccdata* %9, i32 %10)
  store %struct.ccport* %11, %struct.ccport** %8, align 8
  %12 = icmp eq %struct.ccport* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOENT, align 4
  store i32 %14, i32* %4, align 4
  br label %21

15:                                               ; preds = %3
  %16 = load %struct.atm_port_info*, %struct.atm_port_info** %7, align 8
  %17 = load %struct.ccport*, %struct.ccport** %8, align 8
  %18 = getelementptr inbounds %struct.ccport, %struct.ccport* %17, i32 0, i32 0
  %19 = bitcast %struct.atm_port_info* %16 to i8*
  %20 = bitcast %struct.atm_port_info* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %15, %13
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local %struct.ccport* @find_port(%struct.ccdata*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
