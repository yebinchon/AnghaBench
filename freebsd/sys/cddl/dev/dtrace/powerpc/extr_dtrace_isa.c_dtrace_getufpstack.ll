; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_getufpstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_getufpstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.trapframe* }
%struct.trapframe = type { i64, i64* }
%struct.TYPE_12__ = type { i64 }

@curproc = common dso_local global %struct.TYPE_11__* null, align 8
@cpu_core = common dso_local global %struct.TYPE_14__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_13__* null, align 8
@CPU_DTRACE_ENTRY = common dso_local global i32 0, align 4
@SV_ILP32 = common dso_local global i32 0, align 4
@RETURN_OFFSET = common dso_local global i64 0, align 8
@RETURN_OFFSET64 = common dso_local global i64 0, align 8
@REG_FP = common dso_local global i64 0, align 8
@REG_PC = common dso_local global i64 0, align 8
@lwp = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_getufpstack(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.trapframe*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curproc, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %7, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cpu_core, align 8
  %14 = load i64, i64* @curcpu, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load volatile i32, i32* %17, align 4
  %19 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %153

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %153

27:                                               ; preds = %23
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = icmp eq %struct.TYPE_11__* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curthread, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.trapframe*, %struct.trapframe** %32, align 8
  store %struct.trapframe* %33, %struct.trapframe** %8, align 8
  %34 = icmp eq %struct.trapframe* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %27
  br label %145

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %4, align 8
  store i8* %40, i8** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %153

48:                                               ; preds = %36
  %49 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %9, align 8
  %52 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %53 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %58 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %48
  %61 = load i64, i64* %9, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %4, align 8
  store i8* %62, i8** %63, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %5, align 8
  store i8* null, i8** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %153

72:                                               ; preds = %60
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = load i32, i32* @SV_ILP32, align 4
  %75 = call i64 @SV_PROC_FLAG(%struct.TYPE_11__* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64, i64* %10, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = call i64 @dtrace_fuword32(i8* %79)
  store i64 %80, i64* %9, align 8
  br label %85

81:                                               ; preds = %72
  %82 = load i64, i64* %10, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = call i64 @dtrace_fuword64(i8* %83)
  store i64 %84, i64* %9, align 8
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %48
  br label %87

87:                                               ; preds = %143, %86
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %144

90:                                               ; preds = %87
  %91 = load i64, i64* %9, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load i8**, i8*** %4, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %94, i8*** %4, align 8
  store i8* %92, i8** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %5, align 8
  store i8* %96, i8** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %144

104:                                              ; preds = %90
  %105 = load i64, i64* %10, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %144

108:                                              ; preds = %104
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = load i32, i32* @SV_ILP32, align 4
  %111 = call i64 @SV_PROC_FLAG(%struct.TYPE_11__* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* @RETURN_OFFSET, align 8
  %116 = add i64 %114, %115
  %117 = inttoptr i64 %116 to i8*
  %118 = call i64 @dtrace_fuword32(i8* %117)
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %10, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = call i64 @dtrace_fuword32(i8* %120)
  store i64 %121, i64* %10, align 8
  br label %131

122:                                              ; preds = %108
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @RETURN_OFFSET64, align 8
  %125 = add i64 %123, %124
  %126 = inttoptr i64 %125 to i8*
  %127 = call i64 @dtrace_fuword64(i8* %126)
  store i64 %127, i64* %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = call i64 @dtrace_fuword64(i8* %129)
  store i64 %130, i64* %10, align 8
  br label %131

131:                                              ; preds = %122, %113
  %132 = load i32*, i32** %11, align 8
  %133 = load volatile i32, i32* %132, align 4
  %134 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %139 = xor i32 %138, -1
  %140 = load i32*, i32** %11, align 8
  %141 = load volatile i32, i32* %140, align 4
  %142 = and i32 %141, %139
  store volatile i32 %142, i32* %140, align 4
  br label %144

143:                                              ; preds = %131
  br label %87

144:                                              ; preds = %137, %107, %103, %87
  br label %145

145:                                              ; preds = %144, %35
  br label %146

146:                                              ; preds = %150, %145
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %6, align 4
  %149 = icmp sgt i32 %147, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i8**, i8*** %4, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i32 1
  store i8** %152, i8*** %4, align 8
  store i8* null, i8** %151, align 8
  br label %146

153:                                              ; preds = %22, %26, %47, %71, %146
  ret void
}

declare dso_local i64 @DTRACE_CPUFLAG_ISSET(i32) #1

declare dso_local i64 @SV_PROC_FLAG(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @dtrace_fuword32(i8*) #1

declare dso_local i64 @dtrace_fuword64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
