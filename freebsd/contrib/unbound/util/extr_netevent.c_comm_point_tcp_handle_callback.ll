; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_tcp_handle_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_tcp_handle_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i64, i64, %struct.TYPE_6__*, i32, i32 (%struct.comm_point*, i32, i32, i32*)*, i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@comm_tcp = common dso_local global i64 0, align 8
@UB_EV_TIMEOUT = common dso_local global i16 0, align 2
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"tcp took too long, dropped\00", align 1
@NETEVENT_TIMEOUT = common dso_local global i32 0, align 4
@UB_EV_READ = common dso_local global i16 0, align 2
@NETEVENT_CLOSED = common dso_local global i32 0, align 4
@UB_EV_WRITE = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [29 x i8] c"Ignored event %d for tcphdl.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_point_tcp_handle_callback(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.comm_point*, align 8
  %8 = alloca i32, align 4
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
  %15 = load i64, i64* @comm_tcp, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @log_assert(i32 %17)
  %19 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %20 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %19, i32 0, i32 9
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ub_comm_base_now(i32 %23)
  %25 = load i16, i16* %5, align 2
  %26 = sext i16 %25 to i32
  %27 = load i16, i16* @UB_EV_TIMEOUT, align 2
  %28 = sext i16 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %3
  %32 = load i32, i32* @VERB_QUERY, align 4
  %33 = call i32 @verbose(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %35 = call i32 @reclaim_tcp_handler(%struct.comm_point* %34)
  %36 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %37 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %31
  %41 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %42 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %41, i32 0, i32 5
  %43 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %42, align 8
  %44 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)* %43)
  %45 = call i32 @fptr_ok(i32 %44)
  %46 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %47 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %46, i32 0, i32 5
  %48 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %47, align 8
  %49 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %50 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %51 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NETEVENT_TIMEOUT, align 4
  %54 = call i32 %48(%struct.comm_point* %49, i32 %52, i32 %53, i32* null)
  br label %55

55:                                               ; preds = %40, %31
  br label %180

56:                                               ; preds = %3
  %57 = load i16, i16* %5, align 2
  %58 = sext i16 %57 to i32
  %59 = load i16, i16* @UB_EV_READ, align 2
  %60 = sext i16 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %116

63:                                               ; preds = %56
  %64 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %65 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %71 = call i32 @comm_point_tcp_handle_read(i32 %69, %struct.comm_point* %70, i32 0)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %63
  %74 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %75 = call i32 @reclaim_tcp_handler(%struct.comm_point* %74)
  %76 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %77 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %73
  %81 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %82 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %81, i32 0, i32 5
  %83 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %82, align 8
  %84 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)* %83)
  %85 = call i32 @fptr_ok(i32 %84)
  %86 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %87 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %86, i32 0, i32 5
  %88 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %87, align 8
  %89 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %90 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %91 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @NETEVENT_CLOSED, align 4
  %94 = call i32 %88(%struct.comm_point* %89, i32 %92, i32 %93, i32* null)
  br label %95

95:                                               ; preds = %80, %73
  br label %96

96:                                               ; preds = %95, %63
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %101 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %100, i32 0, i32 3
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = icmp ne %struct.TYPE_6__* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %106 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %105, i32 0, i32 3
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %114 = call i32 @tcp_req_info_read_again(i32 %112, %struct.comm_point* %113)
  br label %115

115:                                              ; preds = %111, %104, %99, %96
  br label %180

116:                                              ; preds = %56
  %117 = load i16, i16* %5, align 2
  %118 = sext i16 %117 to i32
  %119 = load i16, i16* @UB_EV_WRITE, align 2
  %120 = sext i16 %119 to i32
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %176

123:                                              ; preds = %116
  %124 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %125 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %124, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = icmp ne %struct.TYPE_6__* %126, null
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %131 = call i32 @comm_point_tcp_handle_write(i32 %129, %struct.comm_point* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %156, label %133

133:                                              ; preds = %123
  %134 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %135 = call i32 @reclaim_tcp_handler(%struct.comm_point* %134)
  %136 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %137 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %155, label %140

140:                                              ; preds = %133
  %141 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %142 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %141, i32 0, i32 5
  %143 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %142, align 8
  %144 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)* %143)
  %145 = call i32 @fptr_ok(i32 %144)
  %146 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %147 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %146, i32 0, i32 5
  %148 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %147, align 8
  %149 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %150 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %151 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @NETEVENT_CLOSED, align 4
  %154 = call i32 %148(%struct.comm_point* %149, i32 %152, i32 %153, i32* null)
  br label %155

155:                                              ; preds = %140, %133
  br label %156

156:                                              ; preds = %155, %123
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %156
  %160 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %161 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %160, i32 0, i32 3
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = icmp ne %struct.TYPE_6__* %162, null
  br i1 %163, label %164, label %175

164:                                              ; preds = %159
  %165 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %166 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %165, i32 0, i32 3
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load i32, i32* %4, align 4
  %173 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %174 = call i32 @tcp_req_info_read_again(i32 %172, %struct.comm_point* %173)
  br label %175

175:                                              ; preds = %171, %164, %159, %156
  br label %180

176:                                              ; preds = %116
  %177 = load i16, i16* %5, align 2
  %178 = sext i16 %177 to i32
  %179 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %176, %175, %115, %55
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @ub_comm_base_now(i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @reclaim_tcp_handler(%struct.comm_point*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)*) #1

declare dso_local i32 @comm_point_tcp_handle_read(i32, %struct.comm_point*, i32) #1

declare dso_local i32 @tcp_req_info_read_again(i32, %struct.comm_point*) #1

declare dso_local i32 @comm_point_tcp_handle_write(i32, %struct.comm_point*) #1

declare dso_local i32 @log_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
