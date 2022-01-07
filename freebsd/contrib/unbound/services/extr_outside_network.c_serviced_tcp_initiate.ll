; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_tcp_initiate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_tcp_initiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serviced_query = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"initiate TCP query %s\00", align 1
@serviced_query_TCP_EDNS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"EDNS\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TCP_AUTH_QUERY_TIMEOUT = common dso_local global i32 0, align 4
@serviced_tcp_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"serviced_tcp_initiate: failed to send tcp query\00", align 1
@NETEVENT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serviced_query*, i32*)* @serviced_tcp_initiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serviced_tcp_initiate(%struct.serviced_query* %0, i32* %1) #0 {
  %3 = alloca %struct.serviced_query*, align 8
  %4 = alloca i32*, align 8
  store %struct.serviced_query* %0, %struct.serviced_query** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @VERB_ALGO, align 4
  %6 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %7 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @serviced_query_TCP_EDNS, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %13 = call i32 (i32, i8*, ...) @verbose(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %17 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @serviced_query_TCP_EDNS, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @serviced_encode(%struct.serviced_query* %14, i32* %15, i32 %21)
  %23 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %24 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %30 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @TCP_AUTH_QUERY_TIMEOUT, align 4
  %34 = load i32, i32* @serviced_tcp_callback, align 4
  %35 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %36 = call i32 @pending_tcp_query(%struct.serviced_query* %31, i32* %32, i32 %33, i32 %34, %struct.serviced_query* %35)
  %37 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %38 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %40 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @VERB_ALGO, align 4
  %45 = call i32 (i32, i8*, ...) @verbose(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.serviced_query*, %struct.serviced_query** %3, align 8
  %47 = load i32, i32* @NETEVENT_CLOSED, align 4
  %48 = call i32 @serviced_callbacks(%struct.serviced_query* %46, i32 %47, i32* null, i32* null)
  br label %49

49:                                               ; preds = %43, %2
  ret void
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @serviced_encode(%struct.serviced_query*, i32*, i32) #1

declare dso_local i32 @pending_tcp_query(%struct.serviced_query*, i32*, i32, i32, %struct.serviced_query*) #1

declare dso_local i32 @serviced_callbacks(%struct.serviced_query*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
