; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_bpf_optimize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_bpf_optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icode = type { i32 }

@pcap_optimizer_debug = common dso_local global i32 0, align 4
@pcap_print_dot_graph = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_optimize(i32* %0, %struct.icode* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.icode*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.icode* %1, %struct.icode** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.icode*, %struct.icode** %4, align 8
  %8 = call i32 @opt_init(i32* %6, i32* %5, %struct.icode* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.icode*, %struct.icode** %4, align 8
  %11 = call i32 @opt_loop(i32* %9, i32* %5, %struct.icode* %10, i32 0)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.icode*, %struct.icode** %4, align 8
  %14 = call i32 @opt_loop(i32* %12, i32* %5, %struct.icode* %13, i32 1)
  %15 = load %struct.icode*, %struct.icode** %4, align 8
  %16 = call i32 @intern_blocks(i32* %5, %struct.icode* %15)
  %17 = load %struct.icode*, %struct.icode** %4, align 8
  %18 = getelementptr inbounds %struct.icode, %struct.icode* %17, i32 0, i32 0
  %19 = call i32 @opt_root(i32* %18)
  %20 = call i32 @opt_cleanup(i32* %5)
  ret void
}

declare dso_local i32 @opt_init(i32*, i32*, %struct.icode*) #1

declare dso_local i32 @opt_loop(i32*, i32*, %struct.icode*, i32) #1

declare dso_local i32 @intern_blocks(i32*, %struct.icode*) #1

declare dso_local i32 @opt_root(i32*) #1

declare dso_local i32 @opt_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
