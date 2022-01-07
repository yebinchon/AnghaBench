; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_poll_rs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_poll_rs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pollfd = type { i32, i32, i32 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@rs_connected = common dso_local global i32 0, align 4
@rs_disconnected = common dso_local global i32 0, align 4
@rs_error = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i16 0, align 2
@POLLERR = common dso_local global i16 0, align 2
@SOCK_DGRAM = common dso_local global i64 0, align 8
@rs_listening = common dso_local global i32 0, align 4
@rs_opening = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@rs_connect_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, i32, i32, i32 (%struct.rsocket*)*)* @rs_poll_rs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_poll_rs(%struct.rsocket* %0, i32 %1, i32 %2, i32 (%struct.rsocket*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsocket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.rsocket*)*, align 8
  %10 = alloca %struct.pollfd, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 (%struct.rsocket*)* %3, i32 (%struct.rsocket*)** %9, align 8
  br label %13

13:                                               ; preds = %186, %4
  %14 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %15 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SOCK_STREAM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %104

19:                                               ; preds = %13
  %20 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %21 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @rs_connected, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %19
  %27 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %28 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @rs_disconnected, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %34 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @rs_error, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %104

39:                                               ; preds = %32, %26, %19
  %40 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32 (%struct.rsocket*)*, i32 (%struct.rsocket*)** %9, align 8
  %43 = call i32 @rs_process_cq(%struct.rsocket* %40, i32 %41, i32 (%struct.rsocket*)* %42)
  store i16 0, i16* %11, align 2
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @POLLIN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %50 = call i64 @rs_conn_have_rdata(%struct.rsocket* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @POLLIN, align 4
  %54 = load i16, i16* %11, align 2
  %55 = sext i16 %54 to i32
  %56 = or i32 %55, %53
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %11, align 2
  br label %58

58:                                               ; preds = %52, %48, %39
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @POLLOUT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %65 = call i64 @rs_can_send(%struct.rsocket* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @POLLOUT, align 4
  %69 = load i16, i16* %11, align 2
  %70 = sext i16 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %11, align 2
  br label %73

73:                                               ; preds = %67, %63, %58
  %74 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %75 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @rs_connected, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %73
  %81 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %82 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @rs_disconnected, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i16, i16* @POLLHUP, align 2
  %88 = sext i16 %87 to i32
  %89 = load i16, i16* %11, align 2
  %90 = sext i16 %89 to i32
  %91 = or i32 %90, %88
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %11, align 2
  br label %100

93:                                               ; preds = %80
  %94 = load i16, i16* @POLLERR, align 2
  %95 = sext i16 %94 to i32
  %96 = load i16, i16* %11, align 2
  %97 = sext i16 %96 to i32
  %98 = or i32 %97, %95
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %11, align 2
  br label %100

100:                                              ; preds = %93, %86
  br label %101

101:                                              ; preds = %100, %73
  %102 = load i16, i16* %11, align 2
  %103 = sext i16 %102 to i32
  store i32 %103, i32* %5, align 4
  br label %226

104:                                              ; preds = %32, %13
  %105 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %106 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SOCK_DGRAM, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %147

110:                                              ; preds = %104
  %111 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32 (%struct.rsocket*)*, i32 (%struct.rsocket*)** %9, align 8
  %114 = call i32 @ds_process_cqs(%struct.rsocket* %111, i32 %112, i32 (%struct.rsocket*)* %113)
  store i16 0, i16* %11, align 2
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @POLLIN, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %110
  %120 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %121 = call i64 @rs_have_rdata(%struct.rsocket* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i32, i32* @POLLIN, align 4
  %125 = load i16, i16* %11, align 2
  %126 = sext i16 %125 to i32
  %127 = or i32 %126, %124
  %128 = trunc i32 %127 to i16
  store i16 %128, i16* %11, align 2
  br label %129

129:                                              ; preds = %123, %119, %110
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @POLLOUT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %136 = call i64 @ds_can_send(%struct.rsocket* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i32, i32* @POLLOUT, align 4
  %140 = load i16, i16* %11, align 2
  %141 = sext i16 %140 to i32
  %142 = or i32 %141, %139
  %143 = trunc i32 %142 to i16
  store i16 %143, i16* %11, align 2
  br label %144

144:                                              ; preds = %138, %134, %129
  %145 = load i16, i16* %11, align 2
  %146 = sext i16 %145 to i32
  store i32 %146, i32* %5, align 4
  br label %226

147:                                              ; preds = %104
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %150 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @rs_listening, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %148
  %155 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %156 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %155, i32 0, i32 2
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 2
  store i32 %161, i32* %162, align 4
  %163 = load i32, i32* %7, align 4
  %164 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 0
  store i32 %163, i32* %164, align 4
  %165 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = call i32 @poll(%struct.pollfd* %10, i32 1, i32 0)
  %167 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %5, align 4
  br label %226

169:                                              ; preds = %148
  %170 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %171 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @rs_opening, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %169
  %177 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %178 = call i32 @rs_do_connect(%struct.rsocket* %177)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load i64, i64* @errno, align 8
  %183 = load i64, i64* @EINPROGRESS, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i64 0, i64* @errno, align 8
  br label %187

186:                                              ; preds = %181, %176
  br label %13

187:                                              ; preds = %185
  br label %188

188:                                              ; preds = %187, %169
  %189 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %190 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @rs_connect_error, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %225

194:                                              ; preds = %188
  store i16 0, i16* %11, align 2
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @POLLOUT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load i32, i32* @POLLOUT, align 4
  %201 = load i16, i16* %11, align 2
  %202 = sext i16 %201 to i32
  %203 = or i32 %202, %200
  %204 = trunc i32 %203 to i16
  store i16 %204, i16* %11, align 2
  br label %205

205:                                              ; preds = %199, %194
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @POLLIN, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i32, i32* @POLLIN, align 4
  %212 = load i16, i16* %11, align 2
  %213 = sext i16 %212 to i32
  %214 = or i32 %213, %211
  %215 = trunc i32 %214 to i16
  store i16 %215, i16* %11, align 2
  br label %216

216:                                              ; preds = %210, %205
  %217 = load i16, i16* @POLLERR, align 2
  %218 = sext i16 %217 to i32
  %219 = load i16, i16* %11, align 2
  %220 = sext i16 %219 to i32
  %221 = or i32 %220, %218
  %222 = trunc i32 %221 to i16
  store i16 %222, i16* %11, align 2
  %223 = load i16, i16* %11, align 2
  %224 = sext i16 %223 to i32
  store i32 %224, i32* %5, align 4
  br label %226

225:                                              ; preds = %188
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %225, %216, %154, %144, %101
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @rs_process_cq(%struct.rsocket*, i32, i32 (%struct.rsocket*)*) #1

declare dso_local i64 @rs_conn_have_rdata(%struct.rsocket*) #1

declare dso_local i64 @rs_can_send(%struct.rsocket*) #1

declare dso_local i32 @ds_process_cqs(%struct.rsocket*, i32, i32 (%struct.rsocket*)*) #1

declare dso_local i64 @rs_have_rdata(%struct.rsocket*) #1

declare dso_local i64 @ds_can_send(%struct.rsocket*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @rs_do_connect(%struct.rsocket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
