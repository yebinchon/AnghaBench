; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_alloc_qp_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_alloc_qp_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_qp_cap = type { i32 }
%struct.mlx4_qp = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i8* }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_alloc_qp_buf(%struct.ibv_context* %0, %struct.ibv_qp_cap* %1, i32 %2, %struct.mlx4_qp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca %struct.ibv_qp_cap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_qp*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %6, align 8
  store %struct.ibv_qp_cap* %1, %struct.ibv_qp_cap** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlx4_qp* %3, %struct.mlx4_qp** %9, align 8
  %10 = load %struct.ibv_qp_cap*, %struct.ibv_qp_cap** %7, align 8
  %11 = getelementptr inbounds %struct.ibv_qp_cap, %struct.ibv_qp_cap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %14 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %17 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %4
  %22 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %23 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i8* @malloc(i32 %28)
  %30 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %31 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i8* %29, i8** %32, align 8
  %33 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %34 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %209

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %42 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %48 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i8* @malloc(i32 %53)
  %55 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %56 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i8* %54, i8** %57, align 8
  %58 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %59 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %46
  %64 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %65 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @free(i8* %67)
  store i32 -1, i32* %5, align 4
  br label %209

69:                                               ; preds = %46
  br label %70

70:                                               ; preds = %69, %40
  %71 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %72 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i32 4, i32* %73, align 8
  br label %74

74:                                               ; preds = %89, %70
  %75 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %76 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 1, %78
  %80 = sext i32 %79 to i64
  %81 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %82 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = icmp ult i64 %80, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %91 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %74

95:                                               ; preds = %74
  %96 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %97 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %101 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = shl i32 %99, %103
  %105 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %106 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %110 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %108, %112
  %114 = add nsw i32 %104, %113
  %115 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %116 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %118 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %122 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %120, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %95
  %127 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %128 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  store i32 0, i32* %129, align 4
  %130 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %131 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %135 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = shl i32 %133, %137
  %139 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %140 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 8
  br label %158

142:                                              ; preds = %95
  %143 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %144 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %148 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %146, %150
  %152 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %153 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  store i32 %151, i32* %154, align 4
  %155 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %156 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  store i32 0, i32* %157, align 8
  br label %158

158:                                              ; preds = %142, %126
  %159 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %160 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %204

163:                                              ; preds = %158
  %164 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %165 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %164, i32 0, i32 1
  %166 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %167 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %170 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call %struct.TYPE_7__* @to_mdev(i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @align(i32 %168, i32 %174)
  %176 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %177 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call %struct.TYPE_7__* @to_mdev(i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @mlx4_alloc_buf(%struct.TYPE_8__* %165, i32 %175, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %163
  %185 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %186 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @free(i8* %188)
  %190 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %191 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 4
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @free(i8* %193)
  store i32 -1, i32* %5, align 4
  br label %209

195:                                              ; preds = %163
  %196 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %197 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %201 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @memset(i32* %199, i32 0, i32 %202)
  br label %208

204:                                              ; preds = %158
  %205 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %206 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  store i32* null, i32** %207, align 8
  br label %208

208:                                              ; preds = %204, %195
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %208, %184, %63, %38
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @mlx4_alloc_buf(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @align(i32, i32) #1

declare dso_local %struct.TYPE_7__* @to_mdev(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
