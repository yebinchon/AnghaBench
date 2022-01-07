; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_float.c_xdr_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_float.c_xdr_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbl_limits = type { %struct.vax_double, %struct.ieee_double }
%struct.vax_double = type { i32, i32, i32, i32, i8*, i32 }
%struct.ieee_double = type { i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@dbl_limits = common dso_local global %struct.dbl_limits* null, align 8
@VAX_DBL_BIAS = common dso_local global i8* null, align 8
@IEEE_DBL_BIAS = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_double(%struct.TYPE_5__* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee_double, align 8
  %8 = alloca %struct.vax_double, align 8
  %9 = alloca %struct.dbl_limits*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store double* %1, double** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %226 [
    i32 129, label %14
    i32 130, label %128
    i32 128, label %224
  ]

14:                                               ; preds = %2
  %15 = load double*, double** %5, align 8
  %16 = bitcast double* %15 to %struct.vax_double*
  %17 = bitcast %struct.vax_double* %8 to i8*
  %18 = bitcast %struct.vax_double* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 32, i1 false)
  store i32 0, i32* %10, align 4
  %19 = load %struct.dbl_limits*, %struct.dbl_limits** @dbl_limits, align 8
  store %struct.dbl_limits* %19, %struct.dbl_limits** %9, align 8
  br label %20

20:                                               ; preds = %71, %14
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.dbl_limits*, %struct.dbl_limits** @dbl_limits, align 8
  %23 = call i32 @nitems(%struct.dbl_limits* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %29 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %37 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %45 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %53 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %61 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = icmp eq i8* %59, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %67 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %66, i32 0, i32 1
  %68 = bitcast %struct.ieee_double* %7 to i8*
  %69 = bitcast %struct.ieee_double* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 24, i1 false)
  br label %110

70:                                               ; preds = %57, %49, %41, %33, %25
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %75 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %74, i32 1
  store %struct.dbl_limits* %75, %struct.dbl_limits** %9, align 8
  br label %20

76:                                               ; preds = %20
  %77 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** @VAX_DBL_BIAS, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = load i8*, i8** @IEEE_DBL_BIAS, align 8
  %84 = getelementptr i8, i8* %83, i64 %82
  %85 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 13
  %89 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = ashr i32 %90, 3
  %92 = or i32 %88, %91
  %93 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 1
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @MASK(i32 3)
  %97 = and i32 %95, %96
  %98 = shl i32 %97, 29
  %99 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 13
  %102 = or i32 %98, %101
  %103 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 3
  %106 = call i32 @MASK(i32 13)
  %107 = and i32 %105, %106
  %108 = or i32 %102, %107
  %109 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 2
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %76, %65
  %111 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 3
  store i32 %112, i32* %113, align 8
  %114 = bitcast %struct.ieee_double* %7 to i32*
  store i32* %114, i32** %6, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %6, align 8
  %118 = call i32 @XDR_PUTINT32(%struct.TYPE_5__* %115, i32* %116)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %110
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @XDR_PUTINT32(%struct.TYPE_5__* %121, i32* %122)
  %124 = icmp ne i32 %123, 0
  br label %125

125:                                              ; preds = %120, %110
  %126 = phi i1 [ false, %110 ], [ %124, %120 ]
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %3, align 4
  br label %228

128:                                              ; preds = %2
  %129 = bitcast %struct.ieee_double* %7 to i32*
  store i32* %129, i32** %6, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %6, align 8
  %133 = call i32 @XDR_GETINT32(%struct.TYPE_5__* %130, i32* %131)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @XDR_GETINT32(%struct.TYPE_5__* %136, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %135, %128
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %3, align 4
  br label %228

142:                                              ; preds = %135
  store i32 0, i32* %10, align 4
  %143 = load %struct.dbl_limits*, %struct.dbl_limits** @dbl_limits, align 8
  store %struct.dbl_limits* %143, %struct.dbl_limits** %9, align 8
  br label %144

144:                                              ; preds = %179, %142
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.dbl_limits*, %struct.dbl_limits** @dbl_limits, align 8
  %147 = call i32 @nitems(%struct.dbl_limits* %146)
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %149, label %184

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %153 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %151, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %161 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %159, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %169 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = icmp eq i8* %167, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %165
  %174 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %175 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %174, i32 0, i32 0
  %176 = bitcast %struct.vax_double* %8 to i8*
  %177 = bitcast %struct.vax_double* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %176, i8* align 8 %177, i64 32, i1 false)
  br label %216

178:                                              ; preds = %165, %157, %149
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  %182 = load %struct.dbl_limits*, %struct.dbl_limits** %9, align 8
  %183 = getelementptr inbounds %struct.dbl_limits, %struct.dbl_limits* %182, i32 1
  store %struct.dbl_limits* %183, %struct.dbl_limits** %9, align 8
  br label %144

184:                                              ; preds = %144
  %185 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i8*, i8** @IEEE_DBL_BIAS, align 8
  %188 = ptrtoint i8* %186 to i64
  %189 = ptrtoint i8* %187 to i64
  %190 = sub i64 %188, %189
  %191 = load i8*, i8** @VAX_DBL_BIAS, align 8
  %192 = getelementptr i8, i8* %191, i64 %190
  %193 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 4
  store i8* %192, i8** %193, align 8
  %194 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = ashr i32 %195, 13
  %197 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 3
  store i32 %196, i32* %197, align 4
  %198 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @MASK(i32 13)
  %201 = and i32 %199, %200
  %202 = shl i32 %201, 3
  %203 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = ashr i32 %204, 29
  %206 = or i32 %202, %205
  %207 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 2
  store i32 %206, i32* %207, align 8
  %208 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = ashr i32 %209, 13
  %211 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 1
  store i32 %210, i32* %211, align 4
  %212 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = shl i32 %213, 3
  %215 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 0
  store i32 %214, i32* %215, align 8
  br label %216

216:                                              ; preds = %184, %173
  %217 = getelementptr inbounds %struct.ieee_double, %struct.ieee_double* %7, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.vax_double, %struct.vax_double* %8, i32 0, i32 5
  store i32 %218, i32* %219, align 8
  %220 = bitcast %struct.vax_double* %8 to double*
  %221 = load double, double* %220, align 8
  %222 = load double*, double** %5, align 8
  store double %221, double* %222, align 8
  %223 = load i32, i32* @TRUE, align 4
  store i32 %223, i32* %3, align 4
  br label %228

224:                                              ; preds = %2
  %225 = load i32, i32* @TRUE, align 4
  store i32 %225, i32* %3, align 4
  br label %228

226:                                              ; preds = %2
  %227 = load i32, i32* @FALSE, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %226, %224, %216, %140, %125
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nitems(%struct.dbl_limits*) #2

declare dso_local i32 @MASK(i32) #2

declare dso_local i32 @XDR_PUTINT32(%struct.TYPE_5__*, i32*) #2

declare dso_local i32 @XDR_GETINT32(%struct.TYPE_5__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
