; ModuleID = '/home/carl/AnghaBench/freebsd/lib/csu/amd64/extr_reloc.c_crt1_handle_rela.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/csu/amd64/extr_reloc.c_crt1_handle_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @crt1_handle_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crt1_handle_rela(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %12 = call i32 @do_cpuid(i32 1, i32* %11)
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %18 = call i32 @do_cpuid(i32 0, i32* %17)
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = icmp sge i32 %20, 7
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %24 = call i32 @cpuid_count(i32 7, i32 0, i32* %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ELF_R_TYPE(i32 %33)
  switch i32 %34, label %53 [
    i32 128, label %35
  ]

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %3, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = bitcast i32* %44 to i32 (i32, i32, i32, i32)*
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 %45(i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32*, i32** %4, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %30, %35
  ret void
}

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @cpuid_count(i32, i32, i32*) #1

declare dso_local i32 @ELF_R_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
