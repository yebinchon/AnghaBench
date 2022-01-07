; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_shim.c_vchi_msg_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_shim.c_vchi_msg_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.opaque_vchi_service_t* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.opaque_vchi_service_t = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

@VCHI_FLAGS_NONE = common dso_local global i64 0, align 8
@VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchi_msg_hold(i64 %0, i8** %1, i32* %2, i64 %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %12, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @VCHI_FLAGS_NONE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE, align 8
  %22 = icmp ne i64 %20, %21
  br label %23

23:                                               ; preds = %19, %5
  %24 = phi i1 [ false, %5 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @VCHI_FLAGS_NONE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = call i64 @vchiu_queue_is_empty(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %58

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = call %struct.TYPE_7__* @vchiu_queue_pop(i32* %39)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %13, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %8, align 8
  store i8* %43, i8** %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.opaque_vchi_service_t*
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store %struct.opaque_vchi_service_t* %52, %struct.opaque_vchi_service_t** %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %37, %35
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @vchiu_queue_is_empty(i32*) #1

declare dso_local %struct.TYPE_7__* @vchiu_queue_pop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
