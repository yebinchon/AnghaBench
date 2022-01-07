; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_entropy.c_fillpool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_entropy.c_fillpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@RND_POOLBITS = common dso_local global i32 0, align 4
@THRESHOLD_BITS = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@ENTROPY_SOURCETYPE_CALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i32)* @fillpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fillpool(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = call i32 @VALID_ENTROPY(%struct.TYPE_14__* %15)
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @REQUIRE(i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RND_POOLBITS, align 4
  %32 = sdiv i32 %31, 4
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RND_POOLBITS, align 4
  %40 = sdiv i32 %39, 4
  %41 = icmp sle i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %216

43:                                               ; preds = %34, %21
  %44 = load i32, i32* @THRESHOLD_BITS, align 4
  %45 = mul nsw i32 %44, 4
  store i32 %45, i32* %9, align 4
  br label %53

46:                                               ; preds = %3
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @THRESHOLD_BITS, align 4
  %49 = call i32 @ISC_MAX(i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @RND_POOLBITS, align 4
  %52 = call i32 @ISC_MIN(i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %46, %43
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @RND_POOLBITS, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %55, %59
  %61 = call i32 @ISC_MIN(i32 %54, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @THRESHOLD_BITS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %53
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @THRESHOLD_BITS, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %69, %72
  %74 = call i32 @ISC_MAX(i32 %68, i32 %73)
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %67, %53
  store i32 0, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %8, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = icmp eq %struct.TYPE_13__* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @ISC_LIST_HEAD(i32 %84)
  %86 = bitcast i8* %85 to %struct.TYPE_13__*
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = icmp eq %struct.TYPE_13__* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %216

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %11, align 8
  br label %99

99:                                               ; preds = %160, %95
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %143, %99
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ult i32 %101, %104
  br i1 %105, label %106, label %146

106:                                              ; preds = %100
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %146

110:                                              ; preds = %106
  store i32 0, i32* %12, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %122 [
    i32 129, label %114
    i32 128, label %118
  ]

114:                                              ; preds = %110
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @get_from_filesource(%struct.TYPE_13__* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  br label %122

118:                                              ; preds = %110
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @get_from_usocketsource(%struct.TYPE_13__* %119, i32 %120)
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %110, %118, %114
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %7, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @ISC_MIN(i32 %126, i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = sub i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = load i32, i32* @link, align 4
  %133 = call %struct.TYPE_13__* @ISC_LIST_NEXT(%struct.TYPE_13__* %131, i32 %132)
  store %struct.TYPE_13__* %133, %struct.TYPE_13__** %11, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %135 = icmp eq %struct.TYPE_13__* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %122
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @ISC_LIST_HEAD(i32 %139)
  %141 = bitcast i8* %140 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %141, %struct.TYPE_13__** %11, align 8
  br label %142

142:                                              ; preds = %136, %122
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %10, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %100

146:                                              ; preds = %109, %100
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  store %struct.TYPE_13__* %147, %struct.TYPE_13__** %149, align 8
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %146
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %157 = call i32 @wait_for_sources(%struct.TYPE_14__* %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %99

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %152, %146
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @ISC_LIST_HEAD(i32 %165)
  %167 = bitcast i8* %166 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %167, %struct.TYPE_13__** %11, align 8
  br label %168

168:                                              ; preds = %200, %162
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %173 = icmp ne %struct.TYPE_13__* %172, null
  br label %174

174:                                              ; preds = %171, %168
  %175 = phi i1 [ false, %168 ], [ %173, %171 ]
  br i1 %175, label %176, label %204

176:                                              ; preds = %174
  store i32 0, i32* %14, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @ENTROPY_SOURCETYPE_CALLBACK, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @get_from_callback(%struct.TYPE_13__* %183, i32 %184, i32 %185)
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %182, %176
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %7, align 4
  %190 = add i32 %189, %188
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @ISC_MIN(i32 %191, i32 %192)
  %194 = load i32, i32* %8, align 4
  %195 = sub i32 %194, %193
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp uge i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %187
  br label %204

200:                                              ; preds = %187
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %202 = load i32, i32* @link, align 4
  %203 = call %struct.TYPE_13__* @ISC_LIST_NEXT(%struct.TYPE_13__* %201, i32 %202)
  store %struct.TYPE_13__* %203, %struct.TYPE_13__** %11, align 8
  br label %168

204:                                              ; preds = %199, %174
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @THRESHOLD_BITS, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = add i32 %214, %211
  store i32 %215, i32* %213, align 8
  br label %216

216:                                              ; preds = %42, %93, %210, %204
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_ENTROPY(%struct.TYPE_14__*) #1

declare dso_local i32 @ISC_MAX(i32, i32) #1

declare dso_local i32 @ISC_MIN(i32, i32) #1

declare dso_local i8* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @get_from_filesource(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @get_from_usocketsource(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_13__* @ISC_LIST_NEXT(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @wait_for_sources(%struct.TYPE_14__*) #1

declare dso_local i32 @get_from_callback(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
