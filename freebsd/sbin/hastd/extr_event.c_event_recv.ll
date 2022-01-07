; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_event.c_event_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_event.c_event_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i32, i32, i32, i32 }
%struct.nv = type { i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to receive event header\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@EVENT_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Event header is missing 'event' field.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"syncstart\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"syncdone\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"syncintr\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"split-brain\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Event header contain invalid event number (%hhu).\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"[%s] (%s) \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"Unable to prepare event header\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Unable to send event header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_recv(%struct.hast_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hast_resource*, align 8
  %4 = alloca %struct.nv*, align 8
  %5 = alloca %struct.nv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hast_resource* %0, %struct.hast_resource** %3, align 8
  %9 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %10 = icmp ne %struct.hast_resource* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @PJDLOG_ASSERT(i32 %11)
  store %struct.nv* null, %struct.nv** %5, align 8
  store %struct.nv* null, %struct.nv** %4, align 8
  %13 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %14 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @hast_proto_recv_hdr(i32 %15, %struct.nv** %4)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @LOG_DEBUG, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @pjdlog_common(i32 %19, i32 1, i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %88

22:                                               ; preds = %1
  %23 = load %struct.nv*, %struct.nv** %4, align 8
  %24 = call i32 @nv_get_uint8(%struct.nv* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @EVENT_NONE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %88

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %38 [
    i32 133, label %32
    i32 132, label %33
    i32 128, label %34
    i32 130, label %35
    i32 129, label %36
    i32 131, label %37
  ]

32:                                               ; preds = %30
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %41

33:                                               ; preds = %30
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %41

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %41

35:                                               ; preds = %30
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %41

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %41

37:                                               ; preds = %30
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %39)
  br label %88

41:                                               ; preds = %37, %36, %35, %34, %33, %32
  %42 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %43 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %48 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @role2str(i32 %49)
  %51 = call i32 (i8*, i8*, ...) @pjdlog_prefix_set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %46, i32 %50)
  %52 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %53 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %57 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @hook_exec(i32 %54, i8* %55, i32 %58, i32* null)
  %60 = call i32 (i8*, i8*, ...) @pjdlog_prefix_set(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %61 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %61, %struct.nv** %5, align 8
  %62 = load %struct.nv*, %struct.nv** %5, align 8
  %63 = call i32 @nv_add_int16(%struct.nv* %62, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %64 = load %struct.nv*, %struct.nv** %5, align 8
  %65 = call i32 @nv_error(%struct.nv* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %41
  %69 = load i32, i32* @LOG_ERR, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @pjdlog_common(i32 %69, i32 0, i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %88

72:                                               ; preds = %41
  %73 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %74 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %75 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nv*, %struct.nv** %5, align 8
  %78 = call i32 @hast_proto_send(%struct.hast_resource* %73, i32 %76, %struct.nv* %77, i32* null, i32 0)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @LOG_ERR, align 4
  %82 = call i32 @pjdlog_errno(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  br label %88

83:                                               ; preds = %72
  %84 = load %struct.nv*, %struct.nv** %4, align 8
  %85 = call i32 @nv_free(%struct.nv* %84)
  %86 = load %struct.nv*, %struct.nv** %5, align 8
  %87 = call i32 @nv_free(%struct.nv* %86)
  store i32 0, i32* %2, align 4
  br label %101

88:                                               ; preds = %80, %68, %38, %28, %18
  %89 = load %struct.nv*, %struct.nv** %4, align 8
  %90 = icmp ne %struct.nv* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.nv*, %struct.nv** %4, align 8
  %93 = call i32 @nv_free(%struct.nv* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load %struct.nv*, %struct.nv** %5, align 8
  %96 = icmp ne %struct.nv* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.nv*, %struct.nv** %5, align 8
  %99 = call i32 @nv_free(%struct.nv* %98)
  br label %100

100:                                              ; preds = %97, %94
  store i32 -1, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %83
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @hast_proto_recv_hdr(i32, %struct.nv**) #1

declare dso_local i32 @pjdlog_common(i32, i32, i32, i8*) #1

declare dso_local i32 @nv_get_uint8(%struct.nv*, i8*) #1

declare dso_local i32 @pjdlog_error(i8*, ...) #1

declare dso_local i32 @pjdlog_prefix_set(i8*, i8*, ...) #1

declare dso_local i32 @role2str(i32) #1

declare dso_local i32 @hook_exec(i32, i8*, i32, i32*) #1

declare dso_local %struct.nv* @nv_alloc(...) #1

declare dso_local i32 @nv_add_int16(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_error(%struct.nv*) #1

declare dso_local i32 @hast_proto_send(%struct.hast_resource*, i32, %struct.nv*, i32*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
