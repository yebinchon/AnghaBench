; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_init_chu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_init_chu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }

@propagation_delay = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@DEFPROPDELAY = common dso_local global i32 0, align 4
@fudgefactor = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@DEFFILTFUDGE = common dso_local global i32 0, align 4
@offset_fudge = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@yearstart = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_chu() #0 {
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @propagation_delay, i32 0, i32 1), align 8
  %1 = load i32, i32* @DEFPROPDELAY, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @propagation_delay, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fudgefactor, i32 0, i32 1), align 8
  %2 = load i32, i32* @DEFFILTFUDGE, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fudgefactor, i32 0, i32 0), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_6__* @offset_fudge to i8*), i8* align 8 bitcast (%struct.TYPE_6__* @propagation_delay to i8*), i64 16, i1 false)
  %3 = call i32 @L_ADD(%struct.TYPE_6__* @offset_fudge, %struct.TYPE_7__* @fudgefactor)
  store i64 0, i64* @yearstart, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @L_ADD(%struct.TYPE_6__*, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
