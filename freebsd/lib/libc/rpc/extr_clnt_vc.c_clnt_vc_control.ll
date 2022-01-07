; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_vc.c_clnt_vc_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_vc.c_clnt_vc_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.ct_data = type { i64, %struct.TYPE_4__, %struct.netbuf, %struct.timeval, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.netbuf = type { i32, i32 }
%struct.timeval = type { i32 }

@SIG_SETMASK = common dso_local global i32 0, align 4
@clnt_fd_lock = common dso_local global i32 0, align 4
@vc_fd_locks = common dso_local global i32* null, align 8
@vc_cv = common dso_local global i32* null, align 8
@__isthreaded = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@BYTES_PER_XDR_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32, i8*)* @clnt_vc_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @clnt_vc_control(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ct_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %9, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ct_data*
  store %struct.ct_data* %21, %struct.ct_data** %8, align 8
  %22 = call i32 @sigfillset(i32* %11)
  %23 = load i32, i32* @SIG_SETMASK, align 4
  %24 = call i32 @thr_sigsetmask(i32 %23, i32* %11, i32* %10)
  %25 = call i32 @mutex_lock(i32* @clnt_fd_lock)
  br label %26

26:                                               ; preds = %34, %3
  %27 = load i32*, i32** @vc_fd_locks, align 8
  %28 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %29 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i32*, i32** @vc_cv, align 8
  %36 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %37 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = call i32 @cond_wait(i32* %39, i32* @clnt_fd_lock)
  br label %26

41:                                               ; preds = %26
  %42 = load i64, i64* @__isthreaded, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %46

45:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** @vc_fd_locks, align 8
  %49 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %50 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %47, i32* %52, align 4
  %53 = call i32 @mutex_unlock(i32* @clnt_fd_lock)
  %54 = load i32, i32* %6, align 4
  switch i32 %54, label %75 [
    i32 134, label %55
    i32 133, label %65
  ]

55:                                               ; preds = %46
  %56 = load i8*, i8** @TRUE, align 8
  %57 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %58 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %60 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @release_fd_lock(i64 %61, i32 %62)
  %64 = load i8*, i8** @TRUE, align 8
  store i8* %64, i8** %4, align 8
  br label %224

65:                                               ; preds = %46
  %66 = load i8*, i8** @FALSE, align 8
  %67 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %68 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %70 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @release_fd_lock(i64 %71, i32 %72)
  %74 = load i8*, i8** @TRUE, align 8
  store i8* %74, i8** %4, align 8
  br label %224

75:                                               ; preds = %46
  br label %76

76:                                               ; preds = %75
  %77 = load i8*, i8** %7, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %81 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @release_fd_lock(i64 %82, i32 %83)
  %85 = load i8*, i8** @FALSE, align 8
  store i8* %85, i8** %4, align 8
  br label %224

86:                                               ; preds = %76
  %87 = load i32, i32* %6, align 4
  switch i32 %87, label %210 [
    i32 130, label %88
    i32 137, label %110
    i32 139, label %117
    i32 141, label %129
    i32 138, label %136
    i32 131, label %143
    i32 135, label %150
    i32 128, label %156
    i32 136, label %162
    i32 129, label %174
    i32 140, label %186
    i32 132, label %198
  ]

88:                                               ; preds = %86
  %89 = load i8*, i8** %7, align 8
  %90 = bitcast i8* %89 to %struct.timeval*
  %91 = call i32 @time_not_ok(%struct.timeval* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %95 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @release_fd_lock(i64 %96, i32 %97)
  %99 = load i8*, i8** @FALSE, align 8
  store i8* %99, i8** %4, align 8
  br label %224

100:                                              ; preds = %88
  %101 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %102 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %101, i32 0, i32 3
  %103 = load i8*, i8** %9, align 8
  %104 = bitcast i8* %103 to %struct.timeval*
  %105 = bitcast %struct.timeval* %102 to i8*
  %106 = bitcast %struct.timeval* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 4 %106, i64 4, i1 false)
  %107 = load i8*, i8** @TRUE, align 8
  %108 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %109 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  br label %217

110:                                              ; preds = %86
  %111 = load i8*, i8** %9, align 8
  %112 = bitcast i8* %111 to %struct.timeval*
  %113 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %114 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %113, i32 0, i32 3
  %115 = bitcast %struct.timeval* %112 to i8*
  %116 = bitcast %struct.timeval* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 8 %116, i64 4, i1 false)
  br label %217

117:                                              ; preds = %86
  %118 = load i8*, i8** %7, align 8
  %119 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %120 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %124 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = call i32 @memcpy(i8* %118, i32 %122, i64 %127)
  br label %217

129:                                              ; preds = %86
  %130 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %131 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i8*, i8** %7, align 8
  %135 = bitcast i8* %134 to i32*
  store i32 %133, i32* %135, align 4
  br label %217

136:                                              ; preds = %86
  %137 = load i8*, i8** %7, align 8
  %138 = bitcast i8* %137 to %struct.netbuf*
  %139 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %140 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %139, i32 0, i32 2
  %141 = bitcast %struct.netbuf* %138 to i8*
  %142 = bitcast %struct.netbuf* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 8 %142, i64 8, i1 false)
  br label %217

143:                                              ; preds = %86
  %144 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %145 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @release_fd_lock(i64 %146, i32 %147)
  %149 = load i8*, i8** @FALSE, align 8
  store i8* %149, i8** %4, align 8
  br label %224

150:                                              ; preds = %86
  %151 = load i8*, i8** %7, align 8
  %152 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %153 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = call i32 @ntohlp(i8* %151, i32* %154)
  br label %217

156:                                              ; preds = %86
  %157 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %158 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 @htonlp(i32* %159, i8* %160, i32 1)
  br label %217

162:                                              ; preds = %86
  %163 = load i8*, i8** %7, align 8
  %164 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %165 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %169 = mul nsw i32 4, %168
  %170 = add nsw i32 %167, %169
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to i32*
  %173 = call i32 @ntohlp(i8* %163, i32* %172)
  br label %217

174:                                              ; preds = %86
  %175 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %176 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %180 = mul nsw i32 4, %179
  %181 = add nsw i32 %178, %180
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i32*
  %184 = load i8*, i8** %7, align 8
  %185 = call i32 @htonlp(i32* %183, i8* %184, i32 0)
  br label %217

186:                                              ; preds = %86
  %187 = load i8*, i8** %7, align 8
  %188 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %189 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %193 = mul nsw i32 3, %192
  %194 = add nsw i32 %191, %193
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i32*
  %197 = call i32 @ntohlp(i8* %187, i32* %196)
  br label %217

198:                                              ; preds = %86
  %199 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %200 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %204 = mul nsw i32 3, %203
  %205 = add nsw i32 %202, %204
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i32*
  %208 = load i8*, i8** %7, align 8
  %209 = call i32 @htonlp(i32* %207, i8* %208, i32 0)
  br label %217

210:                                              ; preds = %86
  %211 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %212 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @release_fd_lock(i64 %213, i32 %214)
  %216 = load i8*, i8** @FALSE, align 8
  store i8* %216, i8** %4, align 8
  br label %224

217:                                              ; preds = %198, %186, %174, %162, %156, %150, %136, %129, %117, %110, %100
  %218 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %219 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @release_fd_lock(i64 %220, i32 %221)
  %223 = load i8*, i8** @TRUE, align 8
  store i8* %223, i8** %4, align 8
  br label %224

224:                                              ; preds = %217, %210, %143, %93, %79, %65, %55
  %225 = load i8*, i8** %4, align 8
  ret i8* %225
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @thr_sigsetmask(i32, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cond_wait(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @release_fd_lock(i64, i32) #1

declare dso_local i32 @time_not_ok(%struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @ntohlp(i8*, i32*) #1

declare dso_local i32 @htonlp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
