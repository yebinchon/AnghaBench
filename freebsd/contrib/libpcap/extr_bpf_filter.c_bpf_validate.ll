; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_bpf_filter.c_bpf_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_bpf_filter.c_bpf_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i64, i64, i64, i32 }

@BPF_MEMWORDS = common dso_local global i64 0, align 8
@BPF_K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_validate(%struct.bpf_insn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bpf_insn*, align 8
  store %struct.bpf_insn* %0, %struct.bpf_insn** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %132

12:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %118, %12
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %121

18:                                               ; preds = %13
  %19 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %19, i64 %20
  store %struct.bpf_insn* %21, %struct.bpf_insn** %8, align 8
  %22 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %23 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @BPF_CLASS(i32 %24)
  switch i32 %25, label %116 [
    i32 144, label %26
    i32 143, label %26
    i32 131, label %44
    i32 130, label %44
    i32 155, label %52
    i32 146, label %74
    i32 133, label %114
    i32 139, label %115
  ]

26:                                               ; preds = %18, %18
  %27 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %28 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @BPF_MODE(i32 %29)
  switch i32 %30, label %42 [
    i32 152, label %31
    i32 157, label %32
    i32 151, label %32
    i32 137, label %32
    i32 140, label %33
    i32 142, label %41
  ]

31:                                               ; preds = %26
  br label %43

32:                                               ; preds = %26, %26, %26
  br label %43

33:                                               ; preds = %26
  %34 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %35 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BPF_MEMWORDS, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %132

40:                                               ; preds = %33
  br label %43

41:                                               ; preds = %26
  br label %43

42:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %132

43:                                               ; preds = %41, %40, %32, %31
  br label %117

44:                                               ; preds = %18, %18
  %45 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %46 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BPF_MEMWORDS, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %132

51:                                               ; preds = %44
  br label %117

52:                                               ; preds = %18
  %53 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @BPF_OP(i32 %55)
  switch i32 %56, label %72 [
    i32 156, label %57
    i32 129, label %57
    i32 136, label %57
    i32 134, label %57
    i32 154, label %57
    i32 128, label %57
    i32 141, label %57
    i32 132, label %57
    i32 135, label %57
    i32 153, label %58
    i32 138, label %58
  ]

57:                                               ; preds = %52, %52, %52, %52, %52, %52, %52, %52, %52
  br label %73

58:                                               ; preds = %52, %52
  %59 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %60 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @BPF_SRC(i32 %61)
  %63 = load i32, i32* @BPF_K, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %67 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %132

71:                                               ; preds = %65, %58
  br label %73

72:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %132

73:                                               ; preds = %71, %57
  br label %117

74:                                               ; preds = %18
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %7, align 8
  %77 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %78 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @BPF_OP(i32 %79)
  switch i32 %80, label %112 [
    i32 150, label %81
    i32 149, label %92
    i32 147, label %92
    i32 148, label %92
    i32 145, label %92
  ]

81:                                               ; preds = %74
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %84 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %82, %85
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp uge i64 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %132

91:                                               ; preds = %81
  br label %113

92:                                               ; preds = %74, %74, %74, %74
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %95 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %93, %96
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp uge i64 %97, %99
  br i1 %100, label %110, label %101

101:                                              ; preds = %92
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %104 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %102, %105
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp uge i64 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101, %92
  store i32 0, i32* %3, align 4
  br label %132

111:                                              ; preds = %101
  br label %113

112:                                              ; preds = %74
  store i32 0, i32* %3, align 4
  br label %132

113:                                              ; preds = %111, %91
  br label %117

114:                                              ; preds = %18
  br label %117

115:                                              ; preds = %18
  br label %117

116:                                              ; preds = %18
  store i32 0, i32* %3, align 4
  br label %132

117:                                              ; preds = %115, %114, %113, %73, %51, %43
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %6, align 8
  br label %13

121:                                              ; preds = %13
  %122 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %122, i64 %125
  %127 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @BPF_CLASS(i32 %128)
  %130 = icmp eq i32 %129, 133
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %121, %116, %112, %110, %90, %72, %70, %50, %42, %39, %11
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @BPF_CLASS(i32) #1

declare dso_local i32 @BPF_MODE(i32) #1

declare dso_local i32 @BPF_OP(i32) #1

declare dso_local i32 @BPF_SRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
