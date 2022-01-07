; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_icode_to_fcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_icode_to_fcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }
%struct.icode = type { i32 }
%struct.block = type { i32 }
%struct.TYPE_3__ = type { %struct.bpf_insn*, %struct.bpf_insn* }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_insn* @icode_to_fcode(i32* %0, %struct.icode* %1, %struct.block* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.icode*, align 8
  %7 = alloca %struct.block*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_insn*, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.icode* %1, %struct.icode** %6, align 8
  store %struct.block* %2, %struct.block** %7, align 8
  store i32* %3, i32** %8, align 8
  br label %12

12:                                               ; preds = %53, %4
  %13 = load %struct.icode*, %struct.icode** %6, align 8
  %14 = call i32 @unMarkAll(%struct.icode* %13)
  %15 = load %struct.icode*, %struct.icode** %6, align 8
  %16 = load %struct.block*, %struct.block** %7, align 8
  %17 = call i32 @count_stmts(%struct.icode* %15, %struct.block* %16)
  %18 = load i32*, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  store i32 %17, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i64 @malloc(i32 %22)
  %24 = inttoptr i64 %23 to %struct.bpf_insn*
  store %struct.bpf_insn* %24, %struct.bpf_insn** %10, align 8
  %25 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %26 = icmp eq %struct.bpf_insn* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @bpf_error(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %12
  %31 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %32 = bitcast %struct.bpf_insn* %31 to i8*
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i8* %32, i32 0, i32 %36)
  %38 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store %struct.bpf_insn* %38, %struct.bpf_insn** %39, align 8
  %40 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.bpf_insn* %43, %struct.bpf_insn** %44, align 8
  %45 = load %struct.icode*, %struct.icode** %6, align 8
  %46 = call i32 @unMarkAll(%struct.icode* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.icode*, %struct.icode** %6, align 8
  %49 = load %struct.block*, %struct.block** %7, align 8
  %50 = call i64 @convert_code_r(i32* %47, %struct.TYPE_3__* %11, %struct.icode* %48, %struct.block* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  br label %56

53:                                               ; preds = %30
  %54 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %55 = call i32 @free(%struct.bpf_insn* %54)
  br label %12

56:                                               ; preds = %52
  %57 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  ret %struct.bpf_insn* %57
}

declare dso_local i32 @unMarkAll(%struct.icode*) #1

declare dso_local i32 @count_stmts(%struct.icode*, %struct.block*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @bpf_error(i32*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @convert_code_r(i32*, %struct.TYPE_3__*, %struct.icode*, %struct.block*) #1

declare dso_local i32 @free(%struct.bpf_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
