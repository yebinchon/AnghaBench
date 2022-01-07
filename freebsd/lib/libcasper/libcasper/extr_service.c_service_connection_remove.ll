; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_connection_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_connection_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service = type { i64, i32 }
%struct.service_connection = type { i64, i32, i32 }

@SERVICE_MAGIC = common dso_local global i64 0, align 8
@SERVICE_CONNECTION_MAGIC = common dso_local global i64 0, align 8
@sc_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @service_connection_remove(%struct.service* %0, %struct.service_connection* %1) #0 {
  %3 = alloca %struct.service*, align 8
  %4 = alloca %struct.service_connection*, align 8
  store %struct.service* %0, %struct.service** %3, align 8
  store %struct.service_connection* %1, %struct.service_connection** %4, align 8
  %5 = load %struct.service*, %struct.service** %3, align 8
  %6 = getelementptr inbounds %struct.service, %struct.service* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SERVICE_MAGIC, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %13 = getelementptr inbounds %struct.service_connection, %struct.service_connection* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SERVICE_CONNECTION_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.service*, %struct.service** %3, align 8
  %20 = getelementptr inbounds %struct.service, %struct.service* %19, i32 0, i32 1
  %21 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %22 = load i32, i32* @sc_next, align 4
  %23 = call i32 @TAILQ_REMOVE(i32* %20, %struct.service_connection* %21, i32 %22)
  %24 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %25 = getelementptr inbounds %struct.service_connection, %struct.service_connection* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %27 = getelementptr inbounds %struct.service_connection, %struct.service_connection* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nvlist_destroy(i32 %28)
  %30 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %31 = getelementptr inbounds %struct.service_connection, %struct.service_connection* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cap_close(i32 %32)
  %34 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %35 = call i32 @free(%struct.service_connection* %34)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.service_connection*, i32) #1

declare dso_local i32 @nvlist_destroy(i32) #1

declare dso_local i32 @cap_close(i32) #1

declare dso_local i32 @free(%struct.service_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
