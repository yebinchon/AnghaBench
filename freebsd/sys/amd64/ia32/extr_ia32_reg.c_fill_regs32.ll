; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_reg.c_fill_regs32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_reg.c_fill_regs32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.trapframe* }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.reg32 = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }

@TF_HASSEGS = common dso_local global i32 0, align 4
@_ugssel = common dso_local global i32 0, align 4
@_ufssel = common dso_local global i32 0, align 4
@_udatasel = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_regs32(%struct.thread* %0, %struct.reg32* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.reg32*, align 8
  %5 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.reg32* %1, %struct.reg32** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  store %struct.trapframe* %8, %struct.trapframe** %5, align 8
  %9 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %10 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TF_HASSEGS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %17 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %16, i32 0, i32 16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.reg32*, %struct.reg32** %4, align 8
  %20 = getelementptr inbounds %struct.reg32, %struct.reg32* %19, i32 0, i32 17
  store i32 %18, i32* %20, align 4
  %21 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %22 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %21, i32 0, i32 15
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.reg32*, %struct.reg32** %4, align 8
  %25 = getelementptr inbounds %struct.reg32, %struct.reg32* %24, i32 0, i32 16
  store i32 %23, i32* %25, align 8
  %26 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %27 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %26, i32 0, i32 14
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.reg32*, %struct.reg32** %4, align 8
  %30 = getelementptr inbounds %struct.reg32, %struct.reg32* %29, i32 0, i32 15
  store i8* %28, i8** %30, align 8
  %31 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 13
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.reg32*, %struct.reg32** %4, align 8
  %35 = getelementptr inbounds %struct.reg32, %struct.reg32* %34, i32 0, i32 14
  store i8* %33, i8** %35, align 8
  br label %49

36:                                               ; preds = %2
  %37 = load i32, i32* @_ugssel, align 4
  %38 = load %struct.reg32*, %struct.reg32** %4, align 8
  %39 = getelementptr inbounds %struct.reg32, %struct.reg32* %38, i32 0, i32 17
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @_ufssel, align 4
  %41 = load %struct.reg32*, %struct.reg32** %4, align 8
  %42 = getelementptr inbounds %struct.reg32, %struct.reg32* %41, i32 0, i32 16
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** @_udatasel, align 8
  %44 = load %struct.reg32*, %struct.reg32** %4, align 8
  %45 = getelementptr inbounds %struct.reg32, %struct.reg32* %44, i32 0, i32 15
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @_udatasel, align 8
  %47 = load %struct.reg32*, %struct.reg32** %4, align 8
  %48 = getelementptr inbounds %struct.reg32, %struct.reg32* %47, i32 0, i32 14
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %36, %15
  %50 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %51 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.reg32*, %struct.reg32** %4, align 8
  %54 = getelementptr inbounds %struct.reg32, %struct.reg32* %53, i32 0, i32 13
  store i32 %52, i32* %54, align 4
  %55 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %56 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.reg32*, %struct.reg32** %4, align 8
  %59 = getelementptr inbounds %struct.reg32, %struct.reg32* %58, i32 0, i32 12
  store i32 %57, i32* %59, align 8
  %60 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %61 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.reg32*, %struct.reg32** %4, align 8
  %64 = getelementptr inbounds %struct.reg32, %struct.reg32* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 4
  %65 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %66 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.reg32*, %struct.reg32** %4, align 8
  %69 = getelementptr inbounds %struct.reg32, %struct.reg32* %68, i32 0, i32 10
  store i32 %67, i32* %69, align 8
  %70 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %71 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.reg32*, %struct.reg32** %4, align 8
  %74 = getelementptr inbounds %struct.reg32, %struct.reg32* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 4
  %75 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %76 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.reg32*, %struct.reg32** %4, align 8
  %79 = getelementptr inbounds %struct.reg32, %struct.reg32* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  %80 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %81 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.reg32*, %struct.reg32** %4, align 8
  %84 = getelementptr inbounds %struct.reg32, %struct.reg32* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %86 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.reg32*, %struct.reg32** %4, align 8
  %89 = getelementptr inbounds %struct.reg32, %struct.reg32* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %91 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.reg32*, %struct.reg32** %4, align 8
  %94 = getelementptr inbounds %struct.reg32, %struct.reg32* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %96 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.reg32*, %struct.reg32** %4, align 8
  %99 = getelementptr inbounds %struct.reg32, %struct.reg32* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %101 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.reg32*, %struct.reg32** %4, align 8
  %104 = getelementptr inbounds %struct.reg32, %struct.reg32* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %106 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.reg32*, %struct.reg32** %4, align 8
  %109 = getelementptr inbounds %struct.reg32, %struct.reg32* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.reg32*, %struct.reg32** %4, align 8
  %111 = getelementptr inbounds %struct.reg32, %struct.reg32* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.reg32*, %struct.reg32** %4, align 8
  %113 = getelementptr inbounds %struct.reg32, %struct.reg32* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
