; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_get_new_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_get_new_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32, %struct.idr_layer*, i32 }
%struct.idr_layer = type { i64, %struct.idr_layer** }

@MAX_LEVEL = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"idr_get_new: Invalid leaf state (%p, %p)\0A\00", align 1
@IDR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idr*, i8*, i32*)* @idr_get_new_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idr_get_new_locked(%struct.idr* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.idr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.idr_layer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* @MAX_LEVEL, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca %struct.idr_layer*, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.idr*, %struct.idr** %4, align 8
  %19 = getelementptr inbounds %struct.idr, %struct.idr* %18, i32 0, i32 2
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @mtx_assert(i32* %19, i32 %20)
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.idr*, %struct.idr** %4, align 8
  %25 = getelementptr inbounds %struct.idr, %struct.idr* %24, i32 0, i32 1
  %26 = load %struct.idr_layer*, %struct.idr_layer** %25, align 8
  %27 = icmp eq %struct.idr_layer* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %3
  %29 = load %struct.idr*, %struct.idr** %4, align 8
  %30 = getelementptr inbounds %struct.idr, %struct.idr* %29, i32 0, i32 1
  %31 = load %struct.idr_layer*, %struct.idr_layer** %30, align 8
  %32 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %28, %3
  %36 = load %struct.idr*, %struct.idr** %4, align 8
  %37 = getelementptr inbounds %struct.idr, %struct.idr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MAX_LEVEL, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOSPC, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %203

45:                                               ; preds = %35
  %46 = load %struct.idr*, %struct.idr** %4, align 8
  %47 = call i8* @idr_get(%struct.idr* %46)
  %48 = bitcast i8* %47 to %struct.idr_layer*
  store %struct.idr_layer* %48, %struct.idr_layer** %9, align 8
  %49 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %50 = icmp eq %struct.idr_layer* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %203

52:                                               ; preds = %45
  %53 = load %struct.idr*, %struct.idr** %4, align 8
  %54 = getelementptr inbounds %struct.idr, %struct.idr* %53, i32 0, i32 1
  %55 = load %struct.idr_layer*, %struct.idr_layer** %54, align 8
  %56 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %57 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %56, i32 0, i32 1
  %58 = load %struct.idr_layer**, %struct.idr_layer*** %57, align 8
  %59 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %58, i64 0
  store %struct.idr_layer* %55, %struct.idr_layer** %59, align 8
  %60 = load %struct.idr*, %struct.idr** %4, align 8
  %61 = getelementptr inbounds %struct.idr, %struct.idr* %60, i32 0, i32 1
  %62 = load %struct.idr_layer*, %struct.idr_layer** %61, align 8
  %63 = icmp ne %struct.idr_layer* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %66 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, -2
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %64, %52
  %70 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %71 = load %struct.idr*, %struct.idr** %4, align 8
  %72 = getelementptr inbounds %struct.idr, %struct.idr* %71, i32 0, i32 1
  store %struct.idr_layer* %70, %struct.idr_layer** %72, align 8
  %73 = load %struct.idr*, %struct.idr** %4, align 8
  %74 = getelementptr inbounds %struct.idr, %struct.idr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %69, %28
  %78 = load %struct.idr*, %struct.idr** %4, align 8
  %79 = getelementptr inbounds %struct.idr, %struct.idr* %78, i32 0, i32 1
  %80 = load %struct.idr_layer*, %struct.idr_layer** %79, align 8
  store %struct.idr_layer* %80, %struct.idr_layer** %9, align 8
  store i32 0, i32* %13, align 4
  %81 = load %struct.idr*, %struct.idr** %4, align 8
  %82 = getelementptr inbounds %struct.idr, %struct.idr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %151, %77
  %86 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %17, i64 %88
  store %struct.idr_layer* %86, %struct.idr_layer** %89, align 8
  %90 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %91 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @ffsl(i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %85
  %98 = load %struct.idr*, %struct.idr** %4, align 8
  %99 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %100 = call i32 (i8*, %struct.idr*, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.idr* %98, %struct.idr_layer* %99)
  br label %101

101:                                              ; preds = %97, %85
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @IDR_BITS, align 4
  %107 = mul nsw i32 %105, %106
  %108 = shl i32 %104, %107
  %109 = load i32, i32* %13, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  br label %154

114:                                              ; preds = %101
  %115 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %116 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %115, i32 0, i32 1
  %117 = load %struct.idr_layer**, %struct.idr_layer*** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %117, i64 %119
  %121 = load %struct.idr_layer*, %struct.idr_layer** %120, align 8
  %122 = icmp eq %struct.idr_layer* %121, null
  br i1 %122, label %123, label %143

123:                                              ; preds = %114
  %124 = load %struct.idr*, %struct.idr** %4, align 8
  %125 = call i8* @idr_get(%struct.idr* %124)
  %126 = bitcast i8* %125 to %struct.idr_layer*
  %127 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %128 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %127, i32 0, i32 1
  %129 = load %struct.idr_layer**, %struct.idr_layer*** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %129, i64 %131
  store %struct.idr_layer* %126, %struct.idr_layer** %132, align 8
  %133 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %134 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %133, i32 0, i32 1
  %135 = load %struct.idr_layer**, %struct.idr_layer*** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %135, i64 %137
  %139 = load %struct.idr_layer*, %struct.idr_layer** %138, align 8
  %140 = icmp eq %struct.idr_layer* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %123
  br label %203

142:                                              ; preds = %123
  br label %143

143:                                              ; preds = %142, %114
  %144 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %145 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %144, i32 0, i32 1
  %146 = load %struct.idr_layer**, %struct.idr_layer*** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %146, i64 %148
  %150 = load %struct.idr_layer*, %struct.idr_layer** %149, align 8
  store %struct.idr_layer* %150, %struct.idr_layer** %9, align 8
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %11, align 4
  br label %85

154:                                              ; preds = %113
  %155 = load i32, i32* %12, align 4
  %156 = shl i32 1, %155
  %157 = xor i32 %156, -1
  %158 = sext i32 %157 to i64
  %159 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %160 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = and i64 %161, %158
  store i64 %162, i64* %160, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = bitcast i8* %163 to %struct.idr_layer*
  %165 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %166 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %165, i32 0, i32 1
  %167 = load %struct.idr_layer**, %struct.idr_layer*** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %167, i64 %169
  store %struct.idr_layer* %164, %struct.idr_layer** %170, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i32*, i32** %6, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %187, %154
  %174 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %175 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  %181 = load %struct.idr*, %struct.idr** %4, align 8
  %182 = getelementptr inbounds %struct.idr, %struct.idr* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br label %185

185:                                              ; preds = %178, %173
  %186 = phi i1 [ false, %173 ], [ %184, %178 ]
  br i1 %186, label %187, label %202

187:                                              ; preds = %185
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %17, i64 %189
  %191 = load %struct.idr_layer*, %struct.idr_layer** %190, align 8
  store %struct.idr_layer* %191, %struct.idr_layer** %9, align 8
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @idr_pos(i32 %192, i32 %193)
  %195 = shl i32 1, %194
  %196 = xor i32 %195, -1
  %197 = sext i32 %196 to i64
  %198 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %199 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = and i64 %200, %197
  store i64 %201, i64* %199, align 8
  br label %173

202:                                              ; preds = %185
  store i32 0, i32* %10, align 4
  br label %203

203:                                              ; preds = %202, %141, %51, %42
  %204 = load i32, i32* %10, align 4
  %205 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %205)
  ret i32 %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mtx_assert(i32*, i32) #2

declare dso_local i8* @idr_get(%struct.idr*) #2

declare dso_local i32 @ffsl(i32) #2

declare dso_local i32 @panic(i8*, %struct.idr*, ...) #2

declare dso_local i32 @idr_pos(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
