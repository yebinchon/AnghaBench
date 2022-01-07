; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_pending_tcp_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_pending_tcp_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waiting_tcp = type { %struct.waiting_tcp*, i64, i32*, i32, i32, i32, i8*, i32*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.waiting_tcp*, %struct.waiting_tcp*, %struct.TYPE_4__*, i32, i32, %struct.pending_tcp* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.pending_tcp = type { i32 }
%struct.serviced_query = type { %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32, i32 }

@outnet_tcptimer = common dso_local global i32 0, align 4
@comm_tcp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.waiting_tcp* @pending_tcp_query(%struct.serviced_query* %0, i32* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.waiting_tcp*, align 8
  %7 = alloca %struct.serviced_query*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pending_tcp*, align 8
  %13 = alloca %struct.waiting_tcp*, align 8
  %14 = alloca %struct.timeval, align 4
  %15 = alloca i32, align 4
  store %struct.serviced_query* %0, %struct.serviced_query** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %17 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load %struct.pending_tcp*, %struct.pending_tcp** %19, align 8
  store %struct.pending_tcp* %20, %struct.pending_tcp** %12, align 8
  %21 = load %struct.pending_tcp*, %struct.pending_tcp** %12, align 8
  %22 = icmp ne %struct.pending_tcp* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %27

24:                                               ; preds = %5
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @sldns_buffer_limit(i32* %25)
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i64 [ 0, %23 ], [ %26, %24 ]
  %29 = add i64 72, %28
  %30 = call i64 @malloc(i64 %29)
  %31 = inttoptr i64 %30 to %struct.waiting_tcp*
  store %struct.waiting_tcp* %31, %struct.waiting_tcp** %13, align 8
  %32 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %33 = icmp ne %struct.waiting_tcp* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store %struct.waiting_tcp* null, %struct.waiting_tcp** %6, align 8
  br label %176

35:                                               ; preds = %27
  %36 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %37 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @outnet_tcptimer, align 4
  %42 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %43 = call i32 @comm_timer_create(i32 %40, i32 %41, %struct.waiting_tcp* %42)
  %44 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %45 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = icmp ne i32 %43, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %35
  %48 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %49 = call i32 @free(%struct.waiting_tcp* %48)
  store %struct.waiting_tcp* null, %struct.waiting_tcp** %6, align 8
  br label %176

50:                                               ; preds = %35
  %51 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %52 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %54 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %56 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ub_random(i32 %59)
  %61 = trunc i64 %60 to i32
  %62 = lshr i32 %61, 8
  %63 = and i32 %62, 65535
  store i32 %63, i32* %15, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @sldns_buffer_begin(i32* %64)
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @LDNS_ID_SET(i32 %65, i32 %66)
  %68 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %69 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %68, i32 0, i32 10
  %70 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %71 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %70, i32 0, i32 3
  %72 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %73 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memcpy(i32* %69, i32* %71, i32 %74)
  %76 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %77 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %80 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 8
  %81 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %82 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %85 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %84, i32 0, i32 8
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %85, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %88 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %87, i32 0, i32 7
  store i32* %86, i32** %88, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %91 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  %92 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %93 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %96 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %98 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %101 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sdiv i32 %102, 1000
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* %9, align 4
  %106 = srem i32 %105, 1000
  %107 = mul nsw i32 %106, 1000
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %110 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @comm_timer_set(i32 %111, %struct.timeval* %14)
  %113 = load %struct.pending_tcp*, %struct.pending_tcp** %12, align 8
  %114 = icmp ne %struct.pending_tcp* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %50
  %116 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @sldns_buffer_begin(i32* %117)
  %119 = load i32*, i32** %8, align 8
  %120 = call i64 @sldns_buffer_limit(i32* %119)
  %121 = call i32 @outnet_tcp_take_into_use(%struct.waiting_tcp* %116, i32 %118, i64 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %115
  %124 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %125 = call i32 @waiting_tcp_delete(%struct.waiting_tcp* %124)
  store %struct.waiting_tcp* null, %struct.waiting_tcp** %6, align 8
  br label %176

126:                                              ; preds = %115
  br label %174

127:                                              ; preds = %50
  %128 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %129 = bitcast %struct.waiting_tcp* %128 to i32*
  %130 = getelementptr inbounds i32, i32* %129, i64 72
  %131 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %132 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %131, i32 0, i32 2
  store i32* %130, i32** %132, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = call i64 @sldns_buffer_limit(i32* %133)
  %135 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %136 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %138 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @sldns_buffer_begin(i32* %140)
  %142 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %143 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @memmove(i32* %139, i32 %141, i64 %144)
  %146 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %147 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %146, i32 0, i32 0
  store %struct.waiting_tcp* null, %struct.waiting_tcp** %147, align 8
  %148 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %149 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %148, i32 0, i32 0
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load %struct.waiting_tcp*, %struct.waiting_tcp** %151, align 8
  %153 = icmp ne %struct.waiting_tcp* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %127
  %155 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %156 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %157 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %156, i32 0, i32 0
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load %struct.waiting_tcp*, %struct.waiting_tcp** %159, align 8
  %161 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %160, i32 0, i32 0
  store %struct.waiting_tcp* %155, %struct.waiting_tcp** %161, align 8
  br label %168

162:                                              ; preds = %127
  %163 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %164 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %165 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %164, i32 0, i32 0
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  store %struct.waiting_tcp* %163, %struct.waiting_tcp** %167, align 8
  br label %168

168:                                              ; preds = %162, %154
  %169 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %170 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %171 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store %struct.waiting_tcp* %169, %struct.waiting_tcp** %173, align 8
  br label %174

174:                                              ; preds = %168, %126
  %175 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  store %struct.waiting_tcp* %175, %struct.waiting_tcp** %6, align 8
  br label %176

176:                                              ; preds = %174, %123, %47, %34
  %177 = load %struct.waiting_tcp*, %struct.waiting_tcp** %6, align 8
  ret %struct.waiting_tcp* %177
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @comm_timer_create(i32, i32, %struct.waiting_tcp*) #1

declare dso_local i32 @free(%struct.waiting_tcp*) #1

declare dso_local i64 @ub_random(i32) #1

declare dso_local i32 @LDNS_ID_SET(i32, i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @comm_timer_set(i32, %struct.timeval*) #1

declare dso_local i32 @outnet_tcp_take_into_use(%struct.waiting_tcp*, i32, i64) #1

declare dso_local i32 @waiting_tcp_delete(%struct.waiting_tcp*) #1

declare dso_local i32 @memmove(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
