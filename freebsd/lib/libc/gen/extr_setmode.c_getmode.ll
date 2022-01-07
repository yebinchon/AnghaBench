; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_setmode.c_getmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_setmode.c_getmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@CMD2_CLR = common dso_local global i32 0, align 4
@CMD2_SET = common dso_local global i32 0, align 4
@CMD2_UBITS = common dso_local global i32 0, align 4
@CMD2_GBITS = common dso_local global i32 0, align 4
@CMD2_OBITS = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getmode(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %5, align 8
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %191, %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %188 [
    i32 117, label %16
    i32 103, label %21
    i32 111, label %26
    i32 43, label %156
    i32 45, label %162
    i32 88, label %169
    i32 0, label %187
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @S_IRWXU, align 4
  %19 = and i32 %17, %18
  %20 = ashr i32 %19, 6
  store i32 %20, i32* %8, align 4
  br label %30

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @S_IRWXG, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 3
  store i32 %25, i32* %8, align 4
  br label %30

26:                                               ; preds = %12
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @S_IRWXO, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %26, %21, %16
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CMD2_CLR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %100

37:                                               ; preds = %30
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CMD2_SET, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @S_IRWXO, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %6, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CMD2_UBITS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 %57, 6
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %56, %48
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CMD2_GBITS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 %74, 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %75, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %73, %66
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CMD2_OBITS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %91, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %90, %83
  br label %100

100:                                              ; preds = %99, %30
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CMD2_SET, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %155

107:                                              ; preds = %100
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CMD2_UBITS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load i32, i32* %8, align 4
  %116 = shl i32 %115, 6
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %116, %119
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %114, %107
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CMD2_GBITS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = load i32, i32* %8, align 4
  %132 = shl i32 %131, 3
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %132, %135
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %130, %123
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @CMD2_OBITS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %147, %150
  %152 = load i32, i32* %7, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %146, %139
  br label %155

155:                                              ; preds = %154, %100
  br label %190

156:                                              ; preds = %12
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  br label %190

162:                                              ; preds = %12
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %7, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %7, align 4
  br label %190

169:                                              ; preds = %12
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @S_IFDIR, align 4
  %172 = load i32, i32* @S_IXUSR, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @S_IXGRP, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @S_IXOTH, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %170, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %169
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %7, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %180, %169
  br label %190

187:                                              ; preds = %12
  br label %188

188:                                              ; preds = %12, %187
  %189 = load i32, i32* %7, align 4
  ret i32 %189

190:                                              ; preds = %186, %162, %156, %155
  br label %191

191:                                              ; preds = %190
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 1
  store %struct.TYPE_2__* %193, %struct.TYPE_2__** %5, align 8
  br label %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
