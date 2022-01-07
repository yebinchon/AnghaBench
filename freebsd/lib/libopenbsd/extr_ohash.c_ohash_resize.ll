; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash = type { i32, i32, i32, %struct._ohash_record*, %struct.TYPE_2__ }
%struct._ohash_record = type { i64, i32* }
%struct.TYPE_2__ = type { i32, i32 (%struct._ohash_record.0*, i32)*, %struct._ohash_record* (i64, i32, i32)* }
%struct._ohash_record.0 = type opaque

@UINT_MAX = common dso_local global i32 0, align 4
@MINSIZE = common dso_local global i64 0, align 8
@DELETED = common dso_local global i32* null, align 8
@STAT_HASH_EXPAND = common dso_local global i32 0, align 4
@STAT_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohash*)* @ohash_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohash_resize(%struct.ohash* %0) #0 {
  %2 = alloca %struct.ohash*, align 8
  %3 = alloca %struct._ohash_record*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ohash* %0, %struct.ohash** %2, align 8
  %8 = load %struct.ohash*, %struct.ohash** %2, align 8
  %9 = getelementptr inbounds %struct.ohash, %struct.ohash* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 4, %10
  %12 = load %struct.ohash*, %struct.ohash** %2, align 8
  %13 = getelementptr inbounds %struct.ohash, %struct.ohash* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.ohash*, %struct.ohash** %2, align 8
  %18 = getelementptr inbounds %struct.ohash, %struct.ohash* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UINT_MAX, align 4
  %21 = lshr i32 %20, 1
  %22 = icmp uge i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @UINT_MAX, align 4
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %4, align 8
  br label %32

26:                                               ; preds = %16
  %27 = load %struct.ohash*, %struct.ohash** %2, align 8
  %28 = getelementptr inbounds %struct.ohash, %struct.ohash* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 1
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %26, %23
  br label %55

33:                                               ; preds = %1
  %34 = load %struct.ohash*, %struct.ohash** %2, align 8
  %35 = getelementptr inbounds %struct.ohash, %struct.ohash* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 3, %36
  %38 = load %struct.ohash*, %struct.ohash** %2, align 8
  %39 = getelementptr inbounds %struct.ohash, %struct.ohash* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 2, %40
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.ohash*, %struct.ohash** %2, align 8
  %45 = getelementptr inbounds %struct.ohash, %struct.ohash* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = lshr i32 %46, 1
  %48 = zext i32 %47 to i64
  store i64 %48, i64* %4, align 8
  br label %54

49:                                               ; preds = %33
  %50 = load %struct.ohash*, %struct.ohash** %2, align 8
  %51 = getelementptr inbounds %struct.ohash, %struct.ohash* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %49, %43
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @MINSIZE, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* @MINSIZE, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59, %55
  %62 = load %struct.ohash*, %struct.ohash** %2, align 8
  %63 = getelementptr inbounds %struct.ohash, %struct.ohash* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load %struct._ohash_record* (i64, i32, i32)*, %struct._ohash_record* (i64, i32, i32)** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.ohash*, %struct.ohash** %2, align 8
  %68 = getelementptr inbounds %struct.ohash, %struct.ohash* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call %struct._ohash_record* %65(i64 %66, i32 16, i32 %70)
  store %struct._ohash_record* %71, %struct._ohash_record** %3, align 8
  %72 = load %struct._ohash_record*, %struct._ohash_record** %3, align 8
  %73 = icmp ne %struct._ohash_record* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %61
  br label %213

75:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %180, %75
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.ohash*, %struct.ohash** %2, align 8
  %79 = getelementptr inbounds %struct.ohash, %struct.ohash* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %183

82:                                               ; preds = %76
  %83 = load %struct.ohash*, %struct.ohash** %2, align 8
  %84 = getelementptr inbounds %struct.ohash, %struct.ohash* %83, i32 0, i32 3
  %85 = load %struct._ohash_record*, %struct._ohash_record** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %85, i64 %87
  %89 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %179

92:                                               ; preds = %82
  %93 = load %struct.ohash*, %struct.ohash** %2, align 8
  %94 = getelementptr inbounds %struct.ohash, %struct.ohash* %93, i32 0, i32 3
  %95 = load %struct._ohash_record*, %struct._ohash_record** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %95, i64 %97
  %99 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** @DELETED, align 8
  %102 = icmp ne i32* %100, %101
  br i1 %102, label %103, label %179

103:                                              ; preds = %92
  %104 = load %struct.ohash*, %struct.ohash** %2, align 8
  %105 = getelementptr inbounds %struct.ohash, %struct.ohash* %104, i32 0, i32 3
  %106 = load %struct._ohash_record*, %struct._ohash_record** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %106, i64 %108
  %110 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %4, align 8
  %113 = urem i64 %111, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %6, align 4
  %115 = load %struct.ohash*, %struct.ohash** %2, align 8
  %116 = getelementptr inbounds %struct.ohash, %struct.ohash* %115, i32 0, i32 3
  %117 = load %struct._ohash_record*, %struct._ohash_record** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %117, i64 %119
  %121 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %4, align 8
  %124 = sub i64 %123, 2
  %125 = urem i64 %122, %124
  %126 = and i64 %125, -2
  %127 = add i64 %126, 1
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %151, %103
  %130 = load %struct._ohash_record*, %struct._ohash_record** %3, align 8
  %131 = load i32, i32* %6, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %130, i64 %132
  %134 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %152

137:                                              ; preds = %129
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %6, align 4
  %140 = add i32 %139, %138
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = zext i32 %141 to i64
  %143 = load i64, i64* %4, align 8
  %144 = icmp uge i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load i64, i64* %4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = zext i32 %147 to i64
  %149 = sub i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %145, %137
  br label %129

152:                                              ; preds = %129
  %153 = load %struct.ohash*, %struct.ohash** %2, align 8
  %154 = getelementptr inbounds %struct.ohash, %struct.ohash* %153, i32 0, i32 3
  %155 = load %struct._ohash_record*, %struct._ohash_record** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %155, i64 %157
  %159 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct._ohash_record*, %struct._ohash_record** %3, align 8
  %162 = load i32, i32* %6, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %161, i64 %163
  %165 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %164, i32 0, i32 0
  store i64 %160, i64* %165, align 8
  %166 = load %struct.ohash*, %struct.ohash** %2, align 8
  %167 = getelementptr inbounds %struct.ohash, %struct.ohash* %166, i32 0, i32 3
  %168 = load %struct._ohash_record*, %struct._ohash_record** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %168, i64 %170
  %172 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct._ohash_record*, %struct._ohash_record** %3, align 8
  %175 = load i32, i32* %6, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %174, i64 %176
  %178 = getelementptr inbounds %struct._ohash_record, %struct._ohash_record* %177, i32 0, i32 1
  store i32* %173, i32** %178, align 8
  br label %179

179:                                              ; preds = %152, %92, %82
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %5, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %76

183:                                              ; preds = %76
  %184 = load %struct.ohash*, %struct.ohash** %2, align 8
  %185 = getelementptr inbounds %struct.ohash, %struct.ohash* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32 (%struct._ohash_record.0*, i32)*, i32 (%struct._ohash_record.0*, i32)** %186, align 8
  %188 = load %struct.ohash*, %struct.ohash** %2, align 8
  %189 = getelementptr inbounds %struct.ohash, %struct.ohash* %188, i32 0, i32 3
  %190 = load %struct._ohash_record*, %struct._ohash_record** %189, align 8
  %191 = bitcast %struct._ohash_record* %190 to %struct._ohash_record.0*
  %192 = load %struct.ohash*, %struct.ohash** %2, align 8
  %193 = getelementptr inbounds %struct.ohash, %struct.ohash* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 %187(%struct._ohash_record.0* %191, i32 %195)
  %197 = load %struct._ohash_record*, %struct._ohash_record** %3, align 8
  %198 = load %struct.ohash*, %struct.ohash** %2, align 8
  %199 = getelementptr inbounds %struct.ohash, %struct.ohash* %198, i32 0, i32 3
  store %struct._ohash_record* %197, %struct._ohash_record** %199, align 8
  %200 = load i64, i64* %4, align 8
  %201 = trunc i64 %200 to i32
  %202 = load %struct.ohash*, %struct.ohash** %2, align 8
  %203 = getelementptr inbounds %struct.ohash, %struct.ohash* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load %struct.ohash*, %struct.ohash** %2, align 8
  %205 = getelementptr inbounds %struct.ohash, %struct.ohash* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ohash*, %struct.ohash** %2, align 8
  %208 = getelementptr inbounds %struct.ohash, %struct.ohash* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %209, %206
  store i32 %210, i32* %208, align 4
  %211 = load %struct.ohash*, %struct.ohash** %2, align 8
  %212 = getelementptr inbounds %struct.ohash, %struct.ohash* %211, i32 0, i32 0
  store i32 0, i32* %212, align 8
  br label %213

213:                                              ; preds = %183, %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
