; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/arm/extr_dtrace_subr.c_dtrace_invop_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/arm/extr_dtrace_subr.c_dtrace_invop_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i8*, i8*, i8* }

@DTRACE_INVOP_MASK = common dso_local global i32 0, align 4
@BIT_PC = common dso_local global i32 0, align 4
@BIT_LR = common dso_local global i32 0, align 4
@BIT_SP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*)* @dtrace_invop_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_invop_start(%struct.trapframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  %10 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %11 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %14 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %15 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dtrace_invop(i32 %12, %struct.trapframe* %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @DTRACE_INVOP_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %210 [
    i32 128, label %21
    i32 129, label %102
    i32 130, label %190
  ]

21:                                               ; preds = %1
  %22 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %23 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to i8**
  store i8** %25, i8*** %5, align 8
  %26 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %27 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %26, i32 0, i32 1
  store i8** %27, i8*** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DTRACE_INVOP_DATA(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BIT_PC, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 -1
  store i8** %37, i8*** %5, align 8
  %38 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %39 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8**, i8*** %5, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %35, %21
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @BIT_LR, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 -1
  store i8** %52, i8*** %5, align 8
  %53 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %5, align 8
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %50, %44
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @BIT_SP, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 -1
  store i8** %65, i8*** %5, align 8
  %66 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %67 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** %5, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %63, %57
  store i32 12, i32* %8, align 4
  br label %71

71:                                               ; preds = %90, %70
  %72 = load i32, i32* %8, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 -1
  store i8** %82, i8*** %5, align 8
  %83 = load i8**, i8*** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load i8**, i8*** %5, align 8
  store i8* %87, i8** %88, align 8
  br label %89

89:                                               ; preds = %80, %74
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %8, align 4
  br label %71

93:                                               ; preds = %71
  %94 = load i8**, i8*** %5, align 8
  %95 = bitcast i8** %94 to i8*
  %96 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %97 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %99 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 4
  store i32 %101, i32* %99, align 8
  br label %211

102:                                              ; preds = %1
  %103 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %104 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = bitcast i8* %105 to i8**
  store i8** %106, i8*** %5, align 8
  %107 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %108 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %107, i32 0, i32 1
  store i8** %108, i8*** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @DTRACE_INVOP_DATA(i32 %109)
  store i32 %110, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %130, %102
  %112 = load i32, i32* %8, align 4
  %113 = icmp sle i32 %112, 12
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %8, align 4
  %117 = shl i32 1, %116
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i8**, i8*** %5, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load i8**, i8*** %4, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* %122, i8** %126, align 8
  %127 = load i8**, i8*** %5, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %128, i8*** %5, align 8
  br label %129

129:                                              ; preds = %120, %114
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %111

133:                                              ; preds = %111
  store i32 1, i32* %9, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @BIT_SP, align 4
  %136 = shl i32 1, %135
  %137 = and i32 %134, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %133
  %140 = load i8**, i8*** %5, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %143 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i32 1
  store i8** %145, i8*** %5, align 8
  %146 = load i8*, i8** %144, align 8
  store i32 0, i32* %9, align 4
  br label %147

147:                                              ; preds = %139, %133
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @BIT_LR, align 4
  %150 = shl i32 1, %149
  %151 = and i32 %148, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load i8**, i8*** %5, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %157 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %156, i32 0, i32 3
  store i8* %155, i8** %157, align 8
  %158 = load i8**, i8*** %5, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i32 1
  store i8** %159, i8*** %5, align 8
  %160 = load i8*, i8** %158, align 8
  br label %161

161:                                              ; preds = %153, %147
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @BIT_PC, align 4
  %164 = shl i32 1, %163
  %165 = and i32 %162, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  %168 = load i8**, i8*** %5, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %172 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load i8**, i8*** %5, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i32 1
  store i8** %174, i8*** %5, align 8
  %175 = load i8*, i8** %173, align 8
  br label %181

176:                                              ; preds = %161
  %177 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %178 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 4
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %176, %167
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load i8**, i8*** %5, align 8
  %186 = bitcast i8** %185 to i8*
  %187 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %188 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %184, %181
  br label %211

190:                                              ; preds = %1
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @DTRACE_INVOP_DATA(i32 %191)
  %193 = and i32 %192, 16777215
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = and i32 %194, 8388608
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = load i32, i32* %6, align 4
  %199 = or i32 %198, -16777216
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %197, %190
  %201 = load i32, i32* %6, align 4
  %202 = mul nsw i32 %201, 4
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 8
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %207 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %211

210:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %212

211:                                              ; preds = %200, %189, %93
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %211, %210
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @dtrace_invop(i32, %struct.trapframe*, i32) #1

declare dso_local i32 @DTRACE_INVOP_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
