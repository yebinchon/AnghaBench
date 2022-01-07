; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_transfer_http_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_transfer_http_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32 }
%struct.comm_reply = type { i32* }
%struct.auth_xfer = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__*, i32, %struct.module_env* }
%struct.TYPE_6__ = type { i32 }
%struct.module_env = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"auth zone transfer http callback\00", align 1
@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@NETEVENT_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"http stopped, connection lost to %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"auth zone http queued up %d bytes\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"http stopped to %s, malloc failed\00", align 1
@AUTH_TRANSFER_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_xfer_transfer_http_callback(%struct.comm_point* %0, i8* %1, i32 %2, %struct.comm_reply* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comm_reply*, align 8
  %10 = alloca %struct.auth_xfer*, align 8
  %11 = alloca %struct.module_env*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.comm_reply* %3, %struct.comm_reply** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.auth_xfer*
  store %struct.auth_xfer* %13, %struct.auth_xfer** %10, align 8
  %14 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %15 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call i32 @log_assert(%struct.TYPE_7__* %16)
  %18 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %19 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %18, i32 0, i32 0
  %20 = call i32 @lock_basic_lock(i32* %19)
  %21 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %22 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load %struct.module_env*, %struct.module_env** %24, align 8
  store %struct.module_env* %25, %struct.module_env** %11, align 8
  %26 = load %struct.module_env*, %struct.module_env** %11, align 8
  %27 = getelementptr inbounds %struct.module_env, %struct.module_env* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %34 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %33, i32 0, i32 0
  %35 = call i32 @lock_basic_unlock(i32* %34)
  store i32 0, i32* %5, align 4
  br label %156

36:                                               ; preds = %4
  %37 = load i32, i32* @VERB_ALGO, align 4
  %38 = call i32 (i32, i8*, ...) @verbose(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %40 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @comm_timer_disable(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @NETEVENT_NOERROR, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @NETEVENT_DONE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %48
  %53 = load i32, i32* @VERB_ALGO, align 4
  %54 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %55 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @verbose(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %108, %52
  %63 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %64 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = call i32 @auth_chunks_delete(%struct.TYPE_7__* %65)
  %67 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %68 = icmp ne %struct.comm_reply* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %71 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %74 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @comm_point_delete(i32* %77)
  %79 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %80 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  %83 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %84 = call i32 @xfr_transfer_nextmaster(%struct.auth_xfer* %83)
  %85 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %86 = load %struct.module_env*, %struct.module_env** %11, align 8
  %87 = call i32 @xfr_transfer_nexttarget_or_end(%struct.auth_xfer* %85, %struct.module_env* %86)
  store i32 0, i32* %5, align 4
  br label %156

88:                                               ; preds = %48, %36
  %89 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %90 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @sldns_buffer_limit(i32 %91)
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %88
  %95 = load i32, i32* @VERB_ALGO, align 4
  %96 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %97 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @sldns_buffer_limit(i32 %98)
  %100 = trunc i64 %99 to i32
  %101 = call i32 (i32, i8*, ...) @verbose(i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %103 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %106 = call i32 @xfer_link_data(i32 %104, %struct.auth_xfer* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %94
  %109 = load i32, i32* @VERB_ALGO, align 4
  %110 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %111 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @verbose(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %62

118:                                              ; preds = %94
  br label %119

119:                                              ; preds = %118, %88
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @NETEVENT_DONE, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %143

123:                                              ; preds = %119
  %124 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %125 = icmp ne %struct.comm_reply* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %128 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %127, i32 0, i32 0
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %131 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %130, i32 0, i32 1
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @comm_point_delete(i32* %134)
  %136 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %137 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %136, i32 0, i32 1
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i32* null, i32** %139, align 8
  %140 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %141 = load %struct.module_env*, %struct.module_env** %11, align 8
  %142 = call i32 @process_list_end_transfer(%struct.auth_xfer* %140, %struct.module_env* %141)
  store i32 0, i32* %5, align 4
  br label %156

143:                                              ; preds = %119
  %144 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %145 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %144, i32 0, i32 0
  %146 = call i32 @lock_basic_unlock(i32* %145)
  %147 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %148 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  %149 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %150 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @sldns_buffer_clear(i32 %151)
  %153 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %154 = load i32, i32* @AUTH_TRANSFER_TIMEOUT, align 4
  %155 = call i32 @comm_point_start_listening(%struct.comm_point* %153, i32 -1, i32 %154)
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %143, %129, %72, %32
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @log_assert(%struct.TYPE_7__*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @comm_timer_disable(i32) #1

declare dso_local i32 @auth_chunks_delete(%struct.TYPE_7__*) #1

declare dso_local i32 @comm_point_delete(i32*) #1

declare dso_local i32 @xfr_transfer_nextmaster(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_transfer_nexttarget_or_end(%struct.auth_xfer*, %struct.module_env*) #1

declare dso_local i64 @sldns_buffer_limit(i32) #1

declare dso_local i32 @xfer_link_data(i32, %struct.auth_xfer*) #1

declare dso_local i32 @process_list_end_transfer(%struct.auth_xfer*, %struct.module_env*) #1

declare dso_local i32 @sldns_buffer_clear(i32) #1

declare dso_local i32 @comm_point_start_listening(%struct.comm_point*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
