; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32, %struct.comm_point*, i32*, i8*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i32, i32*, i32*, i64, i64, i32*, i64, i64, %struct.comm_base* }
%struct.comm_base = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.internal_event = type { i32, i32, %struct.internal_event*, i32*, i8*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i32, i32*, i32*, i64, i64, i32*, i64, i64, %struct.comm_base* }

@comm_raw = common dso_local global i32 0, align 4
@UB_EV_PERSIST = common dso_local global i16 0, align 2
@UB_EV_WRITE = common dso_local global i16 0, align 2
@UB_EV_READ = common dso_local global i16 0, align 2
@comm_point_raw_handle_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not baseset rawhdl event\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"could not add rawhdl event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_point* @comm_point_create_raw(%struct.comm_base* %0, i32 %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca %struct.comm_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.comm_point*, align 8
  %13 = alloca i16, align 2
  store %struct.comm_base* %0, %struct.comm_base** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
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
  br label %159

19:                                               ; preds = %5
  %20 = call i64 @calloc(i32 1, i32 168)
  %21 = inttoptr i64 %20 to %struct.internal_event*
  %22 = bitcast %struct.internal_event* %21 to %struct.comm_point*
  %23 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %24 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %23, i32 0, i32 2
  store %struct.comm_point* %22, %struct.comm_point** %24, align 8
  %25 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %26 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %25, i32 0, i32 2
  %27 = load %struct.comm_point*, %struct.comm_point** %26, align 8
  %28 = icmp ne %struct.comm_point* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %31 = bitcast %struct.comm_point* %30 to %struct.internal_event*
  %32 = call i32 @free(%struct.internal_event* %31)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %159

33:                                               ; preds = %19
  %34 = load %struct.comm_base*, %struct.comm_base** %7, align 8
  %35 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %36 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %35, i32 0, i32 2
  %37 = load %struct.comm_point*, %struct.comm_point** %36, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 21
  store %struct.comm_base* %34, %struct.comm_base** %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %41 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %43 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %42, i32 0, i32 6
  store i32* null, i32** %43, align 8
  %44 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %45 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  %46 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %47 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %46, i32 0, i32 20
  store i64 0, i64* %47, align 8
  %48 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %49 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %48, i32 0, i32 19
  store i64 0, i64* %49, align 8
  %50 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %51 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %50, i32 0, i32 18
  store i32* null, i32** %51, align 8
  %52 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %53 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %52, i32 0, i32 17
  store i64 0, i64* %53, align 8
  %54 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %55 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %54, i32 0, i32 16
  store i64 0, i64* %55, align 8
  %56 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %57 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %56, i32 0, i32 15
  store i32* null, i32** %57, align 8
  %58 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %59 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %58, i32 0, i32 14
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* @comm_raw, align 4
  %61 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %62 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %61, i32 0, i32 13
  store i32 %60, i32* %62, align 8
  %63 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %64 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %63, i32 0, i32 12
  store i64 0, i64* %64, align 8
  %65 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %66 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %68 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %67, i32 0, i32 11
  store i64 0, i64* %68, align 8
  %69 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %70 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %69, i32 0, i32 10
  store i64 0, i64* %70, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %73 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %72, i32 0, i32 5
  store i32* %71, i32** %73, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %76 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %33
  %80 = load i16, i16* @UB_EV_PERSIST, align 2
  %81 = sext i16 %80 to i32
  %82 = load i16, i16* @UB_EV_WRITE, align 2
  %83 = sext i16 %82 to i32
  %84 = or i32 %81, %83
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %13, align 2
  br label %93

86:                                               ; preds = %33
  %87 = load i16, i16* @UB_EV_PERSIST, align 2
  %88 = sext i16 %87 to i32
  %89 = load i16, i16* @UB_EV_READ, align 2
  %90 = sext i16 %89 to i32
  %91 = or i32 %88, %90
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %13, align 2
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.comm_base*, %struct.comm_base** %7, align 8
  %95 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %100 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i16, i16* %13, align 2
  %103 = load i32, i32* @comm_point_raw_handle_callback, align 4
  %104 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %105 = bitcast %struct.comm_point* %104 to %struct.internal_event*
  %106 = call %struct.internal_event* @ub_event_new(i32 %98, i32 %101, i16 signext %102, i32 %103, %struct.internal_event* %105)
  %107 = bitcast %struct.internal_event* %106 to %struct.comm_point*
  %108 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %109 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %108, i32 0, i32 2
  %110 = load %struct.comm_point*, %struct.comm_point** %109, align 8
  %111 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %110, i32 0, i32 2
  store %struct.comm_point* %107, %struct.comm_point** %111, align 8
  %112 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %113 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %112, i32 0, i32 2
  %114 = load %struct.comm_point*, %struct.comm_point** %113, align 8
  %115 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %114, i32 0, i32 2
  %116 = load %struct.comm_point*, %struct.comm_point** %115, align 8
  %117 = icmp eq %struct.comm_point* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %93
  %119 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %120 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %121 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %120, i32 0, i32 2
  %122 = load %struct.comm_point*, %struct.comm_point** %121, align 8
  %123 = bitcast %struct.comm_point* %122 to %struct.internal_event*
  %124 = call i32 @free(%struct.internal_event* %123)
  %125 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %126 = bitcast %struct.comm_point* %125 to %struct.internal_event*
  %127 = call i32 @free(%struct.internal_event* %126)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %159

128:                                              ; preds = %93
  %129 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %130 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %129, i32 0, i32 2
  %131 = load %struct.comm_point*, %struct.comm_point** %130, align 8
  %132 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %131, i32 0, i32 2
  %133 = load %struct.comm_point*, %struct.comm_point** %132, align 8
  %134 = bitcast %struct.comm_point* %133 to %struct.internal_event*
  %135 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %136 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = call i64 @ub_event_add(%struct.internal_event* %134, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %128
  %141 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %142 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %143 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %142, i32 0, i32 2
  %144 = load %struct.comm_point*, %struct.comm_point** %143, align 8
  %145 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %144, i32 0, i32 2
  %146 = load %struct.comm_point*, %struct.comm_point** %145, align 8
  %147 = bitcast %struct.comm_point* %146 to %struct.internal_event*
  %148 = call i32 @ub_event_free(%struct.internal_event* %147)
  %149 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %150 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %149, i32 0, i32 2
  %151 = load %struct.comm_point*, %struct.comm_point** %150, align 8
  %152 = bitcast %struct.comm_point* %151 to %struct.internal_event*
  %153 = call i32 @free(%struct.internal_event* %152)
  %154 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %155 = bitcast %struct.comm_point* %154 to %struct.internal_event*
  %156 = call i32 @free(%struct.internal_event* %155)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %159

157:                                              ; preds = %128
  %158 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  store %struct.comm_point* %158, %struct.comm_point** %6, align 8
  br label %159

159:                                              ; preds = %157, %140, %118, %29, %18
  %160 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  ret %struct.comm_point* %160
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.internal_event*) #1

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
