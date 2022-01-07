; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ocsp.c_index_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ocsp.c_index_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.stat = type { i64, i64, i64, i64 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"index file changed, reloading\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @index_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_changed(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.stat, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %49

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @stat(i32 %10, %struct.stat* %4)
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %49

13:                                               ; preds = %7
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %13
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %21
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %29, %21, %13
  %46 = load i32, i32* @LOG_INFO, align 4
  %47 = call i32 @syslog(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %50

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %7, %1
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
