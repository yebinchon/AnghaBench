; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_http_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_http_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32, i32, i32, i32, %struct.comm_point*, i64, i32, i8*, i32*, %struct.TYPE_3__, i64, i64, i32*, i64, i64, i64, i64, i32, i32*, i32*, i64, i64, i32*, i64, i64, i32*, %struct.comm_base* }
%struct.TYPE_3__ = type { %struct.internal_event* }
%struct.internal_event = type { i32, i32, i32, i32, i32, %struct.internal_event*, i64, i32, i8*, i32*, %struct.TYPE_3__, i64, i64, i32*, i64, i64, i64, i64, i32, i32*, i32*, i64, i64, i32*, i64, i64, i32*, %struct.comm_base* }
%struct.comm_base = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@comm_http = common dso_local global i32 0, align 4
@UB_EV_PERSIST = common dso_local global i16 0, align 2
@UB_EV_WRITE = common dso_local global i16 0, align 2
@comm_point_http_handle_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not baseset tcpout event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_point* @comm_point_create_http_out(%struct.comm_base* %0, i64 %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca %struct.comm_base*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.comm_point*, align 8
  %13 = alloca i16, align 2
  store %struct.comm_base* %0, %struct.comm_base** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = call i64 @calloc(i32 1, i32 208)
  %15 = inttoptr i64 %14 to %struct.comm_point*
  store %struct.comm_point* %15, %struct.comm_point** %12, align 8
  %16 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %17 = icmp ne %struct.comm_point* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %152

19:                                               ; preds = %5
  %20 = call i64 @calloc(i32 1, i32 208)
  %21 = inttoptr i64 %20 to %struct.internal_event*
  %22 = bitcast %struct.internal_event* %21 to %struct.comm_point*
  %23 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %24 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %23, i32 0, i32 5
  store %struct.comm_point* %22, %struct.comm_point** %24, align 8
  %25 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %26 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %25, i32 0, i32 5
  %27 = load %struct.comm_point*, %struct.comm_point** %26, align 8
  %28 = icmp ne %struct.comm_point* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %31 = bitcast %struct.comm_point* %30 to %struct.internal_event*
  %32 = call i32 @free(%struct.internal_event* %31)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %152

33:                                               ; preds = %19
  %34 = load %struct.comm_base*, %struct.comm_base** %7, align 8
  %35 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %36 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %35, i32 0, i32 5
  %37 = load %struct.comm_point*, %struct.comm_point** %36, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 27
  store %struct.comm_base* %34, %struct.comm_base** %38, align 8
  %39 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %40 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @sldns_buffer_new(i64 %41)
  %43 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %44 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %43, i32 0, i32 6
  store i64 %42, i64* %44, align 8
  %45 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %46 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %33
  %50 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %51 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %50, i32 0, i32 5
  %52 = load %struct.comm_point*, %struct.comm_point** %51, align 8
  %53 = bitcast %struct.comm_point* %52 to %struct.internal_event*
  %54 = call i32 @free(%struct.internal_event* %53)
  %55 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %56 = bitcast %struct.comm_point* %55 to %struct.internal_event*
  %57 = call i32 @free(%struct.internal_event* %56)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %152

58:                                               ; preds = %33
  %59 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %60 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %59, i32 0, i32 26
  store i32* null, i32** %60, align 8
  %61 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %62 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %61, i32 0, i32 25
  store i64 0, i64* %62, align 8
  %63 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %64 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %63, i32 0, i32 24
  store i64 0, i64* %64, align 8
  %65 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %66 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %65, i32 0, i32 23
  store i32* null, i32** %66, align 8
  %67 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %68 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %67, i32 0, i32 22
  store i64 0, i64* %68, align 8
  %69 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %70 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %69, i32 0, i32 21
  store i64 0, i64* %70, align 8
  %71 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %72 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %71, i32 0, i32 20
  store i32* null, i32** %72, align 8
  %73 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %74 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %73, i32 0, i32 19
  store i32* null, i32** %74, align 8
  %75 = load i32, i32* @comm_http, align 4
  %76 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %77 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %76, i32 0, i32 18
  store i32 %75, i32* %77, align 8
  %78 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %79 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %78, i32 0, i32 17
  store i64 0, i64* %79, align 8
  %80 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %81 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %80, i32 0, i32 16
  store i64 0, i64* %81, align 8
  %82 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %83 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %85 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  %86 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %87 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  %88 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %89 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %88, i32 0, i32 15
  store i64 0, i64* %89, align 8
  %90 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %91 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %90, i32 0, i32 14
  store i64 0, i64* %91, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %94 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %93, i32 0, i32 13
  store i32* %92, i32** %94, align 8
  %95 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %96 = bitcast %struct.comm_point* %95 to %struct.internal_event*
  %97 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %98 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %97, i32 0, i32 10
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store %struct.internal_event* %96, %struct.internal_event** %99, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %102 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %101, i32 0, i32 9
  store i32* %100, i32** %102, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %105 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %104, i32 0, i32 8
  store i8* %103, i8** %105, align 8
  %106 = load i16, i16* @UB_EV_PERSIST, align 2
  %107 = sext i16 %106 to i32
  %108 = load i16, i16* @UB_EV_WRITE, align 2
  %109 = sext i16 %108 to i32
  %110 = or i32 %107, %109
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %13, align 2
  %112 = load %struct.comm_base*, %struct.comm_base** %7, align 8
  %113 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %118 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i16, i16* %13, align 2
  %121 = load i32, i32* @comm_point_http_handle_callback, align 4
  %122 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %123 = bitcast %struct.comm_point* %122 to %struct.internal_event*
  %124 = call %struct.internal_event* @ub_event_new(i32 %116, i32 %119, i16 signext %120, i32 %121, %struct.internal_event* %123)
  %125 = bitcast %struct.internal_event* %124 to %struct.comm_point*
  %126 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %127 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %126, i32 0, i32 5
  %128 = load %struct.comm_point*, %struct.comm_point** %127, align 8
  %129 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %128, i32 0, i32 5
  store %struct.comm_point* %125, %struct.comm_point** %129, align 8
  %130 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %131 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %130, i32 0, i32 5
  %132 = load %struct.comm_point*, %struct.comm_point** %131, align 8
  %133 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %132, i32 0, i32 5
  %134 = load %struct.comm_point*, %struct.comm_point** %133, align 8
  %135 = icmp eq %struct.comm_point* %134, null
  br i1 %135, label %136, label %150

136:                                              ; preds = %58
  %137 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %138 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %139 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @sldns_buffer_free(i64 %140)
  %142 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %143 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %142, i32 0, i32 5
  %144 = load %struct.comm_point*, %struct.comm_point** %143, align 8
  %145 = bitcast %struct.comm_point* %144 to %struct.internal_event*
  %146 = call i32 @free(%struct.internal_event* %145)
  %147 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %148 = bitcast %struct.comm_point* %147 to %struct.internal_event*
  %149 = call i32 @free(%struct.internal_event* %148)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %152

150:                                              ; preds = %58
  %151 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  store %struct.comm_point* %151, %struct.comm_point** %6, align 8
  br label %152

152:                                              ; preds = %150, %136, %49, %29, %18
  %153 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  ret %struct.comm_point* %153
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
