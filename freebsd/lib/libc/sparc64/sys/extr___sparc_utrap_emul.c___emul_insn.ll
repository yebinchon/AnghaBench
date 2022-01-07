; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sparc64/sys/extr___sparc_utrap_emul.c___emul_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sparc64/sys/extr___sparc_utrap_emul.c___emul_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrapframe = type { i64 }

@SIGILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__emul_insn(%struct.utrapframe* %0) #0 {
  %2 = alloca %struct.utrapframe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.utrapframe* %0, %struct.utrapframe** %2, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %11 = getelementptr inbounds %struct.utrapframe, %struct.utrapframe* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = call i32 (...) @flushw()
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @IF_OP(i32 %16)
  switch i32 %17, label %95 [
    i32 128, label %18
    i32 129, label %53
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @IF_F3_OP3(i32 %19)
  switch i32 %20, label %50 [
    i32 132, label %21
  ]

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @IF_F3_RS1(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @SIGILL, align 4
  store i32 %26, i32* %7, align 4
  br label %52

27:                                               ; preds = %21
  %28 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @__emul_f3_op2(%struct.utrapframe* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %41, %27
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 64
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %9, align 4
  %37 = ashr i32 %35, %36
  %38 = and i32 %37, 1
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %31

44:                                               ; preds = %31
  %45 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @IF_F3_RD(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @__emul_store_reg(%struct.utrapframe* %45, i32 %47, i32 %48)
  br label %52

50:                                               ; preds = %18
  %51 = load i32, i32* @SIGILL, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %44, %25
  br label %97

53:                                               ; preds = %1
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @IF_F3_OP3(i32 %54)
  switch i32 %55, label %92 [
    i32 131, label %56
    i32 130, label %75
  ]

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @IF_F3_RD(i32 %57)
  %59 = call i32 @INSFPdq_RN(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @__emul_f3_memop_addr(%struct.utrapframe* %60, i32 %61)
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__fpu_setreg64(i32 %64, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 2
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @__fpu_setreg64(i32 %70, i32 %73)
  br label %94

75:                                               ; preds = %53
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @IF_F3_RD(i32 %76)
  %78 = call i32 @INSFPdq_RN(i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @__emul_f3_memop_addr(%struct.utrapframe* %79, i32 %80)
  %82 = inttoptr i64 %81 to i32*
  store i32* %82, i32** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @__fpu_getreg64(i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 2
  %89 = call i32 @__fpu_getreg64(i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %89, i32* %91, align 4
  br label %94

92:                                               ; preds = %53
  %93 = load i32, i32* @SIGILL, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %75, %56
  br label %97

95:                                               ; preds = %1
  %96 = load i32, i32* @SIGILL, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %94, %52
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @flushw(...) #1

declare dso_local i32 @IF_OP(i32) #1

declare dso_local i32 @IF_F3_OP3(i32) #1

declare dso_local i32 @IF_F3_RS1(i32) #1

declare dso_local i32 @__emul_f3_op2(%struct.utrapframe*, i32) #1

declare dso_local i32 @__emul_store_reg(%struct.utrapframe*, i32, i32) #1

declare dso_local i32 @IF_F3_RD(i32) #1

declare dso_local i32 @INSFPdq_RN(i32) #1

declare dso_local i64 @__emul_f3_memop_addr(%struct.utrapframe*, i32) #1

declare dso_local i32 @__fpu_setreg64(i32, i32) #1

declare dso_local i32 @__fpu_getreg64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
