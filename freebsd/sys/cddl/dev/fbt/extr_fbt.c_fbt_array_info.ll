; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/extr_fbt.c_fbt_array_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/extr_fbt.c_fbt_array_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@CTF_K_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, %struct.TYPE_16__*)* @fbt_array_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbt_array_info(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = call i32 @bzero(%struct.TYPE_16__* %15, i32 12)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.TYPE_13__* @ctf_lookup_by_id(%struct.TYPE_12__* %17, i32 %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %8, align 8
  %20 = icmp eq %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %56

22:                                               ; preds = %3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @CTF_INFO_KIND(i32 %25)
  %27 = load i64, i64* @CTF_K_ARRAY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %56

30:                                               ; preds = %22
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = call i32 @fbt_get_ctt_size(i32 %33, %struct.TYPE_13__* %34, i32* null, i64* %10)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = ptrtoint %struct.TYPE_13__* %36 to i64
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %37, %38
  %40 = inttoptr i64 %39 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %9, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %30, %29, %21
  ret void
}

declare dso_local i32 @bzero(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_13__* @ctf_lookup_by_id(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @CTF_INFO_KIND(i32) #1

declare dso_local i32 @fbt_get_ctt_size(i32, %struct.TYPE_13__*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
