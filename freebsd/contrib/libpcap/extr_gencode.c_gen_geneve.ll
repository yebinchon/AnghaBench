; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.slist* }
%struct.slist = type { i32 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_geneve(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.block*, align 8
  %7 = alloca %struct.slist*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.block* @gen_geneve4(%struct.TYPE_7__* %8, i32 %9)
  store %struct.block* %10, %struct.block** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.block* @gen_geneve6(%struct.TYPE_7__* %11, i32 %12)
  store %struct.block* %13, %struct.block** %6, align 8
  %14 = load %struct.block*, %struct.block** %5, align 8
  %15 = load %struct.block*, %struct.block** %6, align 8
  %16 = call i32 @gen_or(%struct.block* %14, %struct.block* %15)
  %17 = load %struct.block*, %struct.block** %6, align 8
  store %struct.block* %17, %struct.block** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = call %struct.slist* @gen_geneve_offsets(%struct.TYPE_7__* %18)
  store %struct.slist* %19, %struct.slist** %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = call %struct.block* @gen_true(%struct.TYPE_7__* %20)
  store %struct.block* %21, %struct.block** %6, align 8
  %22 = load %struct.slist*, %struct.slist** %7, align 8
  %23 = load %struct.block*, %struct.block** %6, align 8
  %24 = getelementptr inbounds %struct.block, %struct.block* %23, i32 0, i32 0
  %25 = load %struct.slist*, %struct.slist** %24, align 8
  %26 = call i32 @sappend(%struct.slist* %22, %struct.slist* %25)
  %27 = load %struct.slist*, %struct.slist** %7, align 8
  %28 = load %struct.block*, %struct.block** %6, align 8
  %29 = getelementptr inbounds %struct.block, %struct.block* %28, i32 0, i32 0
  store %struct.slist* %27, %struct.slist** %29, align 8
  %30 = load %struct.block*, %struct.block** %5, align 8
  %31 = load %struct.block*, %struct.block** %6, align 8
  %32 = call i32 @gen_and(%struct.block* %30, %struct.block* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.block*, %struct.block** %6, align 8
  ret %struct.block* %35
}

declare dso_local %struct.block* @gen_geneve4(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.block* @gen_geneve6(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local %struct.slist* @gen_geneve_offsets(%struct.TYPE_7__*) #1

declare dso_local %struct.block* @gen_true(%struct.TYPE_7__*) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
