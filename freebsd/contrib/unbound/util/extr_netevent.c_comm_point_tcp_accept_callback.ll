; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_tcp_accept_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_tcp_accept_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i32, i32, i32, %struct.comm_point*, i64, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@comm_tcp_accept = common dso_local global i64 0, align 8
@UB_EV_READ = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [29 x i8] c"ignoring tcp accept event %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"accepted too many tcp, connections full\00", align 1
@UB_EV_PERSIST = common dso_local global i16 0, align 2
@UB_EV_TIMEOUT = common dso_local global i16 0, align 2
@comm_point_tcp_handle_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"could not ub_event_new, dropped tcp\00", align 1
@comm_ssl_shake_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_point_tcp_accept_callback(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.comm_point*, align 8
  %8 = alloca %struct.comm_point*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.comm_point*
  store %struct.comm_point* %11, %struct.comm_point** %7, align 8
  %12 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %13 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @comm_tcp_accept, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @log_assert(i32 %17)
  %19 = load i16, i16* %5, align 2
  %20 = sext i16 %19 to i32
  %21 = load i16, i16* @UB_EV_READ, align 2
  %22 = sext i16 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i16, i16* %5, align 2
  %27 = sext i16 %26 to i32
  %28 = call i32 @log_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %156

29:                                               ; preds = %3
  %30 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %31 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %30, i32 0, i32 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @ub_comm_base_now(%struct.TYPE_8__* %34)
  %36 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %37 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %36, i32 0, i32 4
  %38 = load %struct.comm_point*, %struct.comm_point** %37, align 8
  %39 = icmp ne %struct.comm_point* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = call i32 @log_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %156

42:                                               ; preds = %29
  %43 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %44 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %43, i32 0, i32 4
  %45 = load %struct.comm_point*, %struct.comm_point** %44, align 8
  store %struct.comm_point* %45, %struct.comm_point** %8, align 8
  %46 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %47 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %46, i32 0, i32 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ub_event_free(i32 %50)
  %52 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %53 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %52, i32 0, i32 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i16, i16* @UB_EV_PERSIST, align 2
  %62 = sext i16 %61 to i32
  %63 = load i16, i16* @UB_EV_READ, align 2
  %64 = sext i16 %63 to i32
  %65 = or i32 %62, %64
  %66 = load i16, i16* @UB_EV_TIMEOUT, align 2
  %67 = sext i16 %66 to i32
  %68 = or i32 %65, %67
  %69 = trunc i32 %68 to i16
  %70 = load i32, i32* @comm_point_tcp_handle_callback, align 4
  %71 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %72 = call i32 @ub_event_new(i32 %60, i32 -1, i16 signext %69, i32 %70, %struct.comm_point* %71)
  %73 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %74 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %73, i32 0, i32 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %78 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %77, i32 0, i32 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %42
  %84 = call i32 @log_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %156

85:                                               ; preds = %42
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, -1
  %88 = zext i1 %87 to i32
  %89 = call i32 @log_assert(i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %92 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %93 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %96 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = call i32 @comm_point_perform_accept(%struct.comm_point* %91, i32* %94, i32* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %85
  br label %156

102:                                              ; preds = %85
  %103 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %104 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %102
  %108 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %109 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i64 @incoming_ssl_fd(i64 %110, i32 %111)
  %113 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %114 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %113, i32 0, i32 5
  store i64 %112, i64* %114, align 8
  %115 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %116 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %107
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %122 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %124 = call i32 @comm_point_close(%struct.comm_point* %123)
  br label %156

125:                                              ; preds = %107
  %126 = load i32, i32* @comm_ssl_shake_read, align 4
  %127 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %128 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %102
  %130 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %131 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %135 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %134, i32 0, i32 4
  %136 = load %struct.comm_point*, %struct.comm_point** %135, align 8
  %137 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %138 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %137, i32 0, i32 4
  store %struct.comm_point* %136, %struct.comm_point** %138, align 8
  %139 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %140 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %139, i32 0, i32 4
  %141 = load %struct.comm_point*, %struct.comm_point** %140, align 8
  %142 = icmp ne %struct.comm_point* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %129
  %144 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %145 = call i32 @comm_point_stop_listening(%struct.comm_point* %144)
  br label %146

146:                                              ; preds = %143, %129
  %147 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %150 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %153 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @setup_tcp_handler(%struct.comm_point* %147, i32 %148, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %146, %119, %101, %83, %40, %25
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @ub_comm_base_now(%struct.TYPE_8__*) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @ub_event_free(i32) #1

declare dso_local i32 @ub_event_new(i32, i32, i16 signext, i32, %struct.comm_point*) #1

declare dso_local i32 @comm_point_perform_accept(%struct.comm_point*, i32*, i32*) #1

declare dso_local i64 @incoming_ssl_fd(i64, i32) #1

declare dso_local i32 @comm_point_close(%struct.comm_point*) #1

declare dso_local i32 @comm_point_stop_listening(%struct.comm_point*) #1

declare dso_local i32 @setup_tcp_handler(%struct.comm_point*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
