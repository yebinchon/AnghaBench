; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_basic.c_serf__init_basic_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_basic.c_serf__init_basic_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@APR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serf__init_basic_connection(i32* %0, i32 %1, %struct.TYPE_8__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 401
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = call %struct.TYPE_9__* @serf__get_authn_info_for_server(%struct.TYPE_8__* %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %10, align 8
  br label %22

19:                                               ; preds = %4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %10, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @apr_pcalloc(i32* %28, i32 4)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @APR_SUCCESS, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_9__* @serf__get_authn_info_for_server(%struct.TYPE_8__*) #1

declare dso_local i64 @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
