; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_portrangeop6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_portrangeop6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@OR_LINKPL = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_portrangeop6(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %18 = call %struct.block* @gen_cmp(i32* %14, i32 %15, i32 6, i32 %16, i32 %17)
  store %struct.block* %18, %struct.block** %11, align 8
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %54 [
    i32 128, label %20
    i32 130, label %25
    i32 129, label %30
    i32 131, label %30
    i32 132, label %42
  ]

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.block* @gen_portrangeatom6(i32* %21, i32 0, i32 %22, i32 %23)
  store %struct.block* %24, %struct.block** %12, align 8
  br label %56

25:                                               ; preds = %5
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.block* @gen_portrangeatom6(i32* %26, i32 2, i32 %27, i32 %28)
  store %struct.block* %29, %struct.block** %12, align 8
  br label %56

30:                                               ; preds = %5, %5
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.block* @gen_portrangeatom6(i32* %31, i32 0, i32 %32, i32 %33)
  store %struct.block* %34, %struct.block** %13, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.block* @gen_portrangeatom6(i32* %35, i32 2, i32 %36, i32 %37)
  store %struct.block* %38, %struct.block** %12, align 8
  %39 = load %struct.block*, %struct.block** %13, align 8
  %40 = load %struct.block*, %struct.block** %12, align 8
  %41 = call i32 @gen_or(%struct.block* %39, %struct.block* %40)
  br label %56

42:                                               ; preds = %5
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.block* @gen_portrangeatom6(i32* %43, i32 0, i32 %44, i32 %45)
  store %struct.block* %46, %struct.block** %13, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.block* @gen_portrangeatom6(i32* %47, i32 2, i32 %48, i32 %49)
  store %struct.block* %50, %struct.block** %12, align 8
  %51 = load %struct.block*, %struct.block** %13, align 8
  %52 = load %struct.block*, %struct.block** %12, align 8
  %53 = call i32 @gen_and(%struct.block* %51, %struct.block* %52)
  br label %56

54:                                               ; preds = %5
  %55 = call i32 (...) @abort() #3
  unreachable

56:                                               ; preds = %42, %30, %25, %20
  %57 = load %struct.block*, %struct.block** %11, align 8
  %58 = load %struct.block*, %struct.block** %12, align 8
  %59 = call i32 @gen_and(%struct.block* %57, %struct.block* %58)
  %60 = load %struct.block*, %struct.block** %12, align 8
  ret %struct.block* %60
}

declare dso_local %struct.block* @gen_cmp(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.block* @gen_portrangeatom6(i32*, i32, i32, i32) #1

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
