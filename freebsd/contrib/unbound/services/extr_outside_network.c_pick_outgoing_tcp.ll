; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_pick_outgoing_tcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_pick_outgoing_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waiting_tcp = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.port_if*, %struct.port_if* }
%struct.port_if = type { i32, i32 }
%struct.sockaddr_in6 = type { i64 }
%struct.sockaddr_in = type { i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"no TCP outgoing interfaces of family\00", align 1
@VERB_OPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"for addr\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"outgoing tcp: bind: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"tcp bound to src\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waiting_tcp*, i32)* @pick_outgoing_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pick_outgoing_tcp(%struct.waiting_tcp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.waiting_tcp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.port_if*, align 8
  %7 = alloca i32, align 4
  store %struct.waiting_tcp* %0, %struct.waiting_tcp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.port_if* null, %struct.port_if** %6, align 8
  %8 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %9 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @VERB_OPS, align 4
  %18 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %19 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %18, i32 0, i32 2
  %20 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %21 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @log_addr(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @close(i32 %24)
  store i32 0, i32* %3, align 4
  br label %92

26:                                               ; preds = %2
  %27 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %28 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load %struct.port_if*, %struct.port_if** %30, align 8
  %32 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %33 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @ub_random_max(i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.port_if, %struct.port_if* %31, i64 %38
  store %struct.port_if* %39, %struct.port_if** %6, align 8
  %40 = load %struct.port_if*, %struct.port_if** %6, align 8
  %41 = call i32 @log_assert(%struct.port_if* %40)
  %42 = load %struct.port_if*, %struct.port_if** %6, align 8
  %43 = getelementptr inbounds %struct.port_if, %struct.port_if* %42, i32 0, i32 1
  %44 = load %struct.port_if*, %struct.port_if** %6, align 8
  %45 = getelementptr inbounds %struct.port_if, %struct.port_if* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @addr_is_any(i32* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %92

50:                                               ; preds = %26
  %51 = load %struct.port_if*, %struct.port_if** %6, align 8
  %52 = getelementptr inbounds %struct.port_if, %struct.port_if* %51, i32 0, i32 1
  %53 = load %struct.port_if*, %struct.port_if** %6, align 8
  %54 = getelementptr inbounds %struct.port_if, %struct.port_if* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @addr_is_ip6(i32* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.port_if*, %struct.port_if** %6, align 8
  %60 = getelementptr inbounds %struct.port_if, %struct.port_if* %59, i32 0, i32 1
  %61 = bitcast i32* %60 to %struct.sockaddr_in6*
  %62 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %61, i32 0, i32 0
  store i64 0, i64* %62, align 4
  br label %68

63:                                               ; preds = %50
  %64 = load %struct.port_if*, %struct.port_if** %6, align 8
  %65 = getelementptr inbounds %struct.port_if, %struct.port_if* %64, i32 0, i32 1
  %66 = bitcast i32* %65 to %struct.sockaddr_in*
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %66, i32 0, i32 0
  store i64 0, i64* %67, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.port_if*, %struct.port_if** %6, align 8
  %71 = getelementptr inbounds %struct.port_if, %struct.port_if* %70, i32 0, i32 1
  %72 = bitcast i32* %71 to %struct.sockaddr*
  %73 = load %struct.port_if*, %struct.port_if** %6, align 8
  %74 = getelementptr inbounds %struct.port_if, %struct.port_if* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @bind(i32 %69, %struct.sockaddr* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @strerror(i32 %79)
  %81 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @close(i32 %82)
  store i32 0, i32* %3, align 4
  br label %92

84:                                               ; preds = %68
  %85 = load i32, i32* @VERB_ALGO, align 4
  %86 = load %struct.port_if*, %struct.port_if** %6, align 8
  %87 = getelementptr inbounds %struct.port_if, %struct.port_if* %86, i32 0, i32 1
  %88 = load %struct.port_if*, %struct.port_if** %6, align 8
  %89 = getelementptr inbounds %struct.port_if, %struct.port_if* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @log_addr(i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %87, i32 %90)
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %84, %78, %49, %15
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @log_addr(i32, i8*, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @ub_random_max(i32, i32) #1

declare dso_local i32 @log_assert(%struct.port_if*) #1

declare dso_local i64 @addr_is_any(i32*, i32) #1

declare dso_local i64 @addr_is_ip6(i32*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
