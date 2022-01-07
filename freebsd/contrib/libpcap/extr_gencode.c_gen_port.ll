; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@ETHERTYPE_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i32, i32, i32)* @gen_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_port(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %13 = load i32, i32* @ETHERTYPE_IP, align 4
  %14 = call %struct.block* @gen_linktype(i32* %12, i32 %13)
  store %struct.block* %14, %struct.block** %9, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %41 [
    i32 129, label %16
    i32 130, label %16
    i32 131, label %16
    i32 128, label %22
  ]

16:                                               ; preds = %4, %4, %4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.block* @gen_portop(i32* %17, i32 %18, i32 %19, i32 %20)
  store %struct.block* %21, %struct.block** %10, align 8
  br label %43

22:                                               ; preds = %4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.block* @gen_portop(i32* %23, i32 %24, i32 130, i32 %25)
  store %struct.block* %26, %struct.block** %11, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.block* @gen_portop(i32* %27, i32 %28, i32 129, i32 %29)
  store %struct.block* %30, %struct.block** %10, align 8
  %31 = load %struct.block*, %struct.block** %11, align 8
  %32 = load %struct.block*, %struct.block** %10, align 8
  %33 = call i32 @gen_or(%struct.block* %31, %struct.block* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.block* @gen_portop(i32* %34, i32 %35, i32 131, i32 %36)
  store %struct.block* %37, %struct.block** %11, align 8
  %38 = load %struct.block*, %struct.block** %11, align 8
  %39 = load %struct.block*, %struct.block** %10, align 8
  %40 = call i32 @gen_or(%struct.block* %38, %struct.block* %39)
  br label %43

41:                                               ; preds = %4
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %22, %16
  %44 = load %struct.block*, %struct.block** %9, align 8
  %45 = load %struct.block*, %struct.block** %10, align 8
  %46 = call i32 @gen_and(%struct.block* %44, %struct.block* %45)
  %47 = load %struct.block*, %struct.block** %10, align 8
  ret %struct.block* %47
}

declare dso_local %struct.block* @gen_linktype(i32*, i32) #1

declare dso_local %struct.block* @gen_portop(i32*, i32, i32, i32) #1

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
