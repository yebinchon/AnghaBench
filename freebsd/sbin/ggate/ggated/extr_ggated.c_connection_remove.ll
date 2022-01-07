; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_connection_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_connection_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggd_connection = type { i32, i32, %struct.ggd_connection*, i32 }

@c_next = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Connection removed [%s %s].\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ggd_connection*)* @connection_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connection_remove(%struct.ggd_connection* %0) #0 {
  %2 = alloca %struct.ggd_connection*, align 8
  store %struct.ggd_connection* %0, %struct.ggd_connection** %2, align 8
  %3 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %4 = load i32, i32* @c_next, align 4
  %5 = call i32 @LIST_REMOVE(%struct.ggd_connection* %3, i32 %4)
  %6 = load i32, i32* @LOG_DEBUG, align 4
  %7 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %8 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ip2str(i32 %9)
  %11 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %12 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %11, i32 0, i32 2
  %13 = load %struct.ggd_connection*, %struct.ggd_connection** %12, align 8
  %14 = call i32 @g_gate_log(i32 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.ggd_connection* %13)
  %15 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %16 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %21 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @close(i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %26 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %31 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @close(i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %36 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %35, i32 0, i32 2
  %37 = load %struct.ggd_connection*, %struct.ggd_connection** %36, align 8
  %38 = call i32 @free(%struct.ggd_connection* %37)
  %39 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %40 = call i32 @free(%struct.ggd_connection* %39)
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.ggd_connection*, i32) #1

declare dso_local i32 @g_gate_log(i32, i8*, i32, %struct.ggd_connection*) #1

declare dso_local i32 @ip2str(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.ggd_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
