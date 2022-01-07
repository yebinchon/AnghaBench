; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_expand_fast_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_expand_fast_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { %struct.evbuffer_chain*, %struct.evbuffer_chain**, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i32, i64, %struct.evbuffer_chain*, i64, i64 }

@EVBUFFER_IMMUTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_expand_fast_(%struct.evbuffer* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.evbuffer_chain*, align 8
  %9 = alloca %struct.evbuffer_chain*, align 8
  %10 = alloca %struct.evbuffer_chain*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %16 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %15, i32 0, i32 0
  %17 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %16, align 8
  store %struct.evbuffer_chain* %17, %struct.evbuffer_chain** %8, align 8
  %18 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %19 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 2
  %22 = zext i1 %21 to i32
  %23 = call i32 @EVUTIL_ASSERT(i32 %22)
  %24 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %25 = icmp eq %struct.evbuffer_chain* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %28 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EVBUFFER_IMMUTABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26, %3
  %34 = load i64, i64* %6, align 8
  %35 = call %struct.evbuffer_chain* @evbuffer_chain_new(i64 %34)
  store %struct.evbuffer_chain* %35, %struct.evbuffer_chain** %8, align 8
  %36 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %37 = icmp eq %struct.evbuffer_chain* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %222

39:                                               ; preds = %33
  %40 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %41 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %42 = call i32 @evbuffer_chain_insert(%struct.evbuffer* %40, %struct.evbuffer_chain* %41)
  store i32 0, i32* %4, align 4
  br label %222

43:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  store i64 0, i64* %11, align 8
  %44 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %45 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %44, i32 0, i32 1
  %46 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %45, align 8
  %47 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %46, align 8
  store %struct.evbuffer_chain* %47, %struct.evbuffer_chain** %8, align 8
  br label %48

48:                                               ; preds = %97, %43
  %49 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %50 = icmp ne %struct.evbuffer_chain* %49, null
  br i1 %50, label %51, label %101

51:                                               ; preds = %48
  %52 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %53 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %58 = call i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain* %57)
  store i64 %58, i64* %13, align 8
  %59 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %60 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %61 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %60, i32 0, i32 1
  %62 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %61, align 8
  %63 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %62, align 8
  %64 = icmp eq %struct.evbuffer_chain* %59, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @EVUTIL_ASSERT(i32 %65)
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %56
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %69, %56
  br label %86

76:                                               ; preds = %51
  %77 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %78 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %80 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %11, align 8
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %76, %75
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %222

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %101

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %99 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %98, i32 0, i32 2
  %100 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %99, align 8
  store %struct.evbuffer_chain* %100, %struct.evbuffer_chain** %8, align 8
  br label %48

101:                                              ; preds = %95, %48
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %107 = icmp eq %struct.evbuffer_chain* %106, null
  %108 = zext i1 %107 to i32
  %109 = call i32 @EVUTIL_ASSERT(i32 %108)
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %11, align 8
  %112 = sub i64 %110, %111
  %113 = call %struct.evbuffer_chain* @evbuffer_chain_new(i64 %112)
  store %struct.evbuffer_chain* %113, %struct.evbuffer_chain** %9, align 8
  %114 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %115 = icmp eq %struct.evbuffer_chain* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  store i32 -1, i32* %4, align 4
  br label %222

117:                                              ; preds = %105
  %118 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %119 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %120 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %119, i32 0, i32 0
  %121 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %120, align 8
  %122 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %121, i32 0, i32 2
  store %struct.evbuffer_chain* %118, %struct.evbuffer_chain** %122, align 8
  %123 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %124 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %125 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %124, i32 0, i32 0
  store %struct.evbuffer_chain* %123, %struct.evbuffer_chain** %125, align 8
  store i32 0, i32* %4, align 4
  br label %222

126:                                              ; preds = %101
  store i32 0, i32* %14, align 4
  %127 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %128 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %127, i32 0, i32 1
  %129 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %128, align 8
  %130 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %129, align 8
  store %struct.evbuffer_chain* %130, %struct.evbuffer_chain** %8, align 8
  %131 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %132 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %126
  %136 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %137 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %138 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %137, i32 0, i32 2
  %139 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %138, align 8
  %140 = icmp eq %struct.evbuffer_chain* %136, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @EVUTIL_ASSERT(i32 %141)
  store i32 1, i32* %14, align 4
  store i64 0, i64* %11, align 8
  br label %149

143:                                              ; preds = %126
  %144 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %145 = call i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain* %144)
  store i64 %145, i64* %11, align 8
  %146 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %147 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %146, i32 0, i32 2
  %148 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %147, align 8
  store %struct.evbuffer_chain* %148, %struct.evbuffer_chain** %8, align 8
  br label %149

149:                                              ; preds = %143, %135
  br label %150

150:                                              ; preds = %165, %149
  %151 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %152 = icmp ne %struct.evbuffer_chain* %151, null
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %155 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %154, i32 0, i32 2
  %156 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %155, align 8
  store %struct.evbuffer_chain* %156, %struct.evbuffer_chain** %10, align 8
  %157 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %158 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @EVUTIL_ASSERT(i32 %161)
  %163 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %164 = call i32 @evbuffer_chain_free(%struct.evbuffer_chain* %163)
  br label %165

165:                                              ; preds = %153
  %166 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  store %struct.evbuffer_chain* %166, %struct.evbuffer_chain** %8, align 8
  br label %150

167:                                              ; preds = %150
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* %11, align 8
  %170 = icmp uge i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @EVUTIL_ASSERT(i32 %171)
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* %11, align 8
  %175 = sub i64 %173, %174
  %176 = call %struct.evbuffer_chain* @evbuffer_chain_new(i64 %175)
  store %struct.evbuffer_chain* %176, %struct.evbuffer_chain** %9, align 8
  %177 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %178 = icmp eq %struct.evbuffer_chain* %177, null
  br i1 %178, label %179, label %198

179:                                              ; preds = %167
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %184 = call i32 @ZERO_CHAIN(%struct.evbuffer* %183)
  br label %197

185:                                              ; preds = %179
  %186 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %187 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %186, i32 0, i32 1
  %188 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %187, align 8
  %189 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %188, align 8
  %190 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %191 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %190, i32 0, i32 0
  store %struct.evbuffer_chain* %189, %struct.evbuffer_chain** %191, align 8
  %192 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %193 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %192, i32 0, i32 1
  %194 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %193, align 8
  %195 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %194, align 8
  %196 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %195, i32 0, i32 2
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %196, align 8
  br label %197

197:                                              ; preds = %185, %182
  store i32 -1, i32* %4, align 4
  br label %222

198:                                              ; preds = %167
  %199 = load i32, i32* %14, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %203 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %204 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %203, i32 0, i32 0
  store %struct.evbuffer_chain* %202, %struct.evbuffer_chain** %204, align 8
  %205 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %206 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %205, i32 0, i32 2
  store %struct.evbuffer_chain* %202, %struct.evbuffer_chain** %206, align 8
  %207 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %208 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %207, i32 0, i32 2
  %209 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %210 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %209, i32 0, i32 1
  store %struct.evbuffer_chain** %208, %struct.evbuffer_chain*** %210, align 8
  br label %221

211:                                              ; preds = %198
  %212 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %213 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %214 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %213, i32 0, i32 1
  %215 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %214, align 8
  %216 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %215, align 8
  %217 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %216, i32 0, i32 2
  store %struct.evbuffer_chain* %212, %struct.evbuffer_chain** %217, align 8
  %218 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %219 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %220 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %219, i32 0, i32 0
  store %struct.evbuffer_chain* %218, %struct.evbuffer_chain** %220, align 8
  br label %221

221:                                              ; preds = %211, %201
  store i32 0, i32* %4, align 4
  br label %222

222:                                              ; preds = %221, %197, %117, %116, %90, %39, %38
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local %struct.evbuffer_chain* @evbuffer_chain_new(i64) #1

declare dso_local i32 @evbuffer_chain_insert(%struct.evbuffer*, %struct.evbuffer_chain*) #1

declare dso_local i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain*) #1

declare dso_local i32 @evbuffer_chain_free(%struct.evbuffer_chain*) #1

declare dso_local i32 @ZERO_CHAIN(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
