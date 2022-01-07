; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_destroysource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_destroysource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_entropy_destroysource(%struct.TYPE_9__** %0) #0 {
  %2 = alloca %struct.TYPE_9__**, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %2, align 8
  %6 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %7 = icmp ne %struct.TYPE_9__** %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @REQUIRE(i32 %8)
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = call i32 @VALID_SOURCE(%struct.TYPE_9__* %11)
  %13 = call i32 @REQUIRE(i32 %12)
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %3, align 8
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %4, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @VALID_ENTROPY(%struct.TYPE_10__* %20)
  %22 = call i32 @REQUIRE(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = call i32 @LOCK(i32* %24)
  %26 = call i32 @destroysource(%struct.TYPE_9__** %3)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = call i64 @destroy_check(%struct.TYPE_10__* %27)
  store i64 %28, i64* %5, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = call i32 @UNLOCK(i32* %30)
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = call i32 @destroy(%struct.TYPE_10__** %4)
  br label %36

36:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_SOURCE(%struct.TYPE_9__*) #1

declare dso_local i32 @VALID_ENTROPY(%struct.TYPE_10__*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @destroysource(%struct.TYPE_9__**) #1

declare dso_local i64 @destroy_check(%struct.TYPE_10__*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @destroy(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
