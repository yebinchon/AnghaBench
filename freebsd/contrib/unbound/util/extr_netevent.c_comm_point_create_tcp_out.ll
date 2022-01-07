; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_tcp_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_tcp_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32, i32, i32, %struct.comm_point*, i64, i8*, i32*, %struct.TYPE_3__, i64, i64, i64, i64, i32, i32*, i32*, i64, i64, i32*, i64, i32*, i32*, i32, i64, i64, i32*, %struct.comm_base* }
%struct.TYPE_3__ = type { %struct.internal_event* }
%struct.internal_event = type { i32, i32, i32, i32, %struct.internal_event*, i64, i8*, i32*, %struct.TYPE_3__, i64, i64, i64, i64, i32, i32*, i32*, i64, i64, i32*, i64, i32*, i32*, i32, i64, i64, i32*, %struct.comm_base* }
%struct.comm_base = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TCP_QUERY_TIMEOUT = common dso_local global i32 0, align 4
@comm_tcp = common dso_local global i32 0, align 4
@UB_EV_PERSIST = common dso_local global i16 0, align 2
@UB_EV_WRITE = common dso_local global i16 0, align 2
@comm_point_tcp_handle_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not baseset tcpout event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_point* @comm_point_create_tcp_out(%struct.comm_base* %0, i64 %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.comm_point*, align 8
  %6 = alloca %struct.comm_base*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.comm_point*, align 8
  %11 = alloca i16, align 2
  store %struct.comm_base* %0, %struct.comm_base** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = call i64 @calloc(i32 1, i32 200)
  %13 = inttoptr i64 %12 to %struct.comm_point*
  store %struct.comm_point* %13, %struct.comm_point** %10, align 8
  %14 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %15 = icmp ne %struct.comm_point* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.comm_point* null, %struct.comm_point** %5, align 8
  br label %150

17:                                               ; preds = %4
  %18 = call i64 @calloc(i32 1, i32 200)
  %19 = inttoptr i64 %18 to %struct.internal_event*
  %20 = bitcast %struct.internal_event* %19 to %struct.comm_point*
  %21 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %22 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %21, i32 0, i32 4
  store %struct.comm_point* %20, %struct.comm_point** %22, align 8
  %23 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %24 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %23, i32 0, i32 4
  %25 = load %struct.comm_point*, %struct.comm_point** %24, align 8
  %26 = icmp ne %struct.comm_point* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %29 = bitcast %struct.comm_point* %28 to %struct.internal_event*
  %30 = call i32 @free(%struct.internal_event* %29)
  store %struct.comm_point* null, %struct.comm_point** %5, align 8
  br label %150

31:                                               ; preds = %17
  %32 = load %struct.comm_base*, %struct.comm_base** %6, align 8
  %33 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %34 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %33, i32 0, i32 4
  %35 = load %struct.comm_point*, %struct.comm_point** %34, align 8
  %36 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %35, i32 0, i32 26
  store %struct.comm_base* %32, %struct.comm_base** %36, align 8
  %37 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @sldns_buffer_new(i64 %39)
  %41 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %42 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %44 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %31
  %48 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %49 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %48, i32 0, i32 4
  %50 = load %struct.comm_point*, %struct.comm_point** %49, align 8
  %51 = bitcast %struct.comm_point* %50 to %struct.internal_event*
  %52 = call i32 @free(%struct.internal_event* %51)
  %53 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %54 = bitcast %struct.comm_point* %53 to %struct.internal_event*
  %55 = call i32 @free(%struct.internal_event* %54)
  store %struct.comm_point* null, %struct.comm_point** %5, align 8
  br label %150

56:                                               ; preds = %31
  %57 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %58 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %57, i32 0, i32 25
  store i32* null, i32** %58, align 8
  %59 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %60 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %59, i32 0, i32 24
  store i64 0, i64* %60, align 8
  %61 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %62 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %61, i32 0, i32 23
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @TCP_QUERY_TIMEOUT, align 4
  %64 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %65 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %64, i32 0, i32 22
  store i32 %63, i32* %65, align 8
  %66 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %67 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %66, i32 0, i32 21
  store i32* null, i32** %67, align 8
  %68 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %69 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %68, i32 0, i32 20
  store i32* null, i32** %69, align 8
  %70 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %71 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %70, i32 0, i32 19
  store i64 0, i64* %71, align 8
  %72 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %73 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %72, i32 0, i32 18
  store i32* null, i32** %73, align 8
  %74 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %75 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %74, i32 0, i32 17
  store i64 0, i64* %75, align 8
  %76 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %77 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %76, i32 0, i32 16
  store i64 0, i64* %77, align 8
  %78 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %79 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %78, i32 0, i32 15
  store i32* null, i32** %79, align 8
  %80 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %81 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %80, i32 0, i32 14
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* @comm_tcp, align 4
  %83 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %84 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %83, i32 0, i32 13
  store i32 %82, i32* %84, align 8
  %85 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %86 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %85, i32 0, i32 12
  store i64 0, i64* %86, align 8
  %87 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %88 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %87, i32 0, i32 11
  store i64 0, i64* %88, align 8
  %89 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %90 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %92 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  %93 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %94 = bitcast %struct.comm_point* %93 to %struct.internal_event*
  %95 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %96 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store %struct.internal_event* %94, %struct.internal_event** %97, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %100 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %99, i32 0, i32 7
  store i32* %98, i32** %100, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %103 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %102, i32 0, i32 6
  store i8* %101, i8** %103, align 8
  %104 = load i16, i16* @UB_EV_PERSIST, align 2
  %105 = sext i16 %104 to i32
  %106 = load i16, i16* @UB_EV_WRITE, align 2
  %107 = sext i16 %106 to i32
  %108 = or i32 %105, %107
  %109 = trunc i32 %108 to i16
  store i16 %109, i16* %11, align 2
  %110 = load %struct.comm_base*, %struct.comm_base** %6, align 8
  %111 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %116 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i16, i16* %11, align 2
  %119 = load i32, i32* @comm_point_tcp_handle_callback, align 4
  %120 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %121 = bitcast %struct.comm_point* %120 to %struct.internal_event*
  %122 = call %struct.internal_event* @ub_event_new(i32 %114, i32 %117, i16 signext %118, i32 %119, %struct.internal_event* %121)
  %123 = bitcast %struct.internal_event* %122 to %struct.comm_point*
  %124 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %125 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %124, i32 0, i32 4
  %126 = load %struct.comm_point*, %struct.comm_point** %125, align 8
  %127 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %126, i32 0, i32 4
  store %struct.comm_point* %123, %struct.comm_point** %127, align 8
  %128 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %129 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %128, i32 0, i32 4
  %130 = load %struct.comm_point*, %struct.comm_point** %129, align 8
  %131 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %130, i32 0, i32 4
  %132 = load %struct.comm_point*, %struct.comm_point** %131, align 8
  %133 = icmp eq %struct.comm_point* %132, null
  br i1 %133, label %134, label %148

134:                                              ; preds = %56
  %135 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %137 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @sldns_buffer_free(i64 %138)
  %140 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %141 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %140, i32 0, i32 4
  %142 = load %struct.comm_point*, %struct.comm_point** %141, align 8
  %143 = bitcast %struct.comm_point* %142 to %struct.internal_event*
  %144 = call i32 @free(%struct.internal_event* %143)
  %145 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %146 = bitcast %struct.comm_point* %145 to %struct.internal_event*
  %147 = call i32 @free(%struct.internal_event* %146)
  store %struct.comm_point* null, %struct.comm_point** %5, align 8
  br label %150

148:                                              ; preds = %56
  %149 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  store %struct.comm_point* %149, %struct.comm_point** %5, align 8
  br label %150

150:                                              ; preds = %148, %134, %47, %27, %16
  %151 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  ret %struct.comm_point* %151
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.internal_event*) #1

declare dso_local i64 @sldns_buffer_new(i64) #1

declare dso_local %struct.internal_event* @ub_event_new(i32, i32, i16 signext, i32, %struct.internal_event*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @sldns_buffer_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
