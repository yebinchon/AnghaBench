; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_image.c_pmcstat_image_add_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_image.c_pmcstat_image_add_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_image = type { i64, i64, %struct.pmcstat_symbol* }
%struct.pmcstat_symbol = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32 }

@STT_FUNC = common dso_local global i64 0, align 8
@STN_UNDEF = common dso_local global i64 0, align 8
@pmcstat_symbol_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_image_add_symbols(%struct.pmcstat_image* %0, i32* %1, i32* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.pmcstat_image*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pmcstat_symbol*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  %17 = alloca i32*, align 8
  store %struct.pmcstat_image* %0, %struct.pmcstat_image** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32* @elf_getdata(i32* %18, i32* null)
  store i32* %19, i32** %17, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %234

22:                                               ; preds = %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = udiv i64 %25, %28
  store i64 %29, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %51, %22
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load i32*, i32** %17, align 8
  %36 = load i64, i64* %10, align 8
  %37 = trunc i64 %36 to i32
  %38 = call %struct.TYPE_6__* @gelf_getsym(i32* %35, i32 %37, %struct.TYPE_6__* %16)
  %39 = icmp ne %struct.TYPE_6__* %38, %16
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %234

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @GELF_ST_TYPE(i32 %43)
  %45 = load i64, i64* @STT_FUNC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %30

54:                                               ; preds = %30
  %55 = load i64, i64* %13, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %234

58:                                               ; preds = %54
  %59 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %60 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %59, i32 0, i32 2
  %61 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %60, align 8
  %62 = icmp eq %struct.pmcstat_symbol* %61, null
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %65 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %64, i32 0, i32 2
  %66 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %65, align 8
  %67 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %68 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %69, %70
  %72 = call i8* @reallocarray(%struct.pmcstat_symbol* %66, i64 %71, i32 24)
  %73 = bitcast i8* %72 to %struct.pmcstat_symbol*
  store %struct.pmcstat_symbol* %73, %struct.pmcstat_symbol** %14, align 8
  %74 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %75 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %76 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %75, i32 0, i32 2
  %77 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %76, align 8
  %78 = icmp eq %struct.pmcstat_symbol* %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %58
  br label %234

80:                                               ; preds = %58
  %81 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %82 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %83 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %82, i32 0, i32 2
  store %struct.pmcstat_symbol* %81, %struct.pmcstat_symbol** %83, align 8
  %84 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %85 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %88 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %87, i64 %86
  store %struct.pmcstat_symbol* %88, %struct.pmcstat_symbol** %14, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %89

89:                                               ; preds = %158, %80
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %12, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %161

93:                                               ; preds = %89
  %94 = load i32*, i32** %17, align 8
  %95 = load i64, i64* %10, align 8
  %96 = trunc i64 %95 to i32
  %97 = call %struct.TYPE_6__* @gelf_getsym(i32* %94, i32 %96, %struct.TYPE_6__* %16)
  %98 = icmp ne %struct.TYPE_6__* %97, %16
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %234

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @GELF_ST_TYPE(i32 %102)
  %104 = load i64, i64* @STT_FUNC, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %158

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @STN_UNDEF, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %158

113:                                              ; preds = %107
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @pmcstat_symbol_search(%struct.pmcstat_image* %117, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %158

123:                                              ; preds = %116, %113
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @elf_strptr(i32* %124, i32 %127, i32 %129)
  store i8* %130, i8** %15, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %158

133:                                              ; preds = %123
  %134 = load i8*, i8** %15, align 8
  %135 = call i32 @pmcstat_string_intern(i8* %134)
  %136 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %137 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %141 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %139, %142
  %144 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %145 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %147 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %148, %150
  %152 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %153 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %155 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %154, i32 1
  store %struct.pmcstat_symbol* %155, %struct.pmcstat_symbol** %14, align 8
  %156 = load i64, i64* %11, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %11, align 8
  br label %158

158:                                              ; preds = %133, %132, %122, %112, %106
  %159 = load i64, i64* %10, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %10, align 8
  br label %89

161:                                              ; preds = %89
  %162 = load i64, i64* %11, align 8
  %163 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %164 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, %162
  store i64 %166, i64* %164, align 8
  %167 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %168 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  br label %234

172:                                              ; preds = %161
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* %13, align 8
  %175 = icmp ule i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* %13, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %172
  %182 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %183 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %182, i32 0, i32 2
  %184 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %183, align 8
  %185 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %186 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i8* @reallocarray(%struct.pmcstat_symbol* %184, i64 %187, i32 24)
  %189 = bitcast i8* %188 to %struct.pmcstat_symbol*
  %190 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %191 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %190, i32 0, i32 2
  store %struct.pmcstat_symbol* %189, %struct.pmcstat_symbol** %191, align 8
  br label %192

192:                                              ; preds = %181, %172
  %193 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %194 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %193, i32 0, i32 2
  %195 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %194, align 8
  %196 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %197 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @pmcstat_symbol_compare, align 4
  %200 = call i32 @qsort(%struct.pmcstat_symbol* %195, i64 %198, i32 24, i32 %199)
  %201 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %202 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %201, i32 0, i32 2
  %203 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %202, align 8
  store %struct.pmcstat_symbol* %203, %struct.pmcstat_symbol** %14, align 8
  br label %204

204:                                              ; preds = %231, %192
  %205 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %206 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %207 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %206, i32 0, i32 2
  %208 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %207, align 8
  %209 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %210 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = sub i64 %211, 1
  %213 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %208, i64 %212
  %214 = icmp ult %struct.pmcstat_symbol* %205, %213
  br i1 %214, label %215, label %234

215:                                              ; preds = %204
  %216 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %217 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %220 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %218, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %215
  %224 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %225 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %224, i64 1
  %226 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %229 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %223, %215
  br label %231

231:                                              ; preds = %230
  %232 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %233 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %232, i32 1
  store %struct.pmcstat_symbol* %233, %struct.pmcstat_symbol** %14, align 8
  br label %204

234:                                              ; preds = %21, %40, %57, %79, %99, %171, %204
  ret void
}

declare dso_local i32* @elf_getdata(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @gelf_getsym(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @GELF_ST_TYPE(i32) #1

declare dso_local i8* @reallocarray(%struct.pmcstat_symbol*, i64, i32) #1

declare dso_local i64 @pmcstat_symbol_search(%struct.pmcstat_image*, i64) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

declare dso_local i32 @pmcstat_string_intern(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @qsort(%struct.pmcstat_symbol*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
