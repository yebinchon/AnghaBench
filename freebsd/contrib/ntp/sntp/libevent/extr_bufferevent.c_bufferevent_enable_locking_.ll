; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent.c_bufferevent_enable_locking_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent.c_bufferevent_enable_locking_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_enable_locking_(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %8 = call %struct.TYPE_2__* @BEV_UPCAST(%struct.bufferevent* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %90

13:                                               ; preds = %2
  %14 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %15 = call %struct.bufferevent* @bufferevent_get_underlying(%struct.bufferevent* %14)
  store %struct.bufferevent* %15, %struct.bufferevent** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %13
  %19 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %20 = icmp ne %struct.bufferevent* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %23 = call %struct.TYPE_2__* @BEV_UPCAST(%struct.bufferevent* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %29 = call %struct.TYPE_2__* @BEV_UPCAST(%struct.bufferevent* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %34 = call %struct.TYPE_2__* @BEV_UPCAST(%struct.bufferevent* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %37 = call %struct.TYPE_2__* @BEV_UPCAST(%struct.bufferevent* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %66

39:                                               ; preds = %21, %18, %13
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %45 = call i32 @EVTHREAD_ALLOC_LOCK(i8* %43, i32 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %90

49:                                               ; preds = %42
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %52 = call %struct.TYPE_2__* @BEV_UPCAST(%struct.bufferevent* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %55 = call %struct.TYPE_2__* @BEV_UPCAST(%struct.bufferevent* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %65

57:                                               ; preds = %39
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %60 = call %struct.TYPE_2__* @BEV_UPCAST(%struct.bufferevent* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %63 = call %struct.TYPE_2__* @BEV_UPCAST(%struct.bufferevent* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %57, %49
  br label %66

66:                                               ; preds = %65, %27
  %67 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %68 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @evbuffer_enable_locking(i32 %69, i8* %70)
  %72 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %73 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @evbuffer_enable_locking(i32 %74, i8* %75)
  %77 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %78 = icmp ne %struct.bufferevent* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %66
  %80 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %81 = call %struct.TYPE_2__* @BEV_UPCAST(%struct.bufferevent* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @bufferevent_enable_locking_(%struct.bufferevent* %86, i8* %87)
  br label %89

89:                                               ; preds = %85, %79, %66
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %48, %12
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_2__* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent* @bufferevent_get_underlying(%struct.bufferevent*) #1

declare dso_local i32 @EVTHREAD_ALLOC_LOCK(i8*, i32) #1

declare dso_local i32 @evbuffer_enable_locking(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
