; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_tables.c_initialize_universes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_tables.c_initialize_universes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__*, %struct.TYPE_8__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"dhcp\00", align 1
@dhcp_universe = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't allocate dhcp option hash table.\00", align 1
@dhcp_options = common dso_local global %struct.TYPE_8__* null, align 8
@DEFAULT_HASH_SIZE = common dso_local global i32 0, align 4
@universe_hash = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_universes() #0 {
  %1 = alloca i32, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dhcp_universe, i32 0, i32 0), align 8
  %2 = call %struct.TYPE_6__* (...) @new_hash()
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dhcp_universe, i32 0, i32 1), align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dhcp_universe, i32 0, i32 1), align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %34, %7
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dhcp_options, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 %14
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dhcp_universe, i32 0, i32 2), align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %18
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dhcp_universe, i32 0, i32 1), align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dhcp_options, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dhcp_options, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = bitcast %struct.TYPE_8__* %31 to i8*
  %33 = call i32 @add_hash(%struct.TYPE_6__* %20, i8* %27, i32 0, i8* %32)
  br label %34

34:                                               ; preds = %11
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load i32, i32* @DEFAULT_HASH_SIZE, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @universe_hash, i32 0, i32 0), align 4
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dhcp_universe, i32 0, i32 0), align 8
  %40 = call i32 @add_hash(%struct.TYPE_6__* @universe_hash, i8* %39, i32 0, i8* bitcast (%struct.TYPE_7__* @dhcp_universe to i8*))
  ret void
}

declare dso_local %struct.TYPE_6__* @new_hash(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @add_hash(%struct.TYPE_6__*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
