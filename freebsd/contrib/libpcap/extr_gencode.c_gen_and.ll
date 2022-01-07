; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_and.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_and(%struct.block* %0, %struct.block* %1) #0 {
  %3 = alloca %struct.block*, align 8
  %4 = alloca %struct.block*, align 8
  store %struct.block* %0, %struct.block** %3, align 8
  store %struct.block* %1, %struct.block** %4, align 8
  %5 = load %struct.block*, %struct.block** %3, align 8
  %6 = load %struct.block*, %struct.block** %4, align 8
  %7 = getelementptr inbounds %struct.block, %struct.block* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @backpatch(%struct.block* %5, i32 %8)
  %10 = load %struct.block*, %struct.block** %3, align 8
  %11 = getelementptr inbounds %struct.block, %struct.block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.block*, %struct.block** %3, align 8
  %17 = getelementptr inbounds %struct.block, %struct.block* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.block*, %struct.block** %4, align 8
  %19 = getelementptr inbounds %struct.block, %struct.block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load %struct.block*, %struct.block** %4, align 8
  %25 = getelementptr inbounds %struct.block, %struct.block* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.block*, %struct.block** %4, align 8
  %27 = load %struct.block*, %struct.block** %3, align 8
  %28 = call i32 @merge(%struct.block* %26, %struct.block* %27)
  %29 = load %struct.block*, %struct.block** %4, align 8
  %30 = getelementptr inbounds %struct.block, %struct.block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.block*, %struct.block** %4, align 8
  %36 = getelementptr inbounds %struct.block, %struct.block* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.block*, %struct.block** %3, align 8
  %38 = getelementptr inbounds %struct.block, %struct.block* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.block*, %struct.block** %4, align 8
  %41 = getelementptr inbounds %struct.block, %struct.block* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @backpatch(%struct.block*, i32) #1

declare dso_local i32 @merge(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
