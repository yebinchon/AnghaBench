; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mktime.c_mkdst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mktime.c_mkdst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@mkdst.tmbuf = internal global %struct.tm zeroinitializer, align 4
@DSTMINUTES = common dso_local global i64 0, align 8
@MINSPERHOUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tm* (%struct.tm*)* @mkdst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tm* @mkdst(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  store %struct.tm* %0, %struct.tm** %2, align 8
  %3 = load %struct.tm*, %struct.tm** %2, align 8
  %4 = bitcast %struct.tm* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.tm* @mkdst.tmbuf to i8*), i8* align 4 %4, i64 12, i1 false)
  store i32 1, i32* getelementptr inbounds (%struct.tm, %struct.tm* @mkdst.tmbuf, i32 0, i32 0), align 4
  %5 = load i64, i64* @DSTMINUTES, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.tm, %struct.tm* @mkdst.tmbuf, i32 0, i32 1), align 4
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, %5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* getelementptr inbounds (%struct.tm, %struct.tm* @mkdst.tmbuf, i32 0, i32 1), align 4
  %10 = load i32, i32* @MINSPERHOUR, align 4
  %11 = call i32 @normalize(i32* getelementptr inbounds (%struct.tm, %struct.tm* @mkdst.tmbuf, i32 0, i32 2), i32* getelementptr inbounds (%struct.tm, %struct.tm* @mkdst.tmbuf, i32 0, i32 1), i32 %10)
  ret %struct.tm* @mkdst.tmbuf
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @normalize(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
