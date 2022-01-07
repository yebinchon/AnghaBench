; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_CutFree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_CutFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__* }

@MM_MAX_ALIGNMENT = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64)* @CutFree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CutFree(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %190, %3
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* @MM_MAX_ALIGNMENT, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %193

19:                                               ; preds = %15
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %22, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %8, align 8
  %27 = load i32, i32* %14, align 4
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @MAKE_ALIGNED(i64 %30, i64 %31)
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %188, %19
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %189

36:                                               ; preds = %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %11, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %95

46:                                               ; preds = %36
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %46
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %95

54:                                               ; preds = %50
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %58
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load i64, i64* %13, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %62, %54
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = icmp ne %struct.TYPE_7__* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %76, align 8
  br label %87

77:                                               ; preds = %68
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %83, i64 %85
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %86, align 8
  br label %87

87:                                               ; preds = %77, %71
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = call i32 @XX_Free(%struct.TYPE_7__* %88)
  br label %94

90:                                               ; preds = %62, %58
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %87
  br label %189

95:                                               ; preds = %50, %46, %36
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %182

99:                                               ; preds = %95
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp sle i64 %100, %101
  br i1 %102, label %103, label %182

103:                                              ; preds = %99
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* %11, align 8
  %106 = sub nsw i64 %104, %105
  %107 = load i64, i64* %13, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %144

109:                                              ; preds = %103
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %12, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %140

113:                                              ; preds = %109
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %10, align 8
  %116 = sub nsw i64 %114, %115
  %117 = load i64, i64* %13, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %113
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %10, align 8
  %123 = sub nsw i64 %121, %122
  %124 = call %struct.TYPE_7__* @CreateFreeBlock(i64 %120, i64 %123)
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %9, align 8
  %125 = icmp eq %struct.TYPE_7__* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i32, i32* @MAJOR, align 4
  %128 = load i32, i32* @E_NO_MEMORY, align 4
  %129 = load i32, i32* @NO_MSG, align 4
  %130 = call i32 @RETURN_ERROR(i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %119
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store %struct.TYPE_7__* %137, %struct.TYPE_7__** %139, align 8
  br label %140

140:                                              ; preds = %131, %113, %109
  %141 = load i64, i64* %5, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  br label %181

144:                                              ; preds = %103
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* %12, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* %10, align 8
  %151 = sub nsw i64 %149, %150
  %152 = load i64, i64* %13, align 8
  %153 = icmp sge i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  br label %180

158:                                              ; preds = %148, %144
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = icmp ne %struct.TYPE_7__* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  store %struct.TYPE_7__* %164, %struct.TYPE_7__** %166, align 8
  br label %177

167:                                              ; preds = %158
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %173, i64 %175
  store %struct.TYPE_7__* %170, %struct.TYPE_7__** %176, align 8
  br label %177

177:                                              ; preds = %167, %161
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %179 = call i32 @XX_Free(%struct.TYPE_7__* %178)
  br label %180

180:                                              ; preds = %177, %154
  br label %181

181:                                              ; preds = %180, %140
  br label %189

182:                                              ; preds = %99, %95
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %183, %struct.TYPE_7__** %7, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  store %struct.TYPE_7__* %186, %struct.TYPE_7__** %8, align 8
  br label %187

187:                                              ; preds = %182
  br label %188

188:                                              ; preds = %187
  br label %33

189:                                              ; preds = %181, %94, %33
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %14, align 4
  br label %15

193:                                              ; preds = %15
  %194 = load i32, i32* @E_OK, align 4
  ret i32 %194
}

declare dso_local i64 @MAKE_ALIGNED(i64, i64) #1

declare dso_local i32 @XX_Free(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @CreateFreeBlock(i64, i64) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
