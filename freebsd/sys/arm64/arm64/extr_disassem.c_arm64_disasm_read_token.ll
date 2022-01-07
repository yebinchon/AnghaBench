; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_disassem.c_arm64_disasm_read_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_disassem.c_arm64_disasm_read_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm64_insn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ARM64_MAX_TOKEN_CNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm64_insn*, i32, i8*, i32*)* @arm64_disasm_read_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm64_disasm_read_token(%struct.arm64_insn* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arm64_insn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.arm64_insn* %0, %struct.arm64_insn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %51, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @ARM64_MAX_TOKEN_CNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = load %struct.arm64_insn*, %struct.arm64_insn** %6, align 8
  %17 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strcmp(i32 %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.arm64_insn*, %struct.arm64_insn** %6, align 8
  %30 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %28, %36
  %38 = load %struct.arm64_insn*, %struct.arm64_insn** %6, align 8
  %39 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 1, %45
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %37, %47
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %56

50:                                               ; preds = %15
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %11

54:                                               ; preds = %11
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %27
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
