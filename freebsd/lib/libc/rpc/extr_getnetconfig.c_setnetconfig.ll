; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetconfig.c_setnetconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetconfig.c_setnetconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.netconfig_vars = type { i32, i64, i32 }

@ni_lock = common dso_local global i32 0, align 4
@ni = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@nc_file_lock = common dso_local global i32 0, align 4
@nc_file = common dso_local global i32* null, align 8
@NETCONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@NC_VALID = common dso_local global i32 0, align 4
@NC_NONETCONFIG = common dso_local global i32 0, align 4
@nc_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setnetconfig() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.netconfig_vars*, align 8
  %3 = call i64 @malloc(i32 24)
  %4 = inttoptr i64 %3 to %struct.netconfig_vars*
  store %struct.netconfig_vars* %4, %struct.netconfig_vars** %2, align 8
  %5 = icmp eq %struct.netconfig_vars* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %40

7:                                                ; preds = %0
  %8 = call i32 @mutex_lock(i32* @ni_lock)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 0), align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 0), align 4
  %11 = call i32 @mutex_unlock(i32* @ni_lock)
  %12 = call i32 @mutex_lock(i32* @nc_file_lock)
  %13 = load i32*, i32** @nc_file, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = load i32, i32* @NETCONFIG, align 4
  %17 = call i32* @fopen(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** @nc_file, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %15, %7
  %20 = load i32, i32* @NC_VALID, align 4
  %21 = load %struct.netconfig_vars*, %struct.netconfig_vars** %2, align 8
  %22 = getelementptr inbounds %struct.netconfig_vars, %struct.netconfig_vars* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.netconfig_vars*, %struct.netconfig_vars** %2, align 8
  %24 = getelementptr inbounds %struct.netconfig_vars, %struct.netconfig_vars* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 1), align 4
  %26 = load %struct.netconfig_vars*, %struct.netconfig_vars** %2, align 8
  %27 = getelementptr inbounds %struct.netconfig_vars, %struct.netconfig_vars* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = call i32 @mutex_unlock(i32* @nc_file_lock)
  %29 = load %struct.netconfig_vars*, %struct.netconfig_vars** %2, align 8
  %30 = bitcast %struct.netconfig_vars* %29 to i8*
  store i8* %30, i8** %1, align 8
  br label %40

31:                                               ; preds = %15
  %32 = call i32 @mutex_unlock(i32* @nc_file_lock)
  %33 = call i32 @mutex_lock(i32* @ni_lock)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 0), align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 0), align 4
  %36 = call i32 @mutex_unlock(i32* @ni_lock)
  %37 = load i32, i32* @NC_NONETCONFIG, align 4
  store i32 %37, i32* @nc_error, align 4
  %38 = load %struct.netconfig_vars*, %struct.netconfig_vars** %2, align 8
  %39 = call i32 @free(%struct.netconfig_vars* %38)
  store i8* null, i8** %1, align 8
  br label %40

40:                                               ; preds = %31, %19, %6
  %41 = load i8*, i8** %1, align 8
  ret i8* %41
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @free(%struct.netconfig_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
