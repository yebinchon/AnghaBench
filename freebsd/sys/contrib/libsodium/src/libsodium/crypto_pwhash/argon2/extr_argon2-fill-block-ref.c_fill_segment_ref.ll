; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-fill-block-ref.c_fill_segment_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-fill-block-ref.c_fill_segment_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32*, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { i64, i32, i32, i32 }

@Argon2_id = common dso_local global i64 0, align 8
@ARGON2_SYNC_POINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_segment_ref(%struct.TYPE_20__* %0, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %14, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %16 = icmp eq %struct.TYPE_20__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %212

18:                                               ; preds = %2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @Argon2_id, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ARGON2_SYNC_POINTS, align 4
  %32 = sdiv i32 %31, 2
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %24
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %34, %28, %18
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %6, align 8
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @generate_addresses(%struct.TYPE_20__* %42, %struct.TYPE_19__* %1, i32* %43)
  br label %45

45:                                               ; preds = %41, %35
  store i32 0, i32* %12, align 4
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 0, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 0, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 2, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %49, %45
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %56, %59
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = add nsw i32 %60, %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = srem i32 %70, %73
  %75 = icmp eq i32 0, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %54
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %77, %80
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %86

83:                                               ; preds = %54
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %83, %76
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %205, %86
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %212

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = srem i32 %95, %98
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %101, %94
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %7, align 4
  br label %126

113:                                              ; preds = %104
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %113, %107
  %127 = load i32, i32* %7, align 4
  %128 = ashr i32 %127, 32
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = srem i32 %128, %131
  store i32 %132, i32* %9, align 4
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %140, %136, %126
  %144 = load i32, i32* %13, align 4
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 3
  store i32 %144, i32* %145, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %9, align 4
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %148, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @index_alpha(%struct.TYPE_20__* %146, %struct.TYPE_19__* %1, i32 %147, i32 %152)
  store i32 %153, i32* %8, align 4
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 5
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %157, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i64 %164
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i64 %167
  store %struct.TYPE_18__* %168, %struct.TYPE_18__** %4, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 5
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i64 %175
  store %struct.TYPE_18__* %176, %struct.TYPE_18__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %143
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i64 %187
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %191 = call i32 @fill_block_with_xor(%struct.TYPE_18__* %188, %struct.TYPE_18__* %189, %struct.TYPE_18__* %190)
  br label %204

192:                                              ; preds = %143
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 5
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i64 %199
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %203 = call i32 @fill_block(%struct.TYPE_18__* %200, %struct.TYPE_18__* %201, %struct.TYPE_18__* %202)
  br label %204

204:                                              ; preds = %192, %180
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %88

212:                                              ; preds = %17, %88
  ret void
}

declare dso_local i32 @generate_addresses(%struct.TYPE_20__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @index_alpha(%struct.TYPE_20__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @fill_block_with_xor(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @fill_block(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
