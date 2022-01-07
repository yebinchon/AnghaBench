; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_KeWaitForSingleObject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_KeWaitForSingleObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, %struct.thread* }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.timeval = type { i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ntoskrnl_dispatchlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"KeWFS\00", align 1
@TRUE = common dso_local global i64 0, align 8
@INT32_MIN = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@DISP_TYPE_MUTANT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"mutant limit exceeded\00", align 1
@WAITTYPE_ANY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@STATUS_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KeWaitForSingleObject(i8* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.timeval, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_6__, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %19 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %19, %struct.thread** %13, align 8
  store i32 0, i32* %15, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %18, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %23 = icmp eq %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %25, i32* %6, align 4
  br label %159

26:                                               ; preds = %5
  %27 = call i32 @mtx_lock(i32* @ntoskrnl_dispatchlock)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %29 = call i32 @cv_init(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.thread*, %struct.thread** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store %struct.thread* %30, %struct.thread** %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %33 = load %struct.thread*, %struct.thread** %13, align 8
  %34 = call i64 @ntoskrnl_is_signalled(%struct.TYPE_8__* %32, %struct.thread* %33)
  %35 = load i64, i64* @TRUE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %26
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @INT32_MIN, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %45 = load %struct.thread*, %struct.thread** @curthread, align 8
  %46 = call i32 @ntoskrnl_satisfy_wait(%struct.TYPE_8__* %44, %struct.thread* %45)
  %47 = call i32 @mtx_unlock(i32* @ntoskrnl_dispatchlock)
  %48 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %48, i32* %6, align 4
  br label %159

49:                                               ; preds = %37
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DISP_TYPE_MUTANT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = call i32 @mtx_unlock(i32* @ntoskrnl_dispatchlock)
  %57 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %49
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %26
  %61 = bitcast %struct.TYPE_7__* %12 to i8*
  %62 = call i32 @bzero(i8* %61, i32 56)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 7
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %65, align 8
  %66 = load i32, i32* @WAITTYPE_ANY, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @FALSE, align 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = load %struct.thread*, %struct.thread** %13, align 8
  %73 = getelementptr inbounds %struct.thread, %struct.thread* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %79 = call i32 @InsertTailList(i32* %77, i32* %78)
  %80 = load i64*, i64** %11, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %82, label %135

82:                                               ; preds = %60
  %83 = load i64*, i64** %11, align 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load i64*, i64** %11, align 8
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 0, %88
  %90 = sdiv i64 %89, 10000000
  %91 = trunc i64 %90 to i32
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = load i64*, i64** %11, align 8
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 0, %94
  %96 = sdiv i64 %95, 10
  %97 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, 1000000
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %96, %100
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  br label %134

104:                                              ; preds = %82
  %105 = call i32 @ntoskrnl_time(i64* %16)
  %106 = load i64*, i64** %11, align 8
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %16, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 0, i32* %112, align 4
  br label %133

113:                                              ; preds = %104
  %114 = load i64*, i64** %11, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %16, align 8
  %117 = sub nsw i64 %115, %116
  %118 = sdiv i64 %117, 10000000
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load i64*, i64** %11, align 8
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %16, align 8
  %124 = sub nsw i64 %122, %123
  %125 = sdiv i64 %124, 10
  %126 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 1000000
  %129 = sext i32 %128 to i64
  %130 = sub nsw i64 %125, %129
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %113, %110
  br label %134

134:                                              ; preds = %133, %86
  br label %135

135:                                              ; preds = %134, %60
  %136 = load i64*, i64** %11, align 8
  %137 = icmp eq i64* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %140 = call i32 @cv_wait(i32* %139, i32* @ntoskrnl_dispatchlock)
  br label %145

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %143 = call i32 @tvtohz(%struct.timeval* %14)
  %144 = call i32 @cv_timedwait(i32* %142, i32* @ntoskrnl_dispatchlock, i32 %143)
  store i32 %144, i32* %15, align 4
  br label %145

145:                                              ; preds = %141, %138
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %147 = call i32 @RemoveEntryList(i32* %146)
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %149 = call i32 @cv_destroy(i32* %148)
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* @EWOULDBLOCK, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = call i32 @mtx_unlock(i32* @ntoskrnl_dispatchlock)
  %155 = load i32, i32* @STATUS_TIMEOUT, align 4
  store i32 %155, i32* %6, align 4
  br label %159

156:                                              ; preds = %145
  %157 = call i32 @mtx_unlock(i32* @ntoskrnl_dispatchlock)
  %158 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %156, %153, %43, %24
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i64 @ntoskrnl_is_signalled(%struct.TYPE_8__*, %struct.thread*) #1

declare dso_local i32 @ntoskrnl_satisfy_wait(%struct.TYPE_8__*, %struct.thread*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @ntoskrnl_time(i64*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @cv_timedwait(i32*, i32*, i32) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
