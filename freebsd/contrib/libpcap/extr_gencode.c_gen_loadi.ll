; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_loadi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_loadi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arth = type { i32, %struct.slist* }
%struct.slist = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arth* @gen_loadi(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arth*, align 8
  %6 = alloca %struct.slist*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @newchunk(i32* %8, i32 16)
  %10 = inttoptr i64 %9 to %struct.arth*
  store %struct.arth* %10, %struct.arth** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @alloc_reg(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @BPF_LD, align 4
  %15 = load i32, i32* @BPF_IMM, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @new_stmt(i32* %13, i32 %16)
  %18 = bitcast i8* %17 to %struct.slist*
  store %struct.slist* %18, %struct.slist** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.slist*, %struct.slist** %6, align 8
  %21 = getelementptr inbounds %struct.slist, %struct.slist* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @BPF_ST, align 4
  %25 = call i8* @new_stmt(i32* %23, i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_5__*
  %27 = load %struct.slist*, %struct.slist** %6, align 8
  %28 = getelementptr inbounds %struct.slist, %struct.slist* %27, i32 0, i32 0
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.slist*, %struct.slist** %6, align 8
  %31 = getelementptr inbounds %struct.slist, %struct.slist* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  %35 = load %struct.slist*, %struct.slist** %6, align 8
  %36 = load %struct.arth*, %struct.arth** %5, align 8
  %37 = getelementptr inbounds %struct.arth, %struct.arth* %36, i32 0, i32 1
  store %struct.slist* %35, %struct.slist** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.arth*, %struct.arth** %5, align 8
  %40 = getelementptr inbounds %struct.arth, %struct.arth* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.arth*, %struct.arth** %5, align 8
  ret %struct.arth* %41
}

declare dso_local i64 @newchunk(i32*, i32) #1

declare dso_local i32 @alloc_reg(i32*) #1

declare dso_local i8* @new_stmt(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
