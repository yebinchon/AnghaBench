; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/async/extr_async.c_ASYNC_start_job.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/async/extr_async.c_ASYNC_start_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 (i8*)*, i32, i32*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }

@OPENSSL_INIT_ASYNC = common dso_local global i32 0, align 4
@ASYNC_ERR = common dso_local global i32 0, align 4
@ASYNC_JOB_STOPPING = common dso_local global i64 0, align 8
@ASYNC_FINISH = common dso_local global i32 0, align 4
@ASYNC_JOB_PAUSING = common dso_local global i64 0, align 8
@ASYNC_JOB_PAUSED = common dso_local global i64 0, align 8
@ASYNC_PAUSE = common dso_local global i32 0, align 4
@ASYNC_F_ASYNC_START_JOB = common dso_local global i32 0, align 4
@ASYNC_R_FAILED_TO_SWAP_CONTEXT = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ASYNC_NO_JOBS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASYNC_start_job(%struct.TYPE_9__** %0, i32* %1, i32* %2, i32 (i8*)* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32 (i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 (i8*)* %3, i32 (i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i32, i32* @OPENSSL_INIT_ASYNC, align 4
  %16 = call i32 @OPENSSL_init_crypto(i32 %15, i32* null)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @ASYNC_ERR, align 4
  store i32 %19, i32* %7, align 4
  br label %213

20:                                               ; preds = %6
  %21 = call %struct.TYPE_8__* (...) @async_get_ctx()
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %14, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %23 = icmp eq %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call %struct.TYPE_8__* (...) @async_ctx_new()
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %14, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @ASYNC_ERR, align 4
  store i32 %30, i32* %7, align 4
  br label %213

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %39, align 8
  br label %40

40:                                               ; preds = %35, %31
  br label %41

41:                                               ; preds = %203, %119, %40
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %132

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ASYNC_JOB_STOPPING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %46
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  store i32* null, i32** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = call i32 @async_release_job(%struct.TYPE_9__* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %70, align 8
  %71 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %71, align 8
  %72 = load i32, i32* @ASYNC_FINISH, align 4
  store i32 %72, i32* %7, align 4
  br label %213

73:                                               ; preds = %46
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ASYNC_JOB_PAUSING, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %73
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %85, align 8
  %86 = load i64, i64* @ASYNC_JOB_PAUSED, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i64 %86, i64* %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %92, align 8
  %93 = load i32, i32* @ASYNC_PAUSE, align 4
  store i32 %93, i32* %7, align 4
  br label %213

94:                                               ; preds = %73
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ASYNC_JOB_PAUSED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %94
  %103 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store %struct.TYPE_9__* %104, %struct.TYPE_9__** %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = call i32 @async_fibre_swapcontext(i32* %108, i32* %112, i32 1)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %102
  %116 = load i32, i32* @ASYNC_F_ASYNC_START_JOB, align 4
  %117 = load i32, i32* @ASYNC_R_FAILED_TO_SWAP_CONTEXT, align 4
  %118 = call i32 @ASYNCerr(i32 %116, i32 %117)
  br label %204

119:                                              ; preds = %102
  br label %41

120:                                              ; preds = %94
  %121 = load i32, i32* @ASYNC_F_ASYNC_START_JOB, align 4
  %122 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %123 = call i32 @ASYNCerr(i32 %121, i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = call i32 @async_release_job(%struct.TYPE_9__* %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %129, align 8
  %130 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %130, align 8
  %131 = load i32, i32* @ASYNC_ERR, align 4
  store i32 %131, i32* %7, align 4
  br label %213

132:                                              ; preds = %41
  %133 = call %struct.TYPE_9__* (...) @async_get_pool_job()
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store %struct.TYPE_9__* %133, %struct.TYPE_9__** %135, align 8
  %136 = icmp eq %struct.TYPE_9__* %133, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* @ASYNC_NO_JOBS, align 4
  store i32 %138, i32* %7, align 4
  br label %213

139:                                              ; preds = %132
  %140 = load i8*, i8** %12, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %175

142:                                              ; preds = %139
  %143 = load i64, i64* %13, align 8
  %144 = call i32* @OPENSSL_malloc(i64 %143)
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 5
  store i32* %144, i32** %148, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %142
  %156 = load i32, i32* @ASYNC_F_ASYNC_START_JOB, align 4
  %157 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %158 = call i32 @ASYNCerr(i32 %156, i32 %157)
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = call i32 @async_release_job(%struct.TYPE_9__* %161)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %164, align 8
  %165 = load i32, i32* @ASYNC_ERR, align 4
  store i32 %165, i32* %7, align 4
  br label %213

166:                                              ; preds = %142
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 5
  %171 = load i32*, i32** %170, align 8
  %172 = load i8*, i8** %12, align 8
  %173 = load i64, i64* %13, align 8
  %174 = call i32 @memcpy(i32* %171, i8* %172, i64 %173)
  br label %180

175:                                              ; preds = %139
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 5
  store i32* null, i32** %179, align 8
  br label %180

180:                                              ; preds = %175, %166
  %181 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  store i32 (i8*)* %181, i32 (i8*)** %185, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 4
  store i32* %186, i32** %190, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 3
  %197 = call i32 @async_fibre_swapcontext(i32* %192, i32* %196, i32 1)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %180
  %200 = load i32, i32* @ASYNC_F_ASYNC_START_JOB, align 4
  %201 = load i32, i32* @ASYNC_R_FAILED_TO_SWAP_CONTEXT, align 4
  %202 = call i32 @ASYNCerr(i32 %200, i32 %201)
  br label %204

203:                                              ; preds = %180
  br label %41

204:                                              ; preds = %199, %115
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = call i32 @async_release_job(%struct.TYPE_9__* %207)
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %210, align 8
  %211 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %211, align 8
  %212 = load i32, i32* @ASYNC_ERR, align 4
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %204, %155, %137, %120, %81, %54, %29, %18
  %214 = load i32, i32* %7, align 4
  ret i32 %214
}

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @async_get_ctx(...) #1

declare dso_local %struct.TYPE_8__* @async_ctx_new(...) #1

declare dso_local i32 @async_release_job(%struct.TYPE_9__*) #1

declare dso_local i32 @async_fibre_swapcontext(i32*, i32*, i32) #1

declare dso_local i32 @ASYNCerr(i32, i32) #1

declare dso_local %struct.TYPE_9__* @async_get_pool_job(...) #1

declare dso_local i32* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
