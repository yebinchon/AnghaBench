; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_loadlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_loadlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arth = type { i32, %struct.slist* }
%struct.slist = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_LEN = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arth* @gen_loadlen(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.arth*, align 8
  %5 = alloca %struct.slist*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @alloc_reg(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @newchunk(i32* %8, i32 16)
  %10 = inttoptr i64 %9 to %struct.arth*
  store %struct.arth* %10, %struct.arth** %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @BPF_LD, align 4
  %13 = load i32, i32* @BPF_LEN, align 4
  %14 = or i32 %12, %13
  %15 = call i8* @new_stmt(i32* %11, i32 %14)
  %16 = bitcast i8* %15 to %struct.slist*
  store %struct.slist* %16, %struct.slist** %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @BPF_ST, align 4
  %19 = call i8* @new_stmt(i32* %17, i32 %18)
  %20 = bitcast i8* %19 to %struct.TYPE_4__*
  %21 = load %struct.slist*, %struct.slist** %5, align 8
  %22 = getelementptr inbounds %struct.slist, %struct.slist* %21, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.slist*, %struct.slist** %5, align 8
  %25 = getelementptr inbounds %struct.slist, %struct.slist* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 4
  %29 = load %struct.slist*, %struct.slist** %5, align 8
  %30 = load %struct.arth*, %struct.arth** %4, align 8
  %31 = getelementptr inbounds %struct.arth, %struct.arth* %30, i32 0, i32 1
  store %struct.slist* %29, %struct.slist** %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.arth*, %struct.arth** %4, align 8
  %34 = getelementptr inbounds %struct.arth, %struct.arth* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.arth*, %struct.arth** %4, align 8
  ret %struct.arth* %35
}

declare dso_local i32 @alloc_reg(i32*) #1

declare dso_local i64 @newchunk(i32*, i32) #1

declare dso_local i8* @new_stmt(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
