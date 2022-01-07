; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_tcp_handle_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_tcp_handle_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@comm_tcp = common dso_local global i64 0, align 8
@comm_local = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"read (in tcp s)\00", align 1
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"tcp: dropped larger than buffer\00", align 1
@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"tcp: dropped bogus too short.\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Reading tcp query of length %d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"read (in tcp r)\00", align 1
@ECONNRESET = common dso_local global i64 0, align 8
@UB_EV_READ = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i64 0, align 8
@WSAEINPROGRESS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.comm_point*, i32)* @comm_point_tcp_handle_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comm_point_tcp_handle_read(i32 %0, %struct.comm_point* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.comm_point* %1, %struct.comm_point** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %10 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @comm_tcp, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %16 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @comm_local, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i1 [ true, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @log_assert(i32 %22)
  %24 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %25 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %30 = call i32 @ssl_handle_it(%struct.comm_point* %29)
  store i32 %30, i32* %4, align 4
  br label %226

31:                                               ; preds = %20
  %32 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %33 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %226

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, -1
  %40 = zext i1 %39 to i32
  %41 = call i32 @log_assert(i32 %40)
  %42 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %43 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 4
  br i1 %46, label %47, label %155

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %50 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %53 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @sldns_buffer_at(i32 %51, i32 %54)
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %58 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = sub i64 4, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @recv(i32 %48, i8* %56, i32 %62, i32 0)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %47
  %67 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %68 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %73 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @tcp_req_info_handle_read_close(i64 %74)
  store i32 %75, i32* %4, align 4
  br label %226

76:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %226

77:                                               ; preds = %47
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load i64, i64* @errno, align 8
  %82 = load i64, i64* @EINTR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* @errno, align 8
  %86 = load i64, i64* @EAGAIN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %80
  store i32 1, i32* %4, align 4
  br label %226

89:                                               ; preds = %84
  %90 = load i64, i64* @errno, align 8
  %91 = call i32 @strerror(i64 %90)
  %92 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %93 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %96 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @log_err_addr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %91, i32* %94, i32 %98)
  store i32 0, i32* %4, align 4
  br label %226

100:                                              ; preds = %77
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %104 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %108 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = icmp ne i64 %110, 4
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  store i32 1, i32* %4, align 4
  br label %226

113:                                              ; preds = %101
  %114 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %115 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @sldns_buffer_read_u16_at(i32 %116, i32 0)
  %118 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %119 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @sldns_buffer_capacity(i32 %120)
  %122 = icmp sgt i64 %117, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load i32, i32* @VERB_QUERY, align 4
  %125 = call i32 (i32, i8*, ...) @verbose(i32 %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %226

126:                                              ; preds = %113
  %127 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %128 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %131 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @sldns_buffer_read_u16_at(i32 %132, i32 0)
  %134 = call i32 @sldns_buffer_set_limit(i32 %129, i64 %133)
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %126
  %138 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %139 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @sldns_buffer_limit(i32 %140)
  %142 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* @VERB_QUERY, align 4
  %146 = call i32 (i32, i8*, ...) @verbose(i32 %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %226

147:                                              ; preds = %137, %126
  %148 = load i32, i32* @VERB_ALGO, align 4
  %149 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %150 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @sldns_buffer_limit(i32 %151)
  %153 = trunc i64 %152 to i32
  %154 = call i32 (i32, i8*, ...) @verbose(i32 %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %147, %37
  %156 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %157 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @sldns_buffer_remaining(i32 %158)
  %160 = icmp sgt i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @log_assert(i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %165 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @sldns_buffer_current(i32 %166)
  %168 = inttoptr i64 %167 to i8*
  %169 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %170 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @sldns_buffer_remaining(i32 %171)
  %173 = call i32 @recv(i32 %163, i8* %168, i32 %172, i32 0)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %155
  %177 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %178 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %183 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @tcp_req_info_handle_read_close(i64 %184)
  store i32 %185, i32* %4, align 4
  br label %226

186:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %226

187:                                              ; preds = %155
  %188 = load i32, i32* %8, align 4
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %210

190:                                              ; preds = %187
  %191 = load i64, i64* @errno, align 8
  %192 = load i64, i64* @EINTR, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i64, i64* @errno, align 8
  %196 = load i64, i64* @EAGAIN, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194, %190
  store i32 1, i32* %4, align 4
  br label %226

199:                                              ; preds = %194
  %200 = load i64, i64* @errno, align 8
  %201 = call i32 @strerror(i64 %200)
  %202 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %203 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %206 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @log_err_addr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %201, i32* %204, i32 %208)
  store i32 0, i32* %4, align 4
  br label %226

210:                                              ; preds = %187
  br label %211

211:                                              ; preds = %210
  %212 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %213 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @sldns_buffer_skip(i32 %214, i32 %215)
  %217 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %218 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @sldns_buffer_remaining(i32 %219)
  %221 = icmp sle i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %211
  %223 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %224 = call i32 @tcp_callback_reader(%struct.comm_point* %223)
  br label %225

225:                                              ; preds = %222, %211
  store i32 1, i32* %4, align 4
  br label %226

226:                                              ; preds = %225, %199, %198, %186, %181, %144, %123, %112, %89, %88, %76, %71, %36, %28
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @ssl_handle_it(%struct.comm_point*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i64 @sldns_buffer_at(i32, i32) #1

declare dso_local i32 @tcp_req_info_handle_read_close(i64) #1

declare dso_local i32 @log_err_addr(i8*, i32, i32*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @sldns_buffer_read_u16_at(i32, i32) #1

declare dso_local i64 @sldns_buffer_capacity(i32) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @sldns_buffer_set_limit(i32, i64) #1

declare dso_local i64 @sldns_buffer_limit(i32) #1

declare dso_local i32 @sldns_buffer_remaining(i32) #1

declare dso_local i64 @sldns_buffer_current(i32) #1

declare dso_local i32 @sldns_buffer_skip(i32, i32) #1

declare dso_local i32 @tcp_callback_reader(%struct.comm_point*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
