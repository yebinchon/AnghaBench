; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthread_db/extr_libthr_db.c_pt_ta_event_getmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthread_db/extr_libthr_db.c_pt_ta_event_getmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }

@pt_ta_event_getmsg.handle = internal global %struct.TYPE_10__ zeroinitializer, align 8
@TD_ERR = common dso_local global i32 0, align 4
@TD_NOMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @pt_ta_event_getmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_ta_event_getmsg(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = call i32 (...) @TDBG_FUNC()
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @thr_pread_ptr(%struct.TYPE_11__* %11, i32 %14, i64* %6)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @TD_ERR, align 4
  store i32 %19, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @TD_NOMSG, align 4
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %20
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @thr_pwrite_ptr(%struct.TYPE_11__* %26, i32 %29, i32 0)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = call i32 @ps_pread(i32 %33, i64 %38, %struct.TYPE_12__* %39, i32 16)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @P2T(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %83

46:                                               ; preds = %25
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @TD_NOMSG, align 4
  store i32 %52, i32* %3, align 4
  br label %83

53:                                               ; preds = %46
  store i64 0, i64* %7, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = call i32 @ps_pwrite(i32 %56, i64 %61, i64* %7, i32 8)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %6, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = call i32 @thr_pread_long(%struct.TYPE_11__* %66, i64 %71, i32* %8)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %53
  %76 = load i32, i32* @TD_ERR, align 4
  store i32 %76, i32* %3, align 4
  br label %83

77:                                               ; preds = %53
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pt_ta_event_getmsg.handle, i32 0, i32 2), align 8
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pt_ta_event_getmsg.handle, i32 0, i32 1), align 8
  %80 = load i64, i64* %6, align 8
  store i64 %80, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pt_ta_event_getmsg.handle, i32 0, i32 0), align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i64 ptrtoint (%struct.TYPE_10__* @pt_ta_event_getmsg.handle to i64), i64* %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %75, %51, %43, %23, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @TDBG_FUNC(...) #1

declare dso_local i32 @thr_pread_ptr(%struct.TYPE_11__*, i32, i64*) #1

declare dso_local i32 @thr_pwrite_ptr(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ps_pread(i32, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @P2T(i32) #1

declare dso_local i32 @ps_pwrite(i32, i64, i64*, i32) #1

declare dso_local i32 @thr_pread_long(%struct.TYPE_11__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
