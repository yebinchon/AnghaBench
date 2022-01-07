; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_event.c_event_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_event.c_event_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i32 }
%struct.nv = type { i32 }

@EVENT_MIN = common dso_local global i32 0, align 4
@EVENT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"event\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to prepare event header\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to send event header\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to receive event header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_send(%struct.hast_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.hast_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv*, align 8
  %6 = alloca %struct.nv*, align 8
  %7 = alloca i32, align 4
  store %struct.hast_resource* %0, %struct.hast_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %9 = icmp ne %struct.hast_resource* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @PJDLOG_ASSERT(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EVENT_MIN, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EVENT_MAX, align 4
  %18 = icmp sle i32 %16, %17
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ false, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @PJDLOG_ASSERT(i32 %21)
  store %struct.nv* null, %struct.nv** %6, align 8
  store %struct.nv* null, %struct.nv** %5, align 8
  %23 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %23, %struct.nv** %6, align 8
  %24 = load %struct.nv*, %struct.nv** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @nv_add_uint8(%struct.nv* %24, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.nv*, %struct.nv** %6, align 8
  %28 = call i32 @nv_error(%struct.nv* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* @LOG_ERR, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pjdlog_common(i32 %32, i32 0, i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %56

35:                                               ; preds = %19
  %36 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %37 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %38 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nv*, %struct.nv** %6, align 8
  %41 = call i32 @hast_proto_send(%struct.hast_resource* %36, i32 %39, %struct.nv* %40, i32* null, i32 0)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = call i32 @pjdlog_errno(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %56

46:                                               ; preds = %35
  %47 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %48 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hast_proto_recv_hdr(i32 %49, %struct.nv** %5)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = call i32 @pjdlog_errno(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %56

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %52, %43, %31
  %57 = load %struct.nv*, %struct.nv** %5, align 8
  %58 = icmp ne %struct.nv* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.nv*, %struct.nv** %5, align 8
  %61 = call i32 @nv_free(%struct.nv* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.nv*, %struct.nv** %6, align 8
  %64 = icmp ne %struct.nv* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.nv*, %struct.nv** %6, align 8
  %67 = call i32 @nv_free(%struct.nv* %66)
  br label %68

68:                                               ; preds = %65, %62
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.nv* @nv_alloc(...) #1

declare dso_local i32 @nv_add_uint8(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_error(%struct.nv*) #1

declare dso_local i32 @pjdlog_common(i32, i32, i32, i8*) #1

declare dso_local i32 @hast_proto_send(%struct.hast_resource*, i32, %struct.nv*, i32*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*) #1

declare dso_local i32 @hast_proto_recv_hdr(i32, %struct.nv**) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
