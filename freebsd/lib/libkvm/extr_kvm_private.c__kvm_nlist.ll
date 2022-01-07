; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c__kvm_nlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c__kvm_nlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.kvm_nlist = type { i8*, i64, i8* }
%struct.kld_sym_lookup = type { i32, i8*, i8*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VNET_SYMPREFIX = common dso_local global i8* null, align 8
@DPCPU_SYMPREFIX = common dso_local global i8* null, align 8
@N_UNDF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@KLDSYM_LOOKUP = common dso_local global i32 0, align 4
@N_TEXT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"kvm_nlist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kvm_nlist(%struct.TYPE_12__* %0, %struct.kvm_nlist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.kvm_nlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_nlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kld_sym_lookup, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.kvm_nlist* %1, %struct.kvm_nlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = call i32 @ISALIVE(%struct.TYPE_12__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %54, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = load %struct.kvm_nlist*, %struct.kvm_nlist** %6, align 8
  %22 = call i32 @kvm_fdnlist(%struct.TYPE_12__* %20, %struct.kvm_nlist* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %240

27:                                               ; preds = %19
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @_kvm_vnet_initialized(%struct.TYPE_12__* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = load %struct.kvm_nlist*, %struct.kvm_nlist** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i8*, i8** @VNET_SYMPREFIX, align 8
  %37 = call i32 @kvm_fdnlist_prefix(%struct.TYPE_12__* %33, %struct.kvm_nlist* %34, i32 %35, i8* %36, i8* (%struct.TYPE_12__*, i8*)* @_kvm_vnet_validaddr)
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @_kvm_dpcpu_initialized(%struct.TYPE_12__* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = load %struct.kvm_nlist*, %struct.kvm_nlist** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i8*, i8** @DPCPU_SYMPREFIX, align 8
  %51 = call i32 @kvm_fdnlist_prefix(%struct.TYPE_12__* %47, %struct.kvm_nlist* %48, i32 %49, i8* %50, i8* (%struct.TYPE_12__*, i8*)* @_kvm_dpcpu_validaddr)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %46, %41, %38
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %240

54:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %217, %204, %54
  %56 = load %struct.kvm_nlist*, %struct.kvm_nlist** %6, align 8
  store %struct.kvm_nlist* %56, %struct.kvm_nlist** %8, align 8
  br label %57

57:                                               ; preds = %180, %55
  %58 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %59 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %64 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %62, %57
  %71 = phi i1 [ false, %57 ], [ %69, %62 ]
  br i1 %71, label %72, label %183

72:                                               ; preds = %70
  %73 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %74 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @N_UNDF, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %180

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.kld_sym_lookup, %struct.kld_sym_lookup* %10, i32 0, i32 0
  store i32 32, i32* %80, align 8
  %81 = getelementptr inbounds %struct.kld_sym_lookup, %struct.kld_sym_lookup* %10, i32 0, i32 2
  store i8* null, i8** %81, align 8
  %82 = getelementptr inbounds %struct.kld_sym_lookup, %struct.kld_sym_lookup* %10, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %79
  %91 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %92 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 95
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %100 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  br label %107

103:                                              ; preds = %90, %79
  %104 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %105 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  br label %107

107:                                              ; preds = %103, %98
  %108 = phi i8* [ %102, %98 ], [ %106, %103 ]
  %109 = call i32 @snprintf(i8* %83, i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %11, align 4
  %114 = icmp sge i32 %113, 1024
  br i1 %114, label %115, label %116

115:                                              ; preds = %112, %107
  br label %180

116:                                              ; preds = %112
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %118 = getelementptr inbounds %struct.kld_sym_lookup, %struct.kld_sym_lookup* %10, i32 0, i32 1
  store i8* %117, i8** %118, align 8
  %119 = getelementptr inbounds %struct.kld_sym_lookup, %struct.kld_sym_lookup* %10, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 95
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.kld_sym_lookup, %struct.kld_sym_lookup* %10, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %126, align 8
  br label %129

129:                                              ; preds = %125, %116
  %130 = load i32, i32* @KLDSYM_LOOKUP, align 4
  %131 = call i32 @kldsym(i32 0, i32 %130, %struct.kld_sym_lookup* %10)
  %132 = icmp ne i32 %131, -1
  br i1 %132, label %133, label %179

133:                                              ; preds = %129
  %134 = load i64, i64* @N_TEXT, align 8
  %135 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %136 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i64 @_kvm_vnet_initialized(%struct.TYPE_12__* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %133
  %142 = load i8*, i8** %12, align 8
  %143 = load i8*, i8** @VNET_SYMPREFIX, align 8
  %144 = call i64 @strcmp(i8* %142, i8* %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = getelementptr inbounds %struct.kld_sym_lookup, %struct.kld_sym_lookup* %10, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @_kvm_vnet_validaddr(%struct.TYPE_12__* %147, i8* %149)
  %151 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %152 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  br label %176

153:                                              ; preds = %141, %133
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i64 @_kvm_dpcpu_initialized(%struct.TYPE_12__* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = load i8*, i8** %12, align 8
  %160 = load i8*, i8** @DPCPU_SYMPREFIX, align 8
  %161 = call i64 @strcmp(i8* %159, i8* %160)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %165 = getelementptr inbounds %struct.kld_sym_lookup, %struct.kld_sym_lookup* %10, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = call i8* @_kvm_dpcpu_validaddr(%struct.TYPE_12__* %164, i8* %166)
  %168 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %169 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %168, i32 0, i32 2
  store i8* %167, i8** %169, align 8
  br label %175

170:                                              ; preds = %158, %153
  %171 = getelementptr inbounds %struct.kld_sym_lookup, %struct.kld_sym_lookup* %10, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %174 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %170, %163
  br label %176

176:                                              ; preds = %175, %146
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %176, %129
  br label %180

180:                                              ; preds = %179, %115, %78
  %181 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %182 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %181, i32 1
  store %struct.kvm_nlist* %182, %struct.kvm_nlist** %8, align 8
  br label %57

183:                                              ; preds = %70
  %184 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %185 = load %struct.kvm_nlist*, %struct.kvm_nlist** %6, align 8
  %186 = ptrtoint %struct.kvm_nlist* %184 to i64
  %187 = ptrtoint %struct.kvm_nlist* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 24
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = sub nsw i64 %189, %191
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %183
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %198 = load i32, i32* %7, align 4
  %199 = call i64 @_kvm_vnet_initialized(%struct.TYPE_12__* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load i32, i32* %14, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %201
  store i32 1, i32* %14, align 4
  %205 = load i8*, i8** @VNET_SYMPREFIX, align 8
  store i8* %205, i8** %12, align 8
  br label %55

206:                                              ; preds = %201, %196, %183
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %206
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %211 = load i32, i32* %7, align 4
  %212 = call i64 @_kvm_dpcpu_initialized(%struct.TYPE_12__* %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load i32, i32* %15, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %214
  store i32 1, i32* %15, align 4
  %218 = load i8*, i8** @DPCPU_SYMPREFIX, align 8
  store i8* %218, i8** %12, align 8
  br label %55

219:                                              ; preds = %214, %209, %206
  %220 = load %struct.kvm_nlist*, %struct.kvm_nlist** %8, align 8
  %221 = load %struct.kvm_nlist*, %struct.kvm_nlist** %6, align 8
  %222 = ptrtoint %struct.kvm_nlist* %220 to i64
  %223 = ptrtoint %struct.kvm_nlist* %221 to i64
  %224 = sub i64 %222, %223
  %225 = sdiv exact i64 %224, 24
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = sub nsw i64 %225, %227
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %11, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %219
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @_kvm_syserr(%struct.TYPE_12__* %233, i32 %236, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %238

238:                                              ; preds = %232, %219
  %239 = load i32, i32* %11, align 4
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %238, %52, %25
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @ISALIVE(%struct.TYPE_12__*) #1

declare dso_local i32 @kvm_fdnlist(%struct.TYPE_12__*, %struct.kvm_nlist*) #1

declare dso_local i64 @_kvm_vnet_initialized(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @kvm_fdnlist_prefix(%struct.TYPE_12__*, %struct.kvm_nlist*, i32, i8*, i8* (%struct.TYPE_12__*, i8*)*) #1

declare dso_local i8* @_kvm_vnet_validaddr(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @_kvm_dpcpu_initialized(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @_kvm_dpcpu_validaddr(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @kldsym(i32, i32, %struct.kld_sym_lookup*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @_kvm_syserr(%struct.TYPE_12__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
