; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_pending_udp_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_pending_udp_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending = type { i32, %struct.pending*, i32, i32*, i32, %struct.TYPE_3__, i8*, i32*, i32, i32, %struct.serviced_query*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.pending* }
%struct.TYPE_4__ = type { %struct.pending*, %struct.pending*, i32*, i32 }
%struct.serviced_query = type { %struct.TYPE_4__*, i32, i32 }
%struct.sldns_buffer = type { i32 }

@pending_udp_timer_cb = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"no fds available, udp query waiting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pending* @pending_udp_query(%struct.serviced_query* %0, %struct.sldns_buffer* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.pending*, align 8
  %7 = alloca %struct.serviced_query*, align 8
  %8 = alloca %struct.sldns_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pending*, align 8
  store %struct.serviced_query* %0, %struct.serviced_query** %7, align 8
  store %struct.sldns_buffer* %1, %struct.sldns_buffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = call i64 @calloc(i32 1, i32 88)
  %14 = inttoptr i64 %13 to %struct.pending*
  store %struct.pending* %14, %struct.pending** %12, align 8
  %15 = load %struct.pending*, %struct.pending** %12, align 8
  %16 = icmp ne %struct.pending* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.pending* null, %struct.pending** %6, align 8
  br label %146

18:                                               ; preds = %5
  %19 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %20 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.pending*, %struct.pending** %12, align 8
  %23 = getelementptr inbounds %struct.pending, %struct.pending* %22, i32 0, i32 11
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %25 = load %struct.pending*, %struct.pending** %12, align 8
  %26 = getelementptr inbounds %struct.pending, %struct.pending* %25, i32 0, i32 10
  store %struct.serviced_query* %24, %struct.serviced_query** %26, align 8
  %27 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %28 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pending*, %struct.pending** %12, align 8
  %31 = getelementptr inbounds %struct.pending, %struct.pending* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pending*, %struct.pending** %12, align 8
  %33 = getelementptr inbounds %struct.pending, %struct.pending* %32, i32 0, i32 8
  %34 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %35 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %34, i32 0, i32 2
  %36 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %37 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memmove(i32* %33, i32* %35, i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = load %struct.pending*, %struct.pending** %12, align 8
  %42 = getelementptr inbounds %struct.pending, %struct.pending* %41, i32 0, i32 7
  store i32* %40, i32** %42, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.pending*, %struct.pending** %12, align 8
  %45 = getelementptr inbounds %struct.pending, %struct.pending* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load %struct.pending*, %struct.pending** %12, align 8
  %47 = load %struct.pending*, %struct.pending** %12, align 8
  %48 = getelementptr inbounds %struct.pending, %struct.pending* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store %struct.pending* %46, %struct.pending** %49, align 8
  %50 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %51 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @pending_udp_timer_cb, align 4
  %56 = load %struct.pending*, %struct.pending** %12, align 8
  %57 = call i32 @comm_timer_create(i32 %54, i32 %55, %struct.pending* %56)
  %58 = load %struct.pending*, %struct.pending** %12, align 8
  %59 = getelementptr inbounds %struct.pending, %struct.pending* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.pending*, %struct.pending** %12, align 8
  %61 = getelementptr inbounds %struct.pending, %struct.pending* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %18
  %65 = load %struct.pending*, %struct.pending** %12, align 8
  %66 = call i32 @free(%struct.pending* %65)
  store %struct.pending* null, %struct.pending** %6, align 8
  br label %146

67:                                               ; preds = %18
  %68 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %69 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %132

74:                                               ; preds = %67
  %75 = load i32, i32* @VERB_ALGO, align 4
  %76 = call i32 @verbose(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.pending*, %struct.pending** %12, align 8
  %79 = getelementptr inbounds %struct.pending, %struct.pending* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.sldns_buffer*, %struct.sldns_buffer** %8, align 8
  %81 = call i32 @sldns_buffer_limit(%struct.sldns_buffer* %80)
  %82 = load %struct.pending*, %struct.pending** %12, align 8
  %83 = getelementptr inbounds %struct.pending, %struct.pending* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.sldns_buffer*, %struct.sldns_buffer** %8, align 8
  %85 = call i32 @sldns_buffer_begin(%struct.sldns_buffer* %84)
  %86 = load %struct.pending*, %struct.pending** %12, align 8
  %87 = getelementptr inbounds %struct.pending, %struct.pending* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @memdup(i32 %85, i32 %88)
  %90 = inttoptr i64 %89 to i32*
  %91 = load %struct.pending*, %struct.pending** %12, align 8
  %92 = getelementptr inbounds %struct.pending, %struct.pending* %91, i32 0, i32 3
  store i32* %90, i32** %92, align 8
  %93 = load %struct.pending*, %struct.pending** %12, align 8
  %94 = getelementptr inbounds %struct.pending, %struct.pending* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %74
  %98 = load %struct.pending*, %struct.pending** %12, align 8
  %99 = getelementptr inbounds %struct.pending, %struct.pending* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @comm_timer_delete(i32 %100)
  %102 = load %struct.pending*, %struct.pending** %12, align 8
  %103 = call i32 @free(%struct.pending* %102)
  store %struct.pending* null, %struct.pending** %6, align 8
  br label %146

104:                                              ; preds = %74
  %105 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %106 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.pending*, %struct.pending** %108, align 8
  %110 = icmp ne %struct.pending* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.pending*, %struct.pending** %12, align 8
  %113 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %114 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.pending*, %struct.pending** %116, align 8
  %118 = getelementptr inbounds %struct.pending, %struct.pending* %117, i32 0, i32 1
  store %struct.pending* %112, %struct.pending** %118, align 8
  br label %125

119:                                              ; preds = %104
  %120 = load %struct.pending*, %struct.pending** %12, align 8
  %121 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %122 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store %struct.pending* %120, %struct.pending** %124, align 8
  br label %125

125:                                              ; preds = %119, %111
  %126 = load %struct.pending*, %struct.pending** %12, align 8
  %127 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %128 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store %struct.pending* %126, %struct.pending** %130, align 8
  %131 = load %struct.pending*, %struct.pending** %12, align 8
  store %struct.pending* %131, %struct.pending** %6, align 8
  br label %146

132:                                              ; preds = %67
  %133 = load %struct.pending*, %struct.pending** %12, align 8
  %134 = load %struct.sldns_buffer*, %struct.sldns_buffer** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @randomize_and_send_udp(%struct.pending* %133, %struct.sldns_buffer* %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load %struct.serviced_query*, %struct.serviced_query** %7, align 8
  %140 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load %struct.pending*, %struct.pending** %12, align 8
  %143 = call i32 @pending_delete(%struct.TYPE_4__* %141, %struct.pending* %142)
  store %struct.pending* null, %struct.pending** %6, align 8
  br label %146

144:                                              ; preds = %132
  %145 = load %struct.pending*, %struct.pending** %12, align 8
  store %struct.pending* %145, %struct.pending** %6, align 8
  br label %146

146:                                              ; preds = %144, %138, %125, %97, %64, %17
  %147 = load %struct.pending*, %struct.pending** %6, align 8
  ret %struct.pending* %147
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @comm_timer_create(i32, i32, %struct.pending*) #1

declare dso_local i32 @free(%struct.pending*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @sldns_buffer_limit(%struct.sldns_buffer*) #1

declare dso_local i64 @memdup(i32, i32) #1

declare dso_local i32 @sldns_buffer_begin(%struct.sldns_buffer*) #1

declare dso_local i32 @comm_timer_delete(i32) #1

declare dso_local i32 @randomize_and_send_udp(%struct.pending*, %struct.sldns_buffer*, i32) #1

declare dso_local i32 @pending_delete(%struct.TYPE_4__*, %struct.pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
