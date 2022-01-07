; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sparc64/sys/extr___sparc_utrap_align.c___unaligned_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sparc64/sys/extr___sparc_utrap_align.c___unaligned_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrapframe = type { i64, i64 }

@SIGILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__unaligned_fixup(%struct.utrapframe* %0) #0 {
  %2 = alloca %struct.utrapframe*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.utrapframe* %0, %struct.utrapframe** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %8 = getelementptr inbounds %struct.utrapframe, %struct.utrapframe* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %3, align 8
  %11 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %12 = getelementptr inbounds %struct.utrapframe, %struct.utrapframe* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = call i32 (...) @flushw()
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @IF_OP(i32 %17)
  switch i32 %18, label %91 [
    i32 128, label %19
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @IF_F3_OP3(i32 %20)
  switch i32 %21, label %88 [
    i32 134, label %22
    i32 133, label %30
    i32 132, label %38
    i32 136, label %46
    i32 135, label %55
    i32 131, label %64
    i32 130, label %72
    i32 129, label %80
  ]

22:                                               ; preds = %19
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @__unaligned_load(i32* %23, i32 2)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @IF_F3_RD(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @__emul_store_reg(%struct.utrapframe* %25, i32 %27, i32 %28)
  br label %90

30:                                               ; preds = %19
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @__unaligned_load(i32* %31, i32 4)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @IF_F3_RD(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @__emul_store_reg(%struct.utrapframe* %33, i32 %35, i32 %36)
  br label %90

38:                                               ; preds = %19
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @__unaligned_load(i32* %39, i32 8)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @IF_F3_RD(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @__emul_store_reg(%struct.utrapframe* %41, i32 %43, i32 %44)
  br label %90

46:                                               ; preds = %19
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @__unaligned_load(i32* %47, i32 2)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @IF_F3_RD(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @IF_SEXT(i32 %52, i32 16)
  %54 = call i32 @__emul_store_reg(%struct.utrapframe* %49, i32 %51, i32 %53)
  br label %90

55:                                               ; preds = %19
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @__unaligned_load(i32* %56, i32 4)
  store i32 %57, i32* %4, align 4
  %58 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @IF_F3_RD(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @IF_SEXT(i32 %61, i32 32)
  %63 = call i32 @__emul_store_reg(%struct.utrapframe* %58, i32 %60, i32 %62)
  br label %90

64:                                               ; preds = %19
  %65 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @IF_F3_RD(i32 %66)
  %68 = call i32 @__emul_fetch_reg(%struct.utrapframe* %65, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @__unaligned_store(i32* %69, i32 %70, i32 2)
  br label %90

72:                                               ; preds = %19
  %73 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @IF_F3_RD(i32 %74)
  %76 = call i32 @__emul_fetch_reg(%struct.utrapframe* %73, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @__unaligned_store(i32* %77, i32 %78, i32 4)
  br label %90

80:                                               ; preds = %19
  %81 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @IF_F3_RD(i32 %82)
  %84 = call i32 @__emul_fetch_reg(%struct.utrapframe* %81, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @__unaligned_store(i32* %85, i32 %86, i32 8)
  br label %90

88:                                               ; preds = %19
  %89 = load i32, i32* @SIGILL, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %88, %80, %72, %64, %55, %46, %38, %30, %22
  br label %93

91:                                               ; preds = %1
  %92 = load i32, i32* @SIGILL, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @flushw(...) #1

declare dso_local i32 @IF_OP(i32) #1

declare dso_local i32 @IF_F3_OP3(i32) #1

declare dso_local i32 @__unaligned_load(i32*, i32) #1

declare dso_local i32 @__emul_store_reg(%struct.utrapframe*, i32, i32) #1

declare dso_local i32 @IF_F3_RD(i32) #1

declare dso_local i32 @IF_SEXT(i32, i32) #1

declare dso_local i32 @__emul_fetch_reg(%struct.utrapframe*, i32) #1

declare dso_local i32 @__unaligned_store(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
