; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_mem.c_more_basic_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_mem.c_more_basic_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i8** (i32, i32)*, i8**, i8*, i8*, i8*, i32, i32, i32 (i32, i8**)* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@NUM_BASIC_BLOCKS = common dso_local global i32 0, align 4
@ISC_FALSE = common dso_local global i32 0, align 4
@TABLE_INCREMENT = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @more_basic_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @more_basic_blocks(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %13 = load i32, i32* @NUM_BASIC_BLOCKS, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %13, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %26, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = zext i32 %31 to i64
  %33 = icmp ugt i64 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @ISC_FALSE, align 4
  store i32 %35, i32* %2, align 4
  br label %225

36:                                               ; preds = %23, %1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ule i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @INSIST(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %114

53:                                               ; preds = %36
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @TABLE_INCREMENT, align 4
  %58 = zext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i8** (i32, i32)*, i8** (i32, i32)** %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = mul i64 %68, 8
  %70 = trunc i64 %69 to i32
  %71 = call i8** %63(i32 %66, i32 %70)
  store i8** %71, i8*** %9, align 8
  %72 = load i8**, i8*** %9, align 8
  %73 = icmp eq i8** %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %53
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @ISC_FALSE, align 4
  store i32 %79, i32* %2, align 4
  br label %225

80:                                               ; preds = %53
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %80
  %86 = load i8**, i8*** %9, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  %89 = load i8**, i8*** %88, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = mul i64 %92, 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i8** %86, i8** %89, i32 %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 12
  %98 = load i32 (i32, i8**)*, i32 (i32, i8**)** %97, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 6
  %104 = load i8**, i8*** %103, align 8
  %105 = call i32 %98(i32 %101, i8** %104)
  br label %106

106:                                              ; preds = %85, %80
  %107 = load i8**, i8*** %9, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 6
  store i8** %107, i8*** %109, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %106, %36
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 5
  %117 = load i8** (i32, i32)*, i8** (i32, i32)** %116, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @NUM_BASIC_BLOCKS, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %121, %124
  %126 = call i8** %117(i32 %120, i32 %125)
  %127 = bitcast i8** %126 to i8*
  store i8* %127, i8** %4, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %114
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* @ISC_FALSE, align 4
  store i32 %135, i32* %2, align 4
  br label %225

136:                                              ; preds = %114
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, %137
  store i64 %141, i64* %139, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 6
  %145 = load i8**, i8*** %144, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i8*, i8** %145, i64 %148
  store i8* %142, i8** %149, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %151, align 8
  %154 = load i8*, i8** %4, align 8
  store i8* %154, i8** %5, align 8
  %155 = load i8*, i8** %5, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %155, i64 %159
  store i8* %160, i8** %6, align 8
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %179, %136
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @NUM_BASIC_BLOCKS, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %161
  %167 = load i8*, i8** %6, align 8
  %168 = bitcast i8* %167 to %struct.TYPE_5__*
  %169 = load i8*, i8** %5, align 8
  %170 = bitcast i8* %169 to %struct.TYPE_5__*
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  store %struct.TYPE_5__* %168, %struct.TYPE_5__** %171, align 8
  %172 = load i8*, i8** %6, align 8
  store i8* %172, i8** %5, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8* %178, i8** %6, align 8
  br label %179

179:                                              ; preds = %166
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  br label %161

182:                                              ; preds = %161
  %183 = load i8*, i8** %5, align 8
  %184 = bitcast i8* %183 to %struct.TYPE_5__*
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %185, align 8
  %186 = load i8*, i8** %4, align 8
  store i8* %186, i8** %7, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = load i32, i32* @NUM_BASIC_BLOCKS, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = mul nsw i32 %188, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %187, i64 %193
  %195 = getelementptr inbounds i8, i8* %194, i64 -1
  store i8* %195, i8** %8, align 8
  %196 = load i8*, i8** %7, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 7
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ult i8* %196, %199
  br i1 %200, label %206, label %201

201:                                              ; preds = %182
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 7
  %204 = load i8*, i8** %203, align 8
  %205 = icmp eq i8* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %201, %182
  %207 = load i8*, i8** %7, align 8
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 7
  store i8* %207, i8** %209, align 8
  br label %210

210:                                              ; preds = %206, %201
  %211 = load i8*, i8** %8, align 8
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 8
  %214 = load i8*, i8** %213, align 8
  %215 = icmp ugt i8* %211, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = load i8*, i8** %8, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 8
  store i8* %217, i8** %219, align 8
  br label %220

220:                                              ; preds = %216, %210
  %221 = load i8*, i8** %4, align 8
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 9
  store i8* %221, i8** %223, align 8
  %224 = load i32, i32* @ISC_TRUE, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %220, %130, %74, %34
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
