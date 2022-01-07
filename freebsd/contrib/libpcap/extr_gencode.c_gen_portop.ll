; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_portop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_portop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@OR_LINKPL = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_portop(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = call %struct.block* @gen_cmp(i32* %12, i32 %13, i32 9, i32 %14, i32 %15)
  store %struct.block* %16, %struct.block** %11, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.block* @gen_ipfrag(i32* %17)
  store %struct.block* %18, %struct.block** %9, align 8
  %19 = load %struct.block*, %struct.block** %11, align 8
  %20 = load %struct.block*, %struct.block** %9, align 8
  %21 = call i32 @gen_and(%struct.block* %19, %struct.block* %20)
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %51 [
    i32 128, label %23
    i32 130, label %27
    i32 129, label %31
    i32 131, label %31
    i32 132, label %41
  ]

23:                                               ; preds = %4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.block* @gen_portatom(i32* %24, i32 0, i32 %25)
  store %struct.block* %26, %struct.block** %10, align 8
  br label %53

27:                                               ; preds = %4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.block* @gen_portatom(i32* %28, i32 2, i32 %29)
  store %struct.block* %30, %struct.block** %10, align 8
  br label %53

31:                                               ; preds = %4, %4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.block* @gen_portatom(i32* %32, i32 0, i32 %33)
  store %struct.block* %34, %struct.block** %11, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.block* @gen_portatom(i32* %35, i32 2, i32 %36)
  store %struct.block* %37, %struct.block** %10, align 8
  %38 = load %struct.block*, %struct.block** %11, align 8
  %39 = load %struct.block*, %struct.block** %10, align 8
  %40 = call i32 @gen_or(%struct.block* %38, %struct.block* %39)
  br label %53

41:                                               ; preds = %4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.block* @gen_portatom(i32* %42, i32 0, i32 %43)
  store %struct.block* %44, %struct.block** %11, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call %struct.block* @gen_portatom(i32* %45, i32 2, i32 %46)
  store %struct.block* %47, %struct.block** %10, align 8
  %48 = load %struct.block*, %struct.block** %11, align 8
  %49 = load %struct.block*, %struct.block** %10, align 8
  %50 = call i32 @gen_and(%struct.block* %48, %struct.block* %49)
  br label %53

51:                                               ; preds = %4
  %52 = call i32 (...) @abort() #3
  unreachable

53:                                               ; preds = %41, %31, %27, %23
  %54 = load %struct.block*, %struct.block** %9, align 8
  %55 = load %struct.block*, %struct.block** %10, align 8
  %56 = call i32 @gen_and(%struct.block* %54, %struct.block* %55)
  %57 = load %struct.block*, %struct.block** %10, align 8
  ret %struct.block* %57
}

declare dso_local %struct.block* @gen_cmp(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.block* @gen_ipfrag(i32*) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_portatom(i32*, i32, i32) #1

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
