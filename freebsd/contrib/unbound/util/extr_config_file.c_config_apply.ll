; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64 }

@MAX_TTL = common dso_local global i8* null, align 8
@MIN_TTL = common dso_local global i8* null, align 8
@SERVE_EXPIRED_TTL = common dso_local global i8* null, align 8
@MAX_NEG_TTL = common dso_local global i8* null, align 8
@RTT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@EDNS_ADVERTISED_SIZE = common dso_local global i64 0, align 8
@MINIMAL_RESPONSES = common dso_local global i32 0, align 4
@RRSET_ROUNDROBIN = common dso_local global i32 0, align 4
@LOG_TAG_QUERYREPLY = common dso_local global i32 0, align 4
@UNKNOWN_SERVER_NICENESS = common dso_local global i32 0, align 4
@autr_permit_small_holddown = common dso_local global i32 0, align 4
@stream_wait_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_apply(%struct.config_file* %0) #0 {
  %2 = alloca %struct.config_file*, align 8
  store %struct.config_file* %0, %struct.config_file** %2, align 8
  %3 = load %struct.config_file*, %struct.config_file** %2, align 8
  %4 = getelementptr inbounds %struct.config_file, %struct.config_file* %3, i32 0, i32 12
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** @MAX_TTL, align 8
  %7 = load %struct.config_file*, %struct.config_file** %2, align 8
  %8 = getelementptr inbounds %struct.config_file, %struct.config_file* %7, i32 0, i32 11
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @MIN_TTL, align 8
  %11 = load %struct.config_file*, %struct.config_file** %2, align 8
  %12 = getelementptr inbounds %struct.config_file, %struct.config_file* %11, i32 0, i32 10
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @SERVE_EXPIRED_TTL, align 8
  %15 = load %struct.config_file*, %struct.config_file** %2, align 8
  %16 = getelementptr inbounds %struct.config_file, %struct.config_file* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** @MAX_NEG_TTL, align 8
  %19 = load %struct.config_file*, %struct.config_file** %2, align 8
  %20 = getelementptr inbounds %struct.config_file, %struct.config_file* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* @RTT_MIN_TIMEOUT, align 4
  %22 = load %struct.config_file*, %struct.config_file** %2, align 8
  %23 = getelementptr inbounds %struct.config_file, %struct.config_file* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* @EDNS_ADVERTISED_SIZE, align 8
  %25 = load %struct.config_file*, %struct.config_file** %2, align 8
  %26 = getelementptr inbounds %struct.config_file, %struct.config_file* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* @MINIMAL_RESPONSES, align 4
  %28 = load %struct.config_file*, %struct.config_file** %2, align 8
  %29 = getelementptr inbounds %struct.config_file, %struct.config_file* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @RRSET_ROUNDROBIN, align 4
  %31 = load %struct.config_file*, %struct.config_file** %2, align 8
  %32 = getelementptr inbounds %struct.config_file, %struct.config_file* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* @LOG_TAG_QUERYREPLY, align 4
  %34 = load %struct.config_file*, %struct.config_file** %2, align 8
  %35 = getelementptr inbounds %struct.config_file, %struct.config_file* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @UNKNOWN_SERVER_NICENESS, align 4
  %37 = load %struct.config_file*, %struct.config_file** %2, align 8
  %38 = getelementptr inbounds %struct.config_file, %struct.config_file* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @log_set_time_asc(i32 %39)
  %41 = load %struct.config_file*, %struct.config_file** %2, align 8
  %42 = getelementptr inbounds %struct.config_file, %struct.config_file* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* @autr_permit_small_holddown, align 4
  %44 = load %struct.config_file*, %struct.config_file** %2, align 8
  %45 = getelementptr inbounds %struct.config_file, %struct.config_file* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* @stream_wait_max, align 4
  ret void
}

declare dso_local i32 @log_set_time_asc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
