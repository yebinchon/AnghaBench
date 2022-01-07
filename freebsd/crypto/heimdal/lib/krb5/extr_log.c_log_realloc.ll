; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_log.c_log_realloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_log.c_log_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.facility = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.facility* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.facility* (%struct.TYPE_3__*)* @log_realloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.facility* @log_realloc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.facility*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.facility*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load %struct.facility*, %struct.facility** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call %struct.facility* @realloc(%struct.facility* %7, i32 %14)
  store %struct.facility* %15, %struct.facility** %4, align 8
  %16 = load %struct.facility*, %struct.facility** %4, align 8
  %17 = icmp eq %struct.facility* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.facility* null, %struct.facility** %2, align 8
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.facility*, %struct.facility** %4, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store %struct.facility* %24, %struct.facility** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.facility*, %struct.facility** %4, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.facility, %struct.facility* %31, i64 %32
  store %struct.facility* %33, %struct.facility** %4, align 8
  %34 = load %struct.facility*, %struct.facility** %4, align 8
  store %struct.facility* %34, %struct.facility** %2, align 8
  br label %35

35:                                               ; preds = %19, %18
  %36 = load %struct.facility*, %struct.facility** %2, align 8
  ret %struct.facility* %36
}

declare dso_local %struct.facility* @realloc(%struct.facility*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
