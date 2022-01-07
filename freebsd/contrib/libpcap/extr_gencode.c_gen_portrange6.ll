; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_portrange6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_portrange6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@ETHERTYPE_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i32, i32, i32, i32)* @gen_portrange6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_portrange6(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %15 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %16 = call %struct.block* @gen_linktype(i32* %14, i32 %15)
  store %struct.block* %16, %struct.block** %11, align 8
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %47 [
    i32 129, label %18
    i32 130, label %18
    i32 131, label %18
    i32 128, label %25
  ]

18:                                               ; preds = %5, %5, %5
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.block* @gen_portrangeop6(i32* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store %struct.block* %24, %struct.block** %12, align 8
  br label %49

25:                                               ; preds = %5
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.block* @gen_portrangeop6(i32* %26, i32 %27, i32 %28, i32 130, i32 %29)
  store %struct.block* %30, %struct.block** %13, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.block* @gen_portrangeop6(i32* %31, i32 %32, i32 %33, i32 129, i32 %34)
  store %struct.block* %35, %struct.block** %12, align 8
  %36 = load %struct.block*, %struct.block** %13, align 8
  %37 = load %struct.block*, %struct.block** %12, align 8
  %38 = call i32 @gen_or(%struct.block* %36, %struct.block* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.block* @gen_portrangeop6(i32* %39, i32 %40, i32 %41, i32 131, i32 %42)
  store %struct.block* %43, %struct.block** %13, align 8
  %44 = load %struct.block*, %struct.block** %13, align 8
  %45 = load %struct.block*, %struct.block** %12, align 8
  %46 = call i32 @gen_or(%struct.block* %44, %struct.block* %45)
  br label %49

47:                                               ; preds = %5
  %48 = call i32 (...) @abort() #3
  unreachable

49:                                               ; preds = %25, %18
  %50 = load %struct.block*, %struct.block** %11, align 8
  %51 = load %struct.block*, %struct.block** %12, align 8
  %52 = call i32 @gen_and(%struct.block* %50, %struct.block* %51)
  %53 = load %struct.block*, %struct.block** %12, align 8
  ret %struct.block* %53
}

declare dso_local %struct.block* @gen_linktype(i32*, i32) #1

declare dso_local %struct.block* @gen_portrangeop6(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
