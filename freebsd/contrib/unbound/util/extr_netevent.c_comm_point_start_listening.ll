; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_start_listening.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_start_listening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i64, %struct.timeval*, %struct.TYPE_2__*, i64, i32 }
%struct.timeval = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"comm point start listening %d (%d msec)\00", align 1
@comm_tcp_accept = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"cpsl: malloc failed. No net read.\00", align 1
@UB_EV_TIMEOUT = common dso_local global i32 0, align 4
@comm_tcp = common dso_local global i64 0, align 8
@comm_http = common dso_local global i64 0, align 8
@UB_EV_READ = common dso_local global i32 0, align 4
@UB_EV_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"event_add failed. in cpsl.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_point_start_listening(%struct.comm_point* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comm_point*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comm_point* %0, %struct.comm_point** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @VERB_ALGO, align 4
  %8 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %9 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  br label %18

14:                                               ; preds = %3
  %15 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %16 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi i32 [ %13, %12 ], [ %17, %14 ]
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @verbose(i32 %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %23 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @comm_tcp_accept, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %29 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %165

33:                                               ; preds = %27, %18
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %77

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %36
  %40 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %41 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %40, i32 0, i32 2
  %42 = load %struct.timeval*, %struct.timeval** %41, align 8
  %43 = icmp ne %struct.timeval* %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = call i64 @malloc(i32 8)
  %46 = inttoptr i64 %45 to %struct.timeval*
  %47 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %48 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %47, i32 0, i32 2
  store %struct.timeval* %46, %struct.timeval** %48, align 8
  %49 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %50 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %49, i32 0, i32 2
  %51 = load %struct.timeval*, %struct.timeval** %50, align 8
  %52 = icmp ne %struct.timeval* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %165

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %39
  %57 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %58 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @UB_EV_TIMEOUT, align 4
  %63 = call i32 @ub_event_add_bits(i32 %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 %64, 1000
  %66 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %67 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %66, i32 0, i32 2
  %68 = load %struct.timeval*, %struct.timeval** %67, align 8
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %6, align 4
  %71 = srem i32 %70, 1000
  %72 = mul nsw i32 %71, 1000
  %73 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %74 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %73, i32 0, i32 2
  %75 = load %struct.timeval*, %struct.timeval** %74, align 8
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %56, %36, %33
  %78 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %79 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @comm_tcp, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %85 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @comm_http, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %83, %77
  %90 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %91 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @UB_EV_READ, align 4
  %96 = load i32, i32* @UB_EV_WRITE, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @ub_event_del_bits(i32 %94, i32 %97)
  %99 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %100 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %89
  %104 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %105 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %104, i32 0, i32 3
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @UB_EV_READ, align 4
  %110 = call i32 @ub_event_add_bits(i32 %108, i32 %109)
  br label %119

111:                                              ; preds = %89
  %112 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %113 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %112, i32 0, i32 3
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @UB_EV_WRITE, align 4
  %118 = call i32 @ub_event_add_bits(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %111, %103
  br label %120

120:                                              ; preds = %119, %83
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, -1
  br i1 %122, label %123, label %146

123:                                              ; preds = %120
  %124 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %125 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, -1
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %130 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @close(i32 %131)
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %136 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %138 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %137, i32 0, i32 3
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %143 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @ub_event_set_fd(i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %133, %120
  %147 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %148 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %147, i32 0, i32 3
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %159

155:                                              ; preds = %146
  %156 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %157 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %156, i32 0, i32 2
  %158 = load %struct.timeval*, %struct.timeval** %157, align 8
  br label %159

159:                                              ; preds = %155, %154
  %160 = phi %struct.timeval* [ null, %154 ], [ %158, %155 ]
  %161 = call i64 @ub_event_add(i32 %151, %struct.timeval* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %165

165:                                              ; preds = %32, %53, %163, %159
  ret void
}

declare dso_local i32 @verbose(i32, i8*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @ub_event_add_bits(i32, i32) #1

declare dso_local i32 @ub_event_del_bits(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ub_event_set_fd(i32, i32) #1

declare dso_local i64 @ub_event_add(i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
