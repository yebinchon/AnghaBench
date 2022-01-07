; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_bpf_dump.c_bpf_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_bpf_dump.c_bpf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%u %u %u %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"{ 0x%x, %d, %d, 0x%08x },\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_dump(%struct.bpf_program* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_program*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bpf_program*, %struct.bpf_program** %3, align 8
  %9 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.bpf_program*, %struct.bpf_program** %3, align 8
  %12 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %11, i32 0, i32 1
  %13 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  store %struct.bpf_insn* %13, %struct.bpf_insn** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %37, %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %25 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %28 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %31 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %34 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %23
  %38 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %39 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %38, i32 1
  store %struct.bpf_insn* %39, %struct.bpf_insn** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %19

42:                                               ; preds = %19
  br label %86

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %53 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %56 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %59 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %62 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %51
  %66 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %67 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %66, i32 1
  store %struct.bpf_insn* %67, %struct.bpf_insn** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %47

70:                                               ; preds = %47
  br label %86

71:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %81, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @bpf_image(%struct.bpf_insn* %77, i32 %78)
  %80 = call i32 @puts(i32 %79)
  br label %81

81:                                               ; preds = %76
  %82 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %83 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %82, i32 1
  store %struct.bpf_insn* %83, %struct.bpf_insn** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %72

86:                                               ; preds = %42, %70, %72
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @bpf_image(%struct.bpf_insn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
