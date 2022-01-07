; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_arrange_linetable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_arrange_linetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linetable = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.linetable_entry = type { i32, i32 }

@compare_lte = common dso_local global i32 0, align 4
@NUM_OF_FUNCTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.linetable* (%struct.linetable*)* @arrange_linetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.linetable* @arrange_linetable(%struct.linetable* %0) #0 {
  %2 = alloca %struct.linetable*, align 8
  %3 = alloca %struct.linetable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.linetable_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.linetable*, align 8
  store %struct.linetable* %0, %struct.linetable** %3, align 8
  store i32 20, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 @xmalloc(i32 %14)
  %16 = inttoptr i64 %15 to %struct.linetable_entry*
  store %struct.linetable_entry* %16, %struct.linetable_entry** %8, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %70, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.linetable*, %struct.linetable** %3, align 8
  %20 = getelementptr inbounds %struct.linetable, %struct.linetable* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %17
  %24 = load %struct.linetable*, %struct.linetable** %3, align 8
  %25 = getelementptr inbounds %struct.linetable, %struct.linetable* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %9, align 4
  %40 = load %struct.linetable_entry*, %struct.linetable_entry** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i64 @xrealloc(%struct.linetable_entry* %40, i32 %44)
  %46 = inttoptr i64 %45 to %struct.linetable_entry*
  store %struct.linetable_entry* %46, %struct.linetable_entry** %8, align 8
  br label %47

47:                                               ; preds = %37, %33
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.linetable_entry*, %struct.linetable_entry** %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %49, i64 %51
  %53 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load %struct.linetable*, %struct.linetable** %3, align 8
  %55 = getelementptr inbounds %struct.linetable, %struct.linetable* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.linetable_entry*, %struct.linetable_entry** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %62, i64 %64
  %66 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %65, i32 0, i32 1
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %47, %23
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %17

73:                                               ; preds = %17
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.linetable_entry*, %struct.linetable_entry** %8, align 8
  %78 = call i32 @xfree(%struct.linetable_entry* %77)
  %79 = load %struct.linetable*, %struct.linetable** %3, align 8
  store %struct.linetable* %79, %struct.linetable** %2, align 8
  br label %212

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.linetable_entry*, %struct.linetable_entry** %8, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @compare_lte, align 4
  %87 = call i32 @qsort(%struct.linetable_entry* %84, i32 %85, i32 8, i32 %86)
  br label %88

88:                                               ; preds = %83, %80
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.linetable*, %struct.linetable** %3, align 8
  %91 = getelementptr inbounds %struct.linetable, %struct.linetable* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 8
  %97 = add i64 16, %96
  %98 = trunc i64 %97 to i32
  %99 = call i64 @xmalloc(i32 %98)
  %100 = inttoptr i64 %99 to %struct.linetable*
  store %struct.linetable* %100, %struct.linetable** %10, align 8
  store i32 0, i32* %6, align 4
  %101 = load %struct.linetable*, %struct.linetable** %3, align 8
  %102 = getelementptr inbounds %struct.linetable, %struct.linetable* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %146

108:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %142, %108
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.linetable*, %struct.linetable** %3, align 8
  %112 = getelementptr inbounds %struct.linetable, %struct.linetable* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.linetable*, %struct.linetable** %3, align 8
  %117 = getelementptr inbounds %struct.linetable, %struct.linetable* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %115, %109
  %126 = phi i1 [ false, %109 ], [ %124, %115 ]
  br i1 %126, label %127, label %145

127:                                              ; preds = %125
  %128 = load %struct.linetable*, %struct.linetable** %10, align 8
  %129 = getelementptr inbounds %struct.linetable, %struct.linetable* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = load %struct.linetable*, %struct.linetable** %3, align 8
  %135 = getelementptr inbounds %struct.linetable, %struct.linetable* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = bitcast %struct.TYPE_2__* %133 to i8*
  %141 = bitcast %struct.TYPE_2__* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  br label %142

142:                                              ; preds = %127
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %109

145:                                              ; preds = %125
  br label %146

146:                                              ; preds = %145, %89
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %198, %146
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %201

151:                                              ; preds = %147
  %152 = load %struct.linetable_entry*, %struct.linetable_entry** %8, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %152, i64 %154
  %156 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %192, %151
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.linetable*, %struct.linetable** %3, align 8
  %162 = getelementptr inbounds %struct.linetable, %struct.linetable* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %159
  %166 = load %struct.linetable*, %struct.linetable** %3, align 8
  %167 = getelementptr inbounds %struct.linetable, %struct.linetable* %166, i32 0, i32 1
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br label %175

175:                                              ; preds = %165, %159
  %176 = phi i1 [ false, %159 ], [ %174, %165 ]
  br i1 %176, label %177, label %197

177:                                              ; preds = %175
  %178 = load %struct.linetable*, %struct.linetable** %10, align 8
  %179 = getelementptr inbounds %struct.linetable, %struct.linetable* %178, i32 0, i32 1
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %182
  %184 = load %struct.linetable*, %struct.linetable** %3, align 8
  %185 = getelementptr inbounds %struct.linetable, %struct.linetable* %184, i32 0, i32 1
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %188
  %190 = bitcast %struct.TYPE_2__* %183 to i8*
  %191 = bitcast %struct.TYPE_2__* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 8 %191, i64 16, i1 false)
  br label %192

192:                                              ; preds = %177
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %159

197:                                              ; preds = %175
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %147

201:                                              ; preds = %147
  %202 = load %struct.linetable_entry*, %struct.linetable_entry** %8, align 8
  %203 = call i32 @xfree(%struct.linetable_entry* %202)
  %204 = load %struct.linetable*, %struct.linetable** %3, align 8
  %205 = getelementptr inbounds %struct.linetable, %struct.linetable* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sub nsw i32 %206, %207
  %209 = load %struct.linetable*, %struct.linetable** %10, align 8
  %210 = getelementptr inbounds %struct.linetable, %struct.linetable* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load %struct.linetable*, %struct.linetable** %10, align 8
  store %struct.linetable* %211, %struct.linetable** %2, align 8
  br label %212

212:                                              ; preds = %201, %76
  %213 = load %struct.linetable*, %struct.linetable** %2, align 8
  ret %struct.linetable* %213
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @xrealloc(%struct.linetable_entry*, i32) #1

declare dso_local i32 @xfree(%struct.linetable_entry*) #1

declare dso_local i32 @qsort(%struct.linetable_entry*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
