; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_float.c_xdr_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_float.c_xdr_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgl_limits = type { %struct.vax_single, %struct.ieee_single }
%struct.vax_single = type { i32, i8*, i32, i32 }
%struct.ieee_single = type { i8*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@sgl_limits = common dso_local global %struct.sgl_limits* null, align 8
@VAX_SNG_BIAS = common dso_local global i8* null, align 8
@IEEE_SNG_BIAS = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_float(%struct.TYPE_5__* %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca %struct.ieee_single, align 8
  %7 = alloca %struct.vax_single, align 8
  %8 = alloca %struct.vax_single*, align 8
  %9 = alloca %struct.sgl_limits*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store float* %1, float** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %156 [
    i32 129, label %14
    i32 130, label %84
    i32 128, label %154
  ]

14:                                               ; preds = %2
  %15 = load float*, float** %5, align 8
  %16 = bitcast float* %15 to %struct.vax_single*
  %17 = bitcast %struct.vax_single* %7 to i8*
  %18 = bitcast %struct.vax_single* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  store i32 0, i32* %10, align 4
  %19 = load %struct.sgl_limits*, %struct.sgl_limits** @sgl_limits, align 8
  store %struct.sgl_limits* %19, %struct.sgl_limits** %9, align 8
  br label %20

20:                                               ; preds = %55, %14
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.sgl_limits*, %struct.sgl_limits** @sgl_limits, align 8
  %23 = call i32 @nitems(%struct.sgl_limits* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sgl_limits*, %struct.sgl_limits** %9, align 8
  %29 = getelementptr inbounds %struct.sgl_limits, %struct.sgl_limits* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %7, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.sgl_limits*, %struct.sgl_limits** %9, align 8
  %37 = getelementptr inbounds %struct.sgl_limits, %struct.sgl_limits* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %35, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %7, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sgl_limits*, %struct.sgl_limits** %9, align 8
  %45 = getelementptr inbounds %struct.sgl_limits, %struct.sgl_limits* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.sgl_limits*, %struct.sgl_limits** %9, align 8
  %51 = getelementptr inbounds %struct.sgl_limits, %struct.sgl_limits* %50, i32 0, i32 1
  %52 = bitcast %struct.ieee_single* %6 to i8*
  %53 = bitcast %struct.ieee_single* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false)
  br label %77

54:                                               ; preds = %41, %33, %25
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load %struct.sgl_limits*, %struct.sgl_limits** %9, align 8
  %59 = getelementptr inbounds %struct.sgl_limits, %struct.sgl_limits* %58, i32 1
  store %struct.sgl_limits* %59, %struct.sgl_limits** %9, align 8
  br label %20

60:                                               ; preds = %20
  %61 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %7, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** @VAX_SNG_BIAS, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = load i8*, i8** @IEEE_SNG_BIAS, align 8
  %68 = getelementptr i8, i8* %67, i64 %66
  %69 = getelementptr inbounds %struct.ieee_single, %struct.ieee_single* %6, i32 0, i32 0
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %7, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 %71, 16
  %73 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %72, %74
  %76 = getelementptr inbounds %struct.ieee_single, %struct.ieee_single* %6, i32 0, i32 1
  store i32 %75, i32* %76, align 8
  br label %77

77:                                               ; preds = %60, %49
  %78 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %7, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.ieee_single, %struct.ieee_single* %6, i32 0, i32 2
  store i32 %79, i32* %80, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = bitcast %struct.ieee_single* %6 to i32*
  %83 = call i32 @XDR_PUTINT32(%struct.TYPE_5__* %81, i32* %82)
  store i32 %83, i32* %3, align 4
  br label %158

84:                                               ; preds = %2
  %85 = load float*, float** %5, align 8
  %86 = bitcast float* %85 to %struct.vax_single*
  store %struct.vax_single* %86, %struct.vax_single** %8, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = bitcast %struct.ieee_single* %6 to i32*
  %89 = call i32 @XDR_GETINT32(%struct.TYPE_5__* %87, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %3, align 4
  br label %158

93:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  %94 = load %struct.sgl_limits*, %struct.sgl_limits** @sgl_limits, align 8
  store %struct.sgl_limits* %94, %struct.sgl_limits** %9, align 8
  br label %95

95:                                               ; preds = %123, %93
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.sgl_limits*, %struct.sgl_limits** @sgl_limits, align 8
  %98 = call i32 @nitems(%struct.sgl_limits* %97)
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.ieee_single, %struct.ieee_single* %6, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.sgl_limits*, %struct.sgl_limits** %9, align 8
  %104 = getelementptr inbounds %struct.sgl_limits, %struct.sgl_limits* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.ieee_single, %struct.ieee_single* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = icmp eq i8* %102, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.ieee_single, %struct.ieee_single* %6, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sgl_limits*, %struct.sgl_limits** %9, align 8
  %112 = getelementptr inbounds %struct.sgl_limits, %struct.sgl_limits* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.ieee_single, %struct.ieee_single* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load %struct.vax_single*, %struct.vax_single** %8, align 8
  %118 = load %struct.sgl_limits*, %struct.sgl_limits** %9, align 8
  %119 = getelementptr inbounds %struct.sgl_limits, %struct.sgl_limits* %118, i32 0, i32 0
  %120 = bitcast %struct.vax_single* %117 to i8*
  %121 = bitcast %struct.vax_single* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 24, i1 false)
  br label %148

122:                                              ; preds = %108, %100
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = load %struct.sgl_limits*, %struct.sgl_limits** %9, align 8
  %127 = getelementptr inbounds %struct.sgl_limits, %struct.sgl_limits* %126, i32 1
  store %struct.sgl_limits* %127, %struct.sgl_limits** %9, align 8
  br label %95

128:                                              ; preds = %95
  %129 = getelementptr inbounds %struct.ieee_single, %struct.ieee_single* %6, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** @IEEE_SNG_BIAS, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = load i8*, i8** @VAX_SNG_BIAS, align 8
  %136 = getelementptr i8, i8* %135, i64 %134
  %137 = load %struct.vax_single*, %struct.vax_single** %8, align 8
  %138 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = getelementptr inbounds %struct.ieee_single, %struct.ieee_single* %6, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.vax_single*, %struct.vax_single** %8, align 8
  %142 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = getelementptr inbounds %struct.ieee_single, %struct.ieee_single* %6, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = ashr i32 %144, 16
  %146 = load %struct.vax_single*, %struct.vax_single** %8, align 8
  %147 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %128, %116
  %149 = getelementptr inbounds %struct.ieee_single, %struct.ieee_single* %6, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.vax_single*, %struct.vax_single** %8, align 8
  %152 = getelementptr inbounds %struct.vax_single, %struct.vax_single* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* %3, align 4
  br label %158

154:                                              ; preds = %2
  %155 = load i32, i32* @TRUE, align 4
  store i32 %155, i32* %3, align 4
  br label %158

156:                                              ; preds = %2
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %154, %148, %91, %77
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nitems(%struct.sgl_limits*) #2

declare dso_local i32 @XDR_PUTINT32(%struct.TYPE_5__*, i32*) #2

declare dso_local i32 @XDR_GETINT32(%struct.TYPE_5__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
