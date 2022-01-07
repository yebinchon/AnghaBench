; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_findserver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_findserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i64, %struct.server*, i32 }

@NTP_PORT = common dso_local global i64 0, align 8
@sys_servers = common dso_local global %struct.server* null, align 8
@complete_servers = common dso_local global i32 0, align 4
@sys_numservers = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.server* (i32*)* @findserver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.server* @findserver(i32* %0) #0 {
  %2 = alloca %struct.server*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.server*, align 8
  %5 = alloca %struct.server*, align 8
  %6 = alloca %struct.server*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.server* null, %struct.server** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @SRCPORT(i32* %7)
  %9 = load i64, i64* @NTP_PORT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.server* null, %struct.server** %2, align 8
  br label %86

12:                                               ; preds = %1
  %13 = load %struct.server*, %struct.server** @sys_servers, align 8
  store %struct.server* %13, %struct.server** %4, align 8
  br label %14

14:                                               ; preds = %41, %12
  %15 = load %struct.server*, %struct.server** %4, align 8
  %16 = icmp ne %struct.server* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.server*, %struct.server** %4, align 8
  %20 = getelementptr inbounds %struct.server, %struct.server* %19, i32 0, i32 2
  %21 = call i64 @SOCK_EQ(i32* %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.server*, %struct.server** %4, align 8
  store %struct.server* %24, %struct.server** %2, align 8
  br label %86

25:                                               ; preds = %17
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @AF(i32* %26)
  %28 = load %struct.server*, %struct.server** %4, align 8
  %29 = getelementptr inbounds %struct.server, %struct.server* %28, i32 0, i32 2
  %30 = call i64 @AF(i32* %29)
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.server*, %struct.server** %4, align 8
  %34 = getelementptr inbounds %struct.server, %struct.server* %33, i32 0, i32 2
  %35 = call i64 @IS_MCAST(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.server*, %struct.server** %4, align 8
  store %struct.server* %38, %struct.server** %5, align 8
  br label %39

39:                                               ; preds = %37, %32
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.server*, %struct.server** %4, align 8
  %43 = getelementptr inbounds %struct.server, %struct.server* %42, i32 0, i32 1
  %44 = load %struct.server*, %struct.server** %43, align 8
  store %struct.server* %44, %struct.server** %4, align 8
  br label %14

45:                                               ; preds = %14
  %46 = load %struct.server*, %struct.server** %5, align 8
  %47 = icmp ne %struct.server* %46, null
  br i1 %47, label %48, label %85

48:                                               ; preds = %45
  %49 = load %struct.server*, %struct.server** %5, align 8
  %50 = getelementptr inbounds %struct.server, %struct.server* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.server*, %struct.server** %5, align 8
  %55 = getelementptr inbounds %struct.server, %struct.server* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @complete_servers, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @complete_servers, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = call %struct.server* @emalloc_zero(i32 24)
  store %struct.server* %59, %struct.server** %4, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.server*, %struct.server** %4, align 8
  %63 = getelementptr inbounds %struct.server, %struct.server* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i64, i64* @sys_numservers, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* @sys_numservers, align 8
  %66 = load %struct.server*, %struct.server** %4, align 8
  %67 = getelementptr inbounds %struct.server, %struct.server* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.server*, %struct.server** @sys_servers, align 8
  store %struct.server* %68, %struct.server** %6, align 8
  br label %69

69:                                               ; preds = %75, %58
  %70 = load %struct.server*, %struct.server** %6, align 8
  %71 = getelementptr inbounds %struct.server, %struct.server* %70, i32 0, i32 1
  %72 = load %struct.server*, %struct.server** %71, align 8
  %73 = icmp ne %struct.server* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.server*, %struct.server** %6, align 8
  %77 = getelementptr inbounds %struct.server, %struct.server* %76, i32 0, i32 1
  %78 = load %struct.server*, %struct.server** %77, align 8
  store %struct.server* %78, %struct.server** %6, align 8
  br label %69

79:                                               ; preds = %69
  %80 = load %struct.server*, %struct.server** %4, align 8
  %81 = load %struct.server*, %struct.server** %6, align 8
  %82 = getelementptr inbounds %struct.server, %struct.server* %81, i32 0, i32 1
  store %struct.server* %80, %struct.server** %82, align 8
  %83 = load %struct.server*, %struct.server** %4, align 8
  %84 = call i32 @transmit(%struct.server* %83)
  br label %85

85:                                               ; preds = %79, %45
  store %struct.server* null, %struct.server** %2, align 8
  br label %86

86:                                               ; preds = %85, %23, %11
  %87 = load %struct.server*, %struct.server** %2, align 8
  ret %struct.server* %87
}

declare dso_local i64 @SRCPORT(i32*) #1

declare dso_local i64 @SOCK_EQ(i32*, i32*) #1

declare dso_local i64 @AF(i32*) #1

declare dso_local i64 @IS_MCAST(i32*) #1

declare dso_local %struct.server* @emalloc_zero(i32) #1

declare dso_local i32 @transmit(%struct.server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
