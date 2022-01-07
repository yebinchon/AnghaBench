; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_send_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_send_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i32, i32, i32, i32, i32 }
%struct.nv = type { i32 }
%struct.hio = type { i32, i64, i64, i8*, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"send: Taking request.\00", align 1
@send = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"send: (%p) Got request: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"received\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unexpected command (cmd=%hhu).\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Unable to send reply\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"send: (%p) Moving request to the free queue.\00", align 1
@free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @send_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @send_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hast_resource*, align 8
  %4 = alloca %struct.nv*, align 8
  %5 = alloca %struct.hio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.hast_resource*
  store %struct.hast_resource* %9, %struct.hast_resource** %3, align 8
  br label %10

10:                                               ; preds = %109, %1
  %11 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @send, align 4
  %13 = load %struct.hio*, %struct.hio** %5, align 8
  %14 = call i32 @QUEUE_TAKE(i32 %12, %struct.hio* %13)
  %15 = load i32, i32* @LOG_DEBUG, align 4
  %16 = load %struct.hio*, %struct.hio** %5, align 8
  %17 = load %struct.hio*, %struct.hio** %5, align 8
  %18 = call i32 @reqlog(i32 %15, i32 2, i32 -1, %struct.hio* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.hio* %17)
  %19 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %19, %struct.nv** %4, align 8
  %20 = load %struct.nv*, %struct.nv** %4, align 8
  %21 = load %struct.hio*, %struct.hio** %5, align 8
  %22 = getelementptr inbounds %struct.hio, %struct.hio* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @nv_add_uint64(%struct.nv* %20, i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.hio*, %struct.hio** %5, align 8
  %26 = getelementptr inbounds %struct.hio, %struct.hio* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %10
  %30 = load %struct.hio*, %struct.hio** %5, align 8
  %31 = getelementptr inbounds %struct.hio, %struct.hio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 128
  %34 = zext i1 %33 to i32
  %35 = call i32 @PJDLOG_ASSERT(i32 %34)
  %36 = load %struct.nv*, %struct.nv** %4, align 8
  %37 = call i32 @nv_add_int8(%struct.nv* %36, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %29, %10
  %39 = load %struct.hio*, %struct.hio** %5, align 8
  %40 = getelementptr inbounds %struct.hio, %struct.hio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %56 [
    i32 129, label %42
    i32 131, label %55
    i32 130, label %55
    i32 128, label %55
  ]

42:                                               ; preds = %38
  %43 = load %struct.hio*, %struct.hio** %5, align 8
  %44 = getelementptr inbounds %struct.hio, %struct.hio* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.hio*, %struct.hio** %5, align 8
  %49 = getelementptr inbounds %struct.hio, %struct.hio* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %6, align 8
  %51 = load %struct.hio*, %struct.hio** %5, align 8
  %52 = getelementptr inbounds %struct.hio, %struct.hio* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  br label %61

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %38, %38, %38, %54
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %61

56:                                               ; preds = %38
  %57 = load %struct.hio*, %struct.hio** %5, align 8
  %58 = getelementptr inbounds %struct.hio, %struct.hio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %55, %47
  %62 = load %struct.hio*, %struct.hio** %5, align 8
  %63 = getelementptr inbounds %struct.hio, %struct.hio* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %61
  %67 = load %struct.hio*, %struct.hio** %5, align 8
  %68 = getelementptr inbounds %struct.hio, %struct.hio* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %90 [
    i32 129, label %70
    i32 128, label %75
    i32 131, label %80
    i32 130, label %85
  ]

70:                                               ; preds = %66
  %71 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %72 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %90

75:                                               ; preds = %66
  %76 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %77 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %90

80:                                               ; preds = %66
  %81 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %82 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %90

85:                                               ; preds = %66
  %86 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %87 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %66, %85, %80, %75, %70
  %91 = load %struct.nv*, %struct.nv** %4, align 8
  %92 = load %struct.hio*, %struct.hio** %5, align 8
  %93 = getelementptr inbounds %struct.hio, %struct.hio* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @nv_add_int16(%struct.nv* %91, i64 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %90, %61
  %97 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %98 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %99 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nv*, %struct.nv** %4, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @hast_proto_send(%struct.hast_resource* %97, i32 %100, %struct.nv* %101, i8* %102, i64 %103)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load i32, i32* @EX_TEMPFAIL, align 4
  %108 = call i32 @secondary_exit(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %96
  %110 = load %struct.nv*, %struct.nv** %4, align 8
  %111 = call i32 @nv_free(%struct.nv* %110)
  %112 = load %struct.hio*, %struct.hio** %5, align 8
  %113 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), %struct.hio* %112)
  %114 = load %struct.hio*, %struct.hio** %5, align 8
  %115 = call i32 @hio_clear(%struct.hio* %114)
  %116 = load i32, i32* @free, align 4
  %117 = load %struct.hio*, %struct.hio** %5, align 8
  %118 = call i32 @QUEUE_INSERT(i32 %116, %struct.hio* %117)
  br label %10
}

declare dso_local i32 @pjdlog_debug(i32, i8*, ...) #1

declare dso_local i32 @QUEUE_TAKE(i32, %struct.hio*) #1

declare dso_local i32 @reqlog(i32, i32, i32, %struct.hio*, i8*, %struct.hio*) #1

declare dso_local %struct.nv* @nv_alloc(...) #1

declare dso_local i32 @nv_add_uint64(%struct.nv*, i32, i8*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @nv_add_int8(%struct.nv*, i32, i8*) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

declare dso_local i32 @nv_add_int16(%struct.nv*, i64, i8*) #1

declare dso_local i32 @hast_proto_send(%struct.hast_resource*, i32, %struct.nv*, i8*, i64) #1

declare dso_local i32 @secondary_exit(i32, i8*) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

declare dso_local i32 @hio_clear(%struct.hio*) #1

declare dso_local i32 @QUEUE_INSERT(i32, %struct.hio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
