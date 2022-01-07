; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_portrangeop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_portrangeop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@OR_LINKPL = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_portrangeop(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.block*, align 8
  %12 = alloca %struct.block*, align 8
  %13 = alloca %struct.block*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @OR_LINKPL, align 4
  %16 = load i32, i32* @BPF_B, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.block* @gen_cmp(i32* %14, i32 %15, i32 9, i32 %16, i32 %17)
  store %struct.block* %18, %struct.block** %13, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.block* @gen_ipfrag(i32* %19)
  store %struct.block* %20, %struct.block** %11, align 8
  %21 = load %struct.block*, %struct.block** %13, align 8
  %22 = load %struct.block*, %struct.block** %11, align 8
  %23 = call i32 @gen_and(%struct.block* %21, %struct.block* %22)
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %59 [
    i32 128, label %25
    i32 130, label %30
    i32 129, label %35
    i32 131, label %35
    i32 132, label %47
  ]

25:                                               ; preds = %5
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.block* @gen_portrangeatom(i32* %26, i32 0, i32 %27, i32 %28)
  store %struct.block* %29, %struct.block** %12, align 8
  br label %61

30:                                               ; preds = %5
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.block* @gen_portrangeatom(i32* %31, i32 2, i32 %32, i32 %33)
  store %struct.block* %34, %struct.block** %12, align 8
  br label %61

35:                                               ; preds = %5, %5
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.block* @gen_portrangeatom(i32* %36, i32 0, i32 %37, i32 %38)
  store %struct.block* %39, %struct.block** %13, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.block* @gen_portrangeatom(i32* %40, i32 2, i32 %41, i32 %42)
  store %struct.block* %43, %struct.block** %12, align 8
  %44 = load %struct.block*, %struct.block** %13, align 8
  %45 = load %struct.block*, %struct.block** %12, align 8
  %46 = call i32 @gen_or(%struct.block* %44, %struct.block* %45)
  br label %61

47:                                               ; preds = %5
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call %struct.block* @gen_portrangeatom(i32* %48, i32 0, i32 %49, i32 %50)
  store %struct.block* %51, %struct.block** %13, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.block* @gen_portrangeatom(i32* %52, i32 2, i32 %53, i32 %54)
  store %struct.block* %55, %struct.block** %12, align 8
  %56 = load %struct.block*, %struct.block** %13, align 8
  %57 = load %struct.block*, %struct.block** %12, align 8
  %58 = call i32 @gen_and(%struct.block* %56, %struct.block* %57)
  br label %61

59:                                               ; preds = %5
  %60 = call i32 (...) @abort() #3
  unreachable

61:                                               ; preds = %47, %35, %30, %25
  %62 = load %struct.block*, %struct.block** %11, align 8
  %63 = load %struct.block*, %struct.block** %12, align 8
  %64 = call i32 @gen_and(%struct.block* %62, %struct.block* %63)
  %65 = load %struct.block*, %struct.block** %12, align 8
  ret %struct.block* %65
}

declare dso_local %struct.block* @gen_cmp(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.block* @gen_ipfrag(i32*) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_portrangeatom(i32*, i32, i32, i32) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

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
