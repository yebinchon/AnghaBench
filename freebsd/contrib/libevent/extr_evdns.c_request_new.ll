; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_request_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_request_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, i32, %struct.evdns_request*, i32*, i32, i32*, i32, i8*, i64, i32*, %struct.evdns_base*, i32 }
%struct.evdns_base = type { i64, i64, i64, i32 }
%struct.evdns_request = type { %struct.evdns_base*, %struct.request* }

@evdns_request_timeout_callback = common dso_local global i32 0, align 4
@CLASS_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.evdns_base*, %struct.evdns_request*, i32, i8*, i32, i32, i8*)* @request_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @request_new(%struct.evdns_base* %0, %struct.evdns_request* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.evdns_base*, align 8
  %10 = alloca %struct.evdns_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.request*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [256 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca [32 x i8], align 16
  store %struct.evdns_base* %0, %struct.evdns_base** %9, align 8
  store %struct.evdns_request* %1, %struct.evdns_request** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %25 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %26 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %29 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %16, align 1
  %35 = load i8*, i8** %12, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = call i64 @evdns_request_len(i64 %37)
  store i64 %38, i64* %18, align 8
  %39 = load i8, i8* %16, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %7
  %43 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %44 = call i32 @transaction_id_pick(%struct.evdns_base* %43)
  br label %46

45:                                               ; preds = %7
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 65535, %45 ]
  store i32 %47, i32* %19, align 4
  %48 = load i64, i64* %18, align 8
  %49 = add i64 96, %48
  %50 = trunc i64 %49 to i32
  %51 = call %struct.request* @mm_malloc(i32 %50)
  store %struct.request* %51, %struct.request** %20, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %54 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %53)
  %55 = load %struct.request*, %struct.request** %20, align 8
  %56 = icmp ne %struct.request* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  store %struct.request* null, %struct.request** %8, align 8
  br label %211

58:                                               ; preds = %46
  %59 = load i64, i64* %17, align 8
  %60 = icmp uge i64 %59, 256
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.request*, %struct.request** %20, align 8
  %63 = call i32 @mm_free(%struct.request* %62)
  store %struct.request* null, %struct.request** %8, align 8
  br label %211

64:                                               ; preds = %58
  %65 = load %struct.request*, %struct.request** %20, align 8
  %66 = call i32 @memset(%struct.request* %65, i32 0, i32 96)
  %67 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %68 = load %struct.request*, %struct.request** %20, align 8
  %69 = getelementptr inbounds %struct.request, %struct.request* %68, i32 0, i32 12
  store %struct.evdns_base* %67, %struct.evdns_base** %69, align 8
  %70 = load %struct.request*, %struct.request** %20, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 13
  %72 = load %struct.request*, %struct.request** %20, align 8
  %73 = getelementptr inbounds %struct.request, %struct.request* %72, i32 0, i32 12
  %74 = load %struct.evdns_base*, %struct.evdns_base** %73, align 8
  %75 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @evdns_request_timeout_callback, align 4
  %78 = load %struct.request*, %struct.request** %20, align 8
  %79 = call i32 @evtimer_assign(i32* %71, i32 %76, i32 %77, %struct.request* %78)
  %80 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %81 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %140

84:                                               ; preds = %64
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @strlcpy(i8* %85, i8* %86, i32 256)
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %89 = load i64, i64* %17, align 8
  %90 = add i64 %89, 7
  %91 = udiv i64 %90, 8
  %92 = call i32 @evutil_secure_rng_get_bytes(i8* %88, i64 %91)
  store i32 0, i32* %23, align 4
  br label %93

93:                                               ; preds = %135, %84
  %94 = load i32, i32* %23, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %17, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %138

98:                                               ; preds = %93
  %99 = load i32, i32* %23, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @EVUTIL_ISALPHA_(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %98
  %106 = load i32, i32* %23, align 4
  %107 = lshr i32 %106, 3
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = load i32, i32* %23, align 4
  %113 = and i32 %112, 7
  %114 = shl i32 1, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %105
  %118 = load i32, i32* %23, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = or i32 %122, 32
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %120, align 1
  br label %133

125:                                              ; preds = %105
  %126 = load i32, i32* %23, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = and i32 %130, -33
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %128, align 1
  br label %133

133:                                              ; preds = %125, %117
  br label %134

134:                                              ; preds = %133, %98
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %23, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %23, align 4
  br label %93

138:                                              ; preds = %93
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  store i8* %139, i8** %12, align 8
  br label %140

140:                                              ; preds = %138, %64
  %141 = load %struct.request*, %struct.request** %20, align 8
  %142 = bitcast %struct.request* %141 to i32*
  %143 = getelementptr inbounds i32, i32* %142, i64 96
  %144 = load %struct.request*, %struct.request** %20, align 8
  %145 = getelementptr inbounds %struct.request, %struct.request* %144, i32 0, i32 11
  store i32* %143, i32** %145, align 8
  %146 = load %struct.request*, %struct.request** %20, align 8
  %147 = getelementptr inbounds %struct.request, %struct.request* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = load i64, i64* %17, align 8
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @CLASS_INET, align 4
  %153 = load %struct.request*, %struct.request** %20, align 8
  %154 = getelementptr inbounds %struct.request, %struct.request* %153, i32 0, i32 11
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %18, align 8
  %157 = call i32 @evdns_request_data_build(i8* %148, i64 %149, i32 %150, i32 %151, i32 %152, i32* %155, i64 %156)
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %21, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %140
  br label %208

161:                                              ; preds = %140
  %162 = load i32, i32* %21, align 4
  %163 = load %struct.request*, %struct.request** %20, align 8
  %164 = getelementptr inbounds %struct.request, %struct.request* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load %struct.request*, %struct.request** %20, align 8
  %167 = getelementptr inbounds %struct.request, %struct.request* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.request*, %struct.request** %20, align 8
  %169 = getelementptr inbounds %struct.request, %struct.request* %168, i32 0, i32 10
  store i64 0, i64* %169, align 8
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.request*, %struct.request** %20, align 8
  %172 = getelementptr inbounds %struct.request, %struct.request* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  %173 = load i8*, i8** %15, align 8
  %174 = load %struct.request*, %struct.request** %20, align 8
  %175 = getelementptr inbounds %struct.request, %struct.request* %174, i32 0, i32 9
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.request*, %struct.request** %20, align 8
  %178 = getelementptr inbounds %struct.request, %struct.request* %177, i32 0, i32 8
  store i32 %176, i32* %178, align 8
  %179 = load i8, i8* %16, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %161
  %183 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %184 = call i32* @nameserver_pick(%struct.evdns_base* %183)
  br label %186

185:                                              ; preds = %161
  br label %186

186:                                              ; preds = %185, %182
  %187 = phi i32* [ %184, %182 ], [ null, %185 ]
  %188 = load %struct.request*, %struct.request** %20, align 8
  %189 = getelementptr inbounds %struct.request, %struct.request* %188, i32 0, i32 7
  store i32* %187, i32** %189, align 8
  %190 = load %struct.request*, %struct.request** %20, align 8
  %191 = getelementptr inbounds %struct.request, %struct.request* %190, i32 0, i32 5
  store i32* null, i32** %191, align 8
  %192 = load %struct.request*, %struct.request** %20, align 8
  %193 = getelementptr inbounds %struct.request, %struct.request* %192, i32 0, i32 6
  store i32 0, i32* %193, align 8
  %194 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %195 = load %struct.request*, %struct.request** %20, align 8
  %196 = getelementptr inbounds %struct.request, %struct.request* %195, i32 0, i32 4
  store %struct.evdns_request* %194, %struct.evdns_request** %196, align 8
  %197 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %198 = icmp ne %struct.evdns_request* %197, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %186
  %200 = load %struct.request*, %struct.request** %20, align 8
  %201 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %202 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %201, i32 0, i32 1
  store %struct.request* %200, %struct.request** %202, align 8
  %203 = load %struct.evdns_base*, %struct.evdns_base** %9, align 8
  %204 = load %struct.evdns_request*, %struct.evdns_request** %10, align 8
  %205 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %204, i32 0, i32 0
  store %struct.evdns_base* %203, %struct.evdns_base** %205, align 8
  br label %206

206:                                              ; preds = %199, %186
  %207 = load %struct.request*, %struct.request** %20, align 8
  store %struct.request* %207, %struct.request** %8, align 8
  br label %211

208:                                              ; preds = %160
  %209 = load %struct.request*, %struct.request** %20, align 8
  %210 = call i32 @mm_free(%struct.request* %209)
  store %struct.request* null, %struct.request** %8, align 8
  br label %211

211:                                              ; preds = %208, %206, %61, %57
  %212 = load %struct.request*, %struct.request** %8, align 8
  ret %struct.request* %212
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @evdns_request_len(i64) #1

declare dso_local i32 @transaction_id_pick(%struct.evdns_base*) #1

declare dso_local %struct.request* @mm_malloc(i32) #1

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i32 @mm_free(%struct.request*) #1

declare dso_local i32 @memset(%struct.request*, i32, i32) #1

declare dso_local i32 @evtimer_assign(i32*, i32, i32, %struct.request*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @evutil_secure_rng_get_bytes(i8*, i64) #1

declare dso_local i64 @EVUTIL_ISALPHA_(i8 signext) #1

declare dso_local i32 @evdns_request_data_build(i8*, i64, i32, i32, i32, i32*, i64) #1

declare dso_local i32* @nameserver_pick(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
