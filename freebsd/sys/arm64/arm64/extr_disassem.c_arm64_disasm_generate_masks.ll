; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_disassem.c_arm64_disasm_generate_masks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_disassem.c_arm64_disasm_generate_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm64_insn = type { i8*, i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@INSN_SIZE = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@ARM64_MAX_TOKEN_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ERROR: token too long in op %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@ARM64_MAX_TOKEN_CNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: to many tokens in op %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"ERROR: skipping instruction op %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm64_insn*)* @arm64_disasm_generate_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm64_disasm_generate_masks(%struct.arm64_insn* %0) #0 {
  %2 = alloca %struct.arm64_insn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.arm64_insn* %0, %struct.arm64_insn** %2, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %191, %1
  %13 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %14 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %194

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %18 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %19 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @INSN_SIZE, align 4
  %22 = load i32, i32* @NBBY, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %164, %17
  %26 = load i8*, i8** %10, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 0
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i1 [ false, %25 ], [ %32, %30 ]
  br i1 %34, label %35, label %165

35:                                               ; preds = %33
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %64 [
    i32 48, label %39
    i32 49, label %48
    i32 124, label %61
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  br label %164

48:                                               ; preds = %35
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %5, align 4
  %54 = shl i32 1, %53
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  br label %164

61:                                               ; preds = %35
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  br label %164

64:                                               ; preds = %35
  %65 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %66 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @memset(i8* %72, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %105, %64
  %75 = load i8*, i8** %10, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 40
  br i1 %78, label %79, label %106

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %83 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 %81, i8* %92, align 1
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %10, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @ARM64_MAX_TOKEN_LEN, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %79
  %101 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %102 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %103)
  store i32 1, i32* %11, align 4
  br label %106

105:                                              ; preds = %79
  br label %74

106:                                              ; preds = %100, %74
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %164

110:                                              ; preds = %106
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @sscanf(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %147

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @ARM64_MAX_TOKEN_CNT, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %121 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %122)
  store i32 1, i32* %11, align 4
  br label %164

124:                                              ; preds = %115
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %5, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  %130 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %131 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i32 %129, i32* %136, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %139 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %138, i32 0, i32 4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  store i32 %137, i32* %144, align 4
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %124, %110
  br label %148

148:                                              ; preds = %160, %147
  %149 = load i8*, i8** %10, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i8*, i8** %10, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 124
  br label %158

158:                                              ; preds = %153, %148
  %159 = phi i1 [ false, %148 ], [ %157, %153 ]
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = load i8*, i8** %10, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %10, align 8
  br label %148

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %119, %109, %61, %48, %39
  br label %25

165:                                              ; preds = %33
  %166 = load i32, i32* %3, align 4
  %167 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %168 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %4, align 4
  %170 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %171 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load i8*, i8** %10, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %165
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, -1
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %179, %176, %165
  %183 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %184 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %183, i32 0, i32 2
  store i32 0, i32* %184, align 8
  %185 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %186 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %185, i32 0, i32 3
  store i32 -1, i32* %186, align 4
  %187 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %188 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %189)
  br label %191

191:                                              ; preds = %182, %179
  %192 = load %struct.arm64_insn*, %struct.arm64_insn** %2, align 8
  %193 = getelementptr inbounds %struct.arm64_insn, %struct.arm64_insn* %192, i32 1
  store %struct.arm64_insn* %193, %struct.arm64_insn** %2, align 8
  br label %12

194:                                              ; preds = %12
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
