; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32, i32, %struct.comm_point*, i32*, i8*, i32*, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i32*, i64, i64, i32*, i64, %struct.comm_base* }
%struct.comm_base = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.internal_event = type { i32, i32, i32, %struct.internal_event*, i32*, i8*, i32*, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i32*, i64, i64, i32*, i64, %struct.comm_base* }

@comm_local = common dso_local global i32 0, align 4
@UB_EV_PERSIST = common dso_local global i16 0, align 2
@UB_EV_READ = common dso_local global i16 0, align 2
@comm_point_local_handle_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not baseset localhdl event\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not add localhdl event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_point* @comm_point_create_local(%struct.comm_base* %0, i32 %1, i64 %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca %struct.comm_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.comm_point*, align 8
  %13 = alloca i16, align 2
  store %struct.comm_base* %0, %struct.comm_base** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = call i64 @calloc(i32 1, i32 168)
  %15 = inttoptr i64 %14 to %struct.comm_point*
  store %struct.comm_point* %15, %struct.comm_point** %12, align 8
  %16 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %17 = icmp ne %struct.comm_point* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %164

19:                                               ; preds = %5
  %20 = call i64 @calloc(i32 1, i32 168)
  %21 = inttoptr i64 %20 to %struct.internal_event*
  %22 = bitcast %struct.internal_event* %21 to %struct.comm_point*
  %23 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %24 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %23, i32 0, i32 3
  store %struct.comm_point* %22, %struct.comm_point** %24, align 8
  %25 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %26 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %25, i32 0, i32 3
  %27 = load %struct.comm_point*, %struct.comm_point** %26, align 8
  %28 = icmp ne %struct.comm_point* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %31 = bitcast %struct.comm_point* %30 to %struct.internal_event*
  %32 = call i32 @free(%struct.internal_event* %31)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %164

33:                                               ; preds = %19
  %34 = load %struct.comm_base*, %struct.comm_base** %7, align 8
  %35 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %36 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %35, i32 0, i32 3
  %37 = load %struct.comm_point*, %struct.comm_point** %36, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 21
  store %struct.comm_base* %34, %struct.comm_base** %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %41 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @sldns_buffer_new(i64 %42)
  %44 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %45 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %44, i32 0, i32 7
  store i64 %43, i64* %45, align 8
  %46 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %47 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %33
  %51 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %52 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %51, i32 0, i32 3
  %53 = load %struct.comm_point*, %struct.comm_point** %52, align 8
  %54 = bitcast %struct.comm_point* %53 to %struct.internal_event*
  %55 = call i32 @free(%struct.internal_event* %54)
  %56 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %57 = bitcast %struct.comm_point* %56 to %struct.internal_event*
  %58 = call i32 @free(%struct.internal_event* %57)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %164

59:                                               ; preds = %33
  %60 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %61 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %60, i32 0, i32 4
  store i32* null, i32** %61, align 8
  %62 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %63 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %65 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %64, i32 0, i32 20
  store i64 0, i64* %65, align 8
  %66 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %67 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %66, i32 0, i32 19
  store i32* null, i32** %67, align 8
  %68 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %69 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %68, i32 0, i32 18
  store i64 0, i64* %69, align 8
  %70 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %71 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %70, i32 0, i32 17
  store i64 0, i64* %71, align 8
  %72 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %73 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %72, i32 0, i32 16
  store i32* null, i32** %73, align 8
  %74 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %75 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %74, i32 0, i32 15
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* @comm_local, align 4
  %77 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %78 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %77, i32 0, i32 14
  store i32 %76, i32* %78, align 8
  %79 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %80 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %79, i32 0, i32 13
  store i64 0, i64* %80, align 8
  %81 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %82 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %84 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %83, i32 0, i32 12
  store i64 0, i64* %84, align 8
  %85 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %86 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %85, i32 0, i32 11
  store i64 0, i64* %86, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %89 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %88, i32 0, i32 6
  store i32* %87, i32** %89, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %92 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load i16, i16* @UB_EV_PERSIST, align 2
  %94 = sext i16 %93 to i32
  %95 = load i16, i16* @UB_EV_READ, align 2
  %96 = sext i16 %95 to i32
  %97 = or i32 %94, %96
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %13, align 2
  %99 = load %struct.comm_base*, %struct.comm_base** %7, align 8
  %100 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %105 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i16, i16* %13, align 2
  %108 = load i32, i32* @comm_point_local_handle_callback, align 4
  %109 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %110 = bitcast %struct.comm_point* %109 to %struct.internal_event*
  %111 = call %struct.internal_event* @ub_event_new(i32 %103, i32 %106, i16 signext %107, i32 %108, %struct.internal_event* %110)
  %112 = bitcast %struct.internal_event* %111 to %struct.comm_point*
  %113 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %114 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %113, i32 0, i32 3
  %115 = load %struct.comm_point*, %struct.comm_point** %114, align 8
  %116 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %115, i32 0, i32 3
  store %struct.comm_point* %112, %struct.comm_point** %116, align 8
  %117 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %118 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %117, i32 0, i32 3
  %119 = load %struct.comm_point*, %struct.comm_point** %118, align 8
  %120 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %119, i32 0, i32 3
  %121 = load %struct.comm_point*, %struct.comm_point** %120, align 8
  %122 = icmp eq %struct.comm_point* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %59
  %124 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %126 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %125, i32 0, i32 3
  %127 = load %struct.comm_point*, %struct.comm_point** %126, align 8
  %128 = bitcast %struct.comm_point* %127 to %struct.internal_event*
  %129 = call i32 @free(%struct.internal_event* %128)
  %130 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %131 = bitcast %struct.comm_point* %130 to %struct.internal_event*
  %132 = call i32 @free(%struct.internal_event* %131)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %164

133:                                              ; preds = %59
  %134 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %135 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %134, i32 0, i32 3
  %136 = load %struct.comm_point*, %struct.comm_point** %135, align 8
  %137 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %136, i32 0, i32 3
  %138 = load %struct.comm_point*, %struct.comm_point** %137, align 8
  %139 = bitcast %struct.comm_point* %138 to %struct.internal_event*
  %140 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %141 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @ub_event_add(%struct.internal_event* %139, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %133
  %146 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %147 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %148 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %147, i32 0, i32 3
  %149 = load %struct.comm_point*, %struct.comm_point** %148, align 8
  %150 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %149, i32 0, i32 3
  %151 = load %struct.comm_point*, %struct.comm_point** %150, align 8
  %152 = bitcast %struct.comm_point* %151 to %struct.internal_event*
  %153 = call i32 @ub_event_free(%struct.internal_event* %152)
  %154 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %155 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %154, i32 0, i32 3
  %156 = load %struct.comm_point*, %struct.comm_point** %155, align 8
  %157 = bitcast %struct.comm_point* %156 to %struct.internal_event*
  %158 = call i32 @free(%struct.internal_event* %157)
  %159 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %160 = bitcast %struct.comm_point* %159 to %struct.internal_event*
  %161 = call i32 @free(%struct.internal_event* %160)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %164

162:                                              ; preds = %133
  %163 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  store %struct.comm_point* %163, %struct.comm_point** %6, align 8
  br label %164

164:                                              ; preds = %162, %145, %123, %50, %29, %18
  %165 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  ret %struct.comm_point* %165
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.internal_event*) #1

declare dso_local i64 @sldns_buffer_new(i64) #1

declare dso_local %struct.internal_event* @ub_event_new(i32, i32, i16 signext, i32, %struct.internal_event*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @ub_event_add(%struct.internal_event*, i32*) #1

declare dso_local i32 @ub_event_free(%struct.internal_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
