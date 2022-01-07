; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent.c_bufferevent_getwatermark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent.c_bufferevent_getwatermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@EV_WRITE = common dso_local global i16 0, align 2
@EV_READ = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_getwatermark(%struct.bufferevent* %0, i16 signext %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %6, align 8
  store i16 %1, i16* %7, align 2
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i16, i16* %7, align 2
  %11 = sext i16 %10 to i32
  %12 = load i16, i16* @EV_WRITE, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %4
  %16 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %17 = call i32 @BEV_LOCK(%struct.bufferevent* %16)
  %18 = load i64*, i64** %8, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %22 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %8, align 8
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i64*, i64** %9, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %31 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %9, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %26
  %36 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %37 = call i32 @BEV_UNLOCK(%struct.bufferevent* %36)
  store i32 0, i32* %5, align 4
  br label %68

38:                                               ; preds = %4
  %39 = load i16, i16* %7, align 2
  %40 = sext i16 %39 to i32
  %41 = load i16, i16* @EV_READ, align 2
  %42 = sext i16 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  %45 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %46 = call i32 @BEV_LOCK(%struct.bufferevent* %45)
  %47 = load i64*, i64** %8, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %51 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %8, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i64*, i64** %9, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %60 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %9, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %55
  %65 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %66 = call i32 @BEV_UNLOCK(%struct.bufferevent* %65)
  store i32 0, i32* %5, align 4
  br label %68

67:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %64, %35
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
