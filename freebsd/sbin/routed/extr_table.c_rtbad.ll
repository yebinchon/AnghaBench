; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtbad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_entry = type { i32, %struct.rt_spare* }
%struct.rt_spare = type { i32 }

@HOPCNT_INFINITY = common dso_local global i32 0, align 4
@RS_IF = common dso_local global i32 0, align 4
@RS_LOCAL = common dso_local global i32 0, align 4
@RS_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_entry*)* @rtbad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtbad(%struct.rt_entry* %0) #0 {
  %2 = alloca %struct.rt_entry*, align 8
  %3 = alloca %struct.rt_spare, align 4
  store %struct.rt_entry* %0, %struct.rt_entry** %2, align 8
  %4 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %5 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %4, i32 0, i32 1
  %6 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %7 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %6, i64 0
  %8 = bitcast %struct.rt_spare* %3 to i8*
  %9 = bitcast %struct.rt_spare* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 4, i1 false)
  %10 = load i32, i32* @HOPCNT_INFINITY, align 4
  %11 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %13 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %14 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RS_IF, align 4
  %17 = load i32, i32* @RS_LOCAL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RS_STATIC, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %15, %21
  %23 = call i32 @rtchange(%struct.rt_entry* %12, i32 %22, %struct.rt_spare* %3, i32 0)
  %24 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %25 = call i32 @rtswitch(%struct.rt_entry* %24, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rtchange(%struct.rt_entry*, i32, %struct.rt_spare*, i32) #2

declare dso_local i32 @rtswitch(%struct.rt_entry*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
