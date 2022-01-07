; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_udp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32*, %struct.internal_event*, i8*, i32*, i64, i32*, i64, i64, i64, i64, i64, i64, i32, i32*, i32*, i64, i64, i32*, i64, i64, i32* }
%struct.internal_event = type { i32*, %struct.comm_base* }
%struct.comm_base = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@comm_udp = common dso_local global i32 0, align 4
@UB_EV_READ = common dso_local global i16 0, align 2
@UB_EV_PERSIST = common dso_local global i16 0, align 2
@comm_point_udp_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not baseset udp event\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not add udp event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_point* @comm_point_create_udp(%struct.comm_base* %0, i32 %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca %struct.comm_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.comm_point*, align 8
  %13 = alloca i16, align 2
  store %struct.comm_base* %0, %struct.comm_base** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = call i64 @calloc(i32 1, i32 176)
  %15 = inttoptr i64 %14 to %struct.comm_point*
  store %struct.comm_point* %15, %struct.comm_point** %12, align 8
  %16 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %17 = icmp ne %struct.comm_point* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %130

19:                                               ; preds = %5
  %20 = call i64 @calloc(i32 1, i32 16)
  %21 = inttoptr i64 %20 to %struct.internal_event*
  %22 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %23 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %22, i32 0, i32 2
  store %struct.internal_event* %21, %struct.internal_event** %23, align 8
  %24 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %25 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %24, i32 0, i32 2
  %26 = load %struct.internal_event*, %struct.internal_event** %25, align 8
  %27 = icmp ne %struct.internal_event* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %30 = call i32 @free(%struct.comm_point* %29)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %130

31:                                               ; preds = %19
  %32 = load %struct.comm_base*, %struct.comm_base** %7, align 8
  %33 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %34 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %33, i32 0, i32 2
  %35 = load %struct.internal_event*, %struct.internal_event** %34, align 8
  %36 = getelementptr inbounds %struct.internal_event, %struct.internal_event* %35, i32 0, i32 1
  store %struct.comm_base* %32, %struct.comm_base** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %39 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %42 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %41, i32 0, i32 21
  store i32* %40, i32** %42, align 8
  %43 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %44 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %46 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %45, i32 0, i32 20
  store i64 0, i64* %46, align 8
  %47 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %48 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %47, i32 0, i32 19
  store i64 0, i64* %48, align 8
  %49 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %50 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %49, i32 0, i32 18
  store i32* null, i32** %50, align 8
  %51 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %52 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %51, i32 0, i32 17
  store i64 0, i64* %52, align 8
  %53 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %54 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %53, i32 0, i32 16
  store i64 0, i64* %54, align 8
  %55 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %56 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %55, i32 0, i32 15
  store i32* null, i32** %56, align 8
  %57 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %58 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %57, i32 0, i32 14
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* @comm_udp, align 4
  %60 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %61 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %60, i32 0, i32 13
  store i32 %59, i32* %61, align 8
  %62 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %63 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %62, i32 0, i32 12
  store i64 0, i64* %63, align 8
  %64 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %65 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %64, i32 0, i32 11
  store i64 0, i64* %65, align 8
  %66 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %67 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %66, i32 0, i32 10
  store i64 0, i64* %67, align 8
  %68 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %69 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %68, i32 0, i32 9
  store i64 0, i64* %69, align 8
  %70 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %71 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %74 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %73, i32 0, i32 4
  store i32* %72, i32** %74, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %77 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i16, i16* @UB_EV_READ, align 2
  %79 = sext i16 %78 to i32
  %80 = load i16, i16* @UB_EV_PERSIST, align 2
  %81 = sext i16 %80 to i32
  %82 = or i32 %79, %81
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %13, align 2
  %84 = load %struct.comm_base*, %struct.comm_base** %7, align 8
  %85 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %90 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i16, i16* %13, align 2
  %93 = load i32, i32* @comm_point_udp_callback, align 4
  %94 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %95 = call i32* @ub_event_new(i32 %88, i32 %91, i16 signext %92, i32 %93, %struct.comm_point* %94)
  %96 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %97 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %96, i32 0, i32 2
  %98 = load %struct.internal_event*, %struct.internal_event** %97, align 8
  %99 = getelementptr inbounds %struct.internal_event, %struct.internal_event* %98, i32 0, i32 0
  store i32* %95, i32** %99, align 8
  %100 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %101 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %100, i32 0, i32 2
  %102 = load %struct.internal_event*, %struct.internal_event** %101, align 8
  %103 = getelementptr inbounds %struct.internal_event, %struct.internal_event* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %31
  %107 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %109 = call i32 @comm_point_delete(%struct.comm_point* %108)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %130

110:                                              ; preds = %31
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %115 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %114, i32 0, i32 2
  %116 = load %struct.internal_event*, %struct.internal_event** %115, align 8
  %117 = getelementptr inbounds %struct.internal_event, %struct.internal_event* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %120 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @ub_event_add(i32* %118, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = call i32 @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %126 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %127 = call i32 @comm_point_delete(%struct.comm_point* %126)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %130

128:                                              ; preds = %113, %110
  %129 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  store %struct.comm_point* %129, %struct.comm_point** %6, align 8
  br label %130

130:                                              ; preds = %128, %124, %106, %28, %18
  %131 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  ret %struct.comm_point* %131
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.comm_point*) #1

declare dso_local i32* @ub_event_new(i32, i32, i16 signext, i32, %struct.comm_point*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @comm_point_delete(%struct.comm_point*) #1

declare dso_local i64 @ub_event_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
