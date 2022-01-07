; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_neg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arth = type { i32, i64 }
%struct.slist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BPF_ALU = common dso_local global i32 0, align 4
@BPF_NEG = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arth* @gen_neg(i32* %0, %struct.arth* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.arth*, align 8
  %5 = alloca %struct.slist*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.arth* %1, %struct.arth** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.arth*, %struct.arth** %4, align 8
  %8 = call %struct.slist* @xfer_to_a(i32* %6, %struct.arth* %7)
  store %struct.slist* %8, %struct.slist** %5, align 8
  %9 = load %struct.arth*, %struct.arth** %4, align 8
  %10 = getelementptr inbounds %struct.arth, %struct.arth* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.slist*, %struct.slist** %5, align 8
  %13 = call i32 @sappend(i32 %11, %struct.slist* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @BPF_ALU, align 4
  %16 = load i32, i32* @BPF_NEG, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.slist* @new_stmt(i32* %14, i32 %17)
  store %struct.slist* %18, %struct.slist** %5, align 8
  %19 = load %struct.slist*, %struct.slist** %5, align 8
  %20 = getelementptr inbounds %struct.slist, %struct.slist* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.arth*, %struct.arth** %4, align 8
  %23 = getelementptr inbounds %struct.arth, %struct.arth* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.slist*, %struct.slist** %5, align 8
  %26 = call i32 @sappend(i32 %24, %struct.slist* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @BPF_ST, align 4
  %29 = call %struct.slist* @new_stmt(i32* %27, i32 %28)
  store %struct.slist* %29, %struct.slist** %5, align 8
  %30 = load %struct.arth*, %struct.arth** %4, align 8
  %31 = getelementptr inbounds %struct.arth, %struct.arth* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.slist*, %struct.slist** %5, align 8
  %34 = getelementptr inbounds %struct.slist, %struct.slist* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.arth*, %struct.arth** %4, align 8
  %37 = getelementptr inbounds %struct.arth, %struct.arth* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.slist*, %struct.slist** %5, align 8
  %40 = call i32 @sappend(i32 %38, %struct.slist* %39)
  %41 = load %struct.arth*, %struct.arth** %4, align 8
  ret %struct.arth* %41
}

declare dso_local %struct.slist* @xfer_to_a(i32*, %struct.arth*) #1

declare dso_local i32 @sappend(i32, %struct.slist*) #1

declare dso_local %struct.slist* @new_stmt(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
