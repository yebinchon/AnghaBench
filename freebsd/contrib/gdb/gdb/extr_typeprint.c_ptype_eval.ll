; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_ptype_eval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_ptype_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.type* }

@OP_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.expression*)* @ptype_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @ptype_eval(%struct.expression* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.expression*, align 8
  store %struct.expression* %0, %struct.expression** %3, align 8
  %4 = load %struct.expression*, %struct.expression** %3, align 8
  %5 = getelementptr inbounds %struct.expression, %struct.expression* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @OP_TYPE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.expression*, %struct.expression** %3, align 8
  %14 = getelementptr inbounds %struct.expression, %struct.expression* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.type*, %struct.type** %17, align 8
  store %struct.type* %18, %struct.type** %2, align 8
  br label %20

19:                                               ; preds = %1
  store %struct.type* null, %struct.type** %2, align 8
  br label %20

20:                                               ; preds = %19, %12
  %21 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
