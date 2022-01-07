; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_ndbm_wrap.c___roken_dbm_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_ndbm_wrap.c___roken_dbm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 (%struct.TYPE_13__*, i32*, i32*, i32)* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32*, i32*, i32)*, i32 (%struct.TYPE_12__*, i32*, %struct.TYPE_13__**, i32)* }
%struct.TYPE_11__ = type { i64, i32* }

@cursor = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32* } (%struct.TYPE_12__*, i32)* @dbm_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32* } @dbm_get(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_12__*, i32*, i32*, i32)*, i32 (%struct.TYPE_12__*, i32*, i32*, i32)** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 %10(%struct.TYPE_12__* %11, i32* %6, i32* %7, i32 %12)
  %14 = call i32 @DBT2DATUM(i32* %7, %struct.TYPE_11__* %3)
  %15 = bitcast %struct.TYPE_11__* %3 to { i64, i32* }*
  %16 = load { i64, i32* }, { i64, i32* }* %15, align 8
  ret { i64, i32* } %16
}

declare dso_local i32 @DBT2DATUM(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
