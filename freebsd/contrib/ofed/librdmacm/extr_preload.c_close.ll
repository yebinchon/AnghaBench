; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.fd_info = type { i32, i64, i32, i32 }

@idm = common dso_local global i32 0, align 4
@real = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@fd_rsocket = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 (...) @init_preload()
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.fd_info* @idm_lookup(i32* @idm, i32 %7)
  store %struct.fd_info* %8, %struct.fd_info** %4, align 8
  %9 = load %struct.fd_info*, %struct.fd_info** %4, align 8
  %10 = icmp ne %struct.fd_info* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 %12(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.fd_info*, %struct.fd_info** %4, align 8
  %17 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.fd_info*, %struct.fd_info** %4, align 8
  %22 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @close(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %63

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %15
  %31 = load %struct.fd_info*, %struct.fd_info** %4, align 8
  %32 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %31, i32 0, i32 3
  %33 = call i32 @atomic_fetch_sub(i32* %32, i32 1)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %63

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @idm_clear(i32* @idm, i32 %37)
  %39 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 %39(i32 %40)
  %42 = load %struct.fd_info*, %struct.fd_info** %4, align 8
  %43 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @fd_rsocket, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.fd_info*, %struct.fd_info** %4, align 8
  %49 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @rclose(i32 %50)
  br label %58

52:                                               ; preds = %36
  %53 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %54 = load %struct.fd_info*, %struct.fd_info** %4, align 8
  %55 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i32 %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = phi i32 [ %51, %47 ], [ %57, %52 ]
  store i32 %59, i32* %5, align 4
  %60 = load %struct.fd_info*, %struct.fd_info** %4, align 8
  %61 = call i32 @free(%struct.fd_info* %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %35, %27, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @init_preload(...) #1

declare dso_local %struct.fd_info* @idm_lookup(i32*, i32) #1

declare dso_local i32 @atomic_fetch_sub(i32*, i32) #1

declare dso_local i32 @idm_clear(i32*, i32) #1

declare dso_local i32 @rclose(i32) #1

declare dso_local i32 @free(%struct.fd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
