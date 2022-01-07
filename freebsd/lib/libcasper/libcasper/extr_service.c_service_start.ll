; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service = type { i64, i32, i32 }
%struct.service_connection = type { i32 }

@SERVICE_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FD_SETSIZE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @service_start(%struct.service* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.service*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.service_connection*, align 8
  %8 = alloca %struct.service_connection*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.service* %0, %struct.service** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.service*, %struct.service** %4, align 8
  %13 = icmp ne %struct.service* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.service*, %struct.service** %4, align 8
  %17 = getelementptr inbounds %struct.service, %struct.service* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SERVICE_MAGIC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.service*, %struct.service** %4, align 8
  %24 = getelementptr inbounds %struct.service, %struct.service* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @setproctitle(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.service*, %struct.service** %4, align 8
  %30 = getelementptr inbounds %struct.service, %struct.service* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @service_clean(i32 %27, i32 %28, i32 %31)
  %33 = load %struct.service*, %struct.service** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32* @service_connection_add(%struct.service* %33, i32 %34, i32* null)
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = call i32 @_exit(i32 1) #3
  unreachable

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %110, %78, %39
  %41 = call i32 @FD_ZERO(i32* %9)
  store i32 -1, i32* %10, align 4
  %42 = load %struct.service*, %struct.service** %4, align 8
  %43 = call %struct.service_connection* @service_connection_first(%struct.service* %42)
  store %struct.service_connection* %43, %struct.service_connection** %7, align 8
  br label %44

44:                                               ; preds = %52, %40
  %45 = load %struct.service_connection*, %struct.service_connection** %7, align 8
  %46 = icmp ne %struct.service_connection* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.service_connection*, %struct.service_connection** %7, align 8
  %50 = call i32 @service_connection_get_sock(%struct.service_connection* %49)
  %51 = call i32 @fd_add(i32* %9, i32 %48, i32 %50)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %47
  %53 = load %struct.service_connection*, %struct.service_connection** %7, align 8
  %54 = call %struct.service_connection* @service_connection_next(%struct.service_connection* %53)
  store %struct.service_connection* %54, %struct.service_connection** %7, align 8
  br label %44

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i64, i64* @FD_SETSIZE, align 8
  %63 = trunc i64 %62 to i32
  %64 = icmp sle i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32 @select(i32 %68, i32* %9, i32* null, i32* null, i32* null)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %55
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @EINTR, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @_exit(i32 1) #3
  unreachable

78:                                               ; preds = %72
  br label %40

79:                                               ; preds = %55
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (...) @abort() #3
  unreachable

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.service*, %struct.service** %4, align 8
  %87 = call %struct.service_connection* @service_connection_first(%struct.service* %86)
  store %struct.service_connection* %87, %struct.service_connection** %7, align 8
  br label %88

88:                                               ; preds = %103, %85
  %89 = load %struct.service_connection*, %struct.service_connection** %7, align 8
  %90 = icmp ne %struct.service_connection* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = load %struct.service_connection*, %struct.service_connection** %7, align 8
  %93 = call %struct.service_connection* @service_connection_next(%struct.service_connection* %92)
  store %struct.service_connection* %93, %struct.service_connection** %8, align 8
  %94 = load %struct.service_connection*, %struct.service_connection** %7, align 8
  %95 = call i32 @service_connection_get_sock(%struct.service_connection* %94)
  %96 = call i64 @FD_ISSET(i32 %95, i32* %9)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load %struct.service*, %struct.service** %4, align 8
  %100 = load %struct.service_connection*, %struct.service_connection** %7, align 8
  %101 = call i32 @service_message(%struct.service* %99, %struct.service_connection* %100)
  br label %102

102:                                              ; preds = %98, %91
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  store %struct.service_connection* %104, %struct.service_connection** %7, align 8
  br label %88

105:                                              ; preds = %88
  %106 = load %struct.service*, %struct.service** %4, align 8
  %107 = call %struct.service_connection* @service_connection_first(%struct.service* %106)
  %108 = icmp eq %struct.service_connection* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %111

110:                                              ; preds = %105
  br label %40

111:                                              ; preds = %109
  %112 = call i32 @_exit(i32 0) #3
  unreachable
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @setproctitle(i8*, i32) #1

declare dso_local i32 @service_clean(i32, i32, i32) #1

declare dso_local i32* @service_connection_add(%struct.service*, i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local %struct.service_connection* @service_connection_first(%struct.service*) #1

declare dso_local i32 @fd_add(i32*, i32, i32) #1

declare dso_local i32 @service_connection_get_sock(%struct.service_connection*) #1

declare dso_local %struct.service_connection* @service_connection_next(%struct.service_connection*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @service_message(%struct.service*, %struct.service_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
