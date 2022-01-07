; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_connection_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_connection_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_connection = type { i32, i32*, i32* }
%struct.service = type { i64, i32 }

@SERVICE_MAGIC = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@SERVICE_CONNECTION_MAGIC = common dso_local global i32 0, align 4
@sc_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.service_connection* @service_connection_add(%struct.service* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.service_connection*, align 8
  %5 = alloca %struct.service*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.service_connection*, align 8
  %9 = alloca i32, align 4
  store %struct.service* %0, %struct.service** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.service*, %struct.service** %5, align 8
  %11 = getelementptr inbounds %struct.service, %struct.service* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SERVICE_MAGIC, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call %struct.service_connection* @malloc(i32 24)
  store %struct.service_connection* %17, %struct.service_connection** %8, align 8
  %18 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  %19 = icmp eq %struct.service_connection* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.service_connection* null, %struct.service_connection** %4, align 8
  br label %72

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.service*, %struct.service** %5, align 8
  %24 = call i32 @service_get_channel_flags(%struct.service* %23)
  %25 = call i32* @cap_wrap(i32 %22, i32 %24)
  %26 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  %27 = getelementptr inbounds %struct.service_connection, %struct.service_connection* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  %29 = getelementptr inbounds %struct.service_connection, %struct.service_connection* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  %35 = call i32 @free(%struct.service_connection* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* @errno, align 4
  store %struct.service_connection* null, %struct.service_connection** %4, align 8
  br label %72

37:                                               ; preds = %21
  %38 = load i32*, i32** %7, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  %42 = getelementptr inbounds %struct.service_connection, %struct.service_connection* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  br label %62

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  %45 = call i32* @nvlist_clone(i32* %44)
  %46 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  %47 = getelementptr inbounds %struct.service_connection, %struct.service_connection* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  %49 = getelementptr inbounds %struct.service_connection, %struct.service_connection* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %9, align 4
  %54 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  %55 = getelementptr inbounds %struct.service_connection, %struct.service_connection* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @cap_unwrap(i32* %56, i32* null)
  %58 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  %59 = call i32 @free(%struct.service_connection* %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* @errno, align 4
  store %struct.service_connection* null, %struct.service_connection** %4, align 8
  br label %72

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i32, i32* @SERVICE_CONNECTION_MAGIC, align 4
  %64 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  %65 = getelementptr inbounds %struct.service_connection, %struct.service_connection* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.service*, %struct.service** %5, align 8
  %67 = getelementptr inbounds %struct.service, %struct.service* %66, i32 0, i32 1
  %68 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  %69 = load i32, i32* @sc_next, align 4
  %70 = call i32 @TAILQ_INSERT_TAIL(i32* %67, %struct.service_connection* %68, i32 %69)
  %71 = load %struct.service_connection*, %struct.service_connection** %8, align 8
  store %struct.service_connection* %71, %struct.service_connection** %4, align 8
  br label %72

72:                                               ; preds = %62, %52, %32, %20
  %73 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  ret %struct.service_connection* %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.service_connection* @malloc(i32) #1

declare dso_local i32* @cap_wrap(i32, i32) #1

declare dso_local i32 @service_get_channel_flags(%struct.service*) #1

declare dso_local i32 @free(%struct.service_connection*) #1

declare dso_local i32* @nvlist_clone(i32*) #1

declare dso_local i32 @cap_unwrap(i32*, i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.service_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
