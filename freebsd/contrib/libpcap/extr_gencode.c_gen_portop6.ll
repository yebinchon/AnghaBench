; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_portop6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_portop6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@OR_LINKPL = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_portop6(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.block*, align 8
  %10 = alloca %struct.block*, align 8
  %11 = alloca %struct.block*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @OR_LINKPL, align 4
  %14 = load i32, i32* @BPF_B, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.block* @gen_cmp(i32* %12, i32 %13, i32 6, i32 %14, i32 %15)
  store %struct.block* %16, %struct.block** %9, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %46 [
    i32 128, label %18
    i32 130, label %22
    i32 129, label %26
    i32 131, label %26
    i32 132, label %36
  ]

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.block* @gen_portatom6(i32* %19, i32 0, i32 %20)
  store %struct.block* %21, %struct.block** %10, align 8
  br label %48

22:                                               ; preds = %4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.block* @gen_portatom6(i32* %23, i32 2, i32 %24)
  store %struct.block* %25, %struct.block** %10, align 8
  br label %48

26:                                               ; preds = %4, %4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.block* @gen_portatom6(i32* %27, i32 0, i32 %28)
  store %struct.block* %29, %struct.block** %11, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.block* @gen_portatom6(i32* %30, i32 2, i32 %31)
  store %struct.block* %32, %struct.block** %10, align 8
  %33 = load %struct.block*, %struct.block** %11, align 8
  %34 = load %struct.block*, %struct.block** %10, align 8
  %35 = call i32 @gen_or(%struct.block* %33, %struct.block* %34)
  br label %48

36:                                               ; preds = %4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.block* @gen_portatom6(i32* %37, i32 0, i32 %38)
  store %struct.block* %39, %struct.block** %11, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.block* @gen_portatom6(i32* %40, i32 2, i32 %41)
  store %struct.block* %42, %struct.block** %10, align 8
  %43 = load %struct.block*, %struct.block** %11, align 8
  %44 = load %struct.block*, %struct.block** %10, align 8
  %45 = call i32 @gen_and(%struct.block* %43, %struct.block* %44)
  br label %48

46:                                               ; preds = %4
  %47 = call i32 (...) @abort() #3
  unreachable

48:                                               ; preds = %36, %26, %22, %18
  %49 = load %struct.block*, %struct.block** %9, align 8
  %50 = load %struct.block*, %struct.block** %10, align 8
  %51 = call i32 @gen_and(%struct.block* %49, %struct.block* %50)
  %52 = load %struct.block*, %struct.block** %10, align 8
  ret %struct.block* %52
}

declare dso_local %struct.block* @gen_cmp(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.block* @gen_portatom6(i32*, i32, i32) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
