; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_recv_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_recv_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i32, i32, i32, i32, i32 }
%struct.hio = type { i32, i32, i64, i32 }
%struct.nv = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"recv: Taking free request.\00", align 1
@free = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"recv: (%p) Got request.\00", align 1
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to receive request header\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"recv: (%p) Moving request to the send queue.\00", align 1
@send = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Unexpected command (cmd=%hhu).\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"recv: (%p) Got request header: \00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"recv: (%p) Moving request to the free queue.\00", align 1
@MAXPHYS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Unable to receive request data\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"recv: (%p) Moving memsync request to the send queue.\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"recv: (%p) Moving request to the disk queue.\00", align 1
@disk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @recv_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @recv_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hast_resource*, align 8
  %4 = alloca %struct.hio*, align 8
  %5 = alloca %struct.hio*, align 8
  %6 = alloca %struct.nv*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.hast_resource*
  store %struct.hast_resource* %8, %struct.hast_resource** %3, align 8
  br label %9

9:                                                ; preds = %133, %77, %30, %1
  %10 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @free, align 4
  %12 = load %struct.hio*, %struct.hio** %4, align 8
  %13 = call i32 @QUEUE_TAKE(i32 %11, %struct.hio* %12)
  %14 = load %struct.hio*, %struct.hio** %4, align 8
  %15 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.hio* %14)
  %16 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %17 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @hast_proto_recv_hdr(i32 %18, %struct.nv** %6)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %9
  %22 = load i32, i32* @EX_TEMPFAIL, align 4
  %23 = call i32 @secondary_exit(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %9
  %25 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %26 = load %struct.hio*, %struct.hio** %4, align 8
  %27 = load %struct.nv*, %struct.nv** %6, align 8
  %28 = call i64 @requnpack(%struct.hast_resource* %25, %struct.hio* %26, %struct.nv* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.nv*, %struct.nv** %6, align 8
  %32 = call i32 @nv_free(%struct.nv* %31)
  %33 = load %struct.hio*, %struct.hio** %4, align 8
  %34 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), %struct.hio* %33)
  %35 = load i32, i32* @send, align 4
  %36 = load %struct.hio*, %struct.hio** %4, align 8
  %37 = call i32 @QUEUE_INSERT(i32 %35, %struct.hio* %36)
  br label %9

38:                                               ; preds = %24
  %39 = load %struct.hio*, %struct.hio** %4, align 8
  %40 = getelementptr inbounds %struct.hio, %struct.hio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %63 [
    i32 129, label %42
    i32 128, label %47
    i32 132, label %52
    i32 131, label %57
    i32 130, label %62
  ]

42:                                               ; preds = %38
  %43 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %44 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %68

47:                                               ; preds = %38
  %48 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %49 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %68

52:                                               ; preds = %38
  %53 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %54 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %68

57:                                               ; preds = %38
  %58 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %59 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %68

62:                                               ; preds = %38
  br label %68

63:                                               ; preds = %38
  %64 = load %struct.hio*, %struct.hio** %4, align 8
  %65 = getelementptr inbounds %struct.hio, %struct.hio* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %62, %57, %52, %47, %42
  %69 = load i32, i32* @LOG_DEBUG, align 4
  %70 = load %struct.hio*, %struct.hio** %4, align 8
  %71 = load %struct.hio*, %struct.hio** %4, align 8
  %72 = call i32 @reqlog(i32 %69, i32 2, i32 -1, %struct.hio* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), %struct.hio* %71)
  %73 = load %struct.hio*, %struct.hio** %4, align 8
  %74 = getelementptr inbounds %struct.hio, %struct.hio* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 130
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load %struct.nv*, %struct.nv** %6, align 8
  %79 = call i32 @nv_free(%struct.nv* %78)
  %80 = load %struct.hio*, %struct.hio** %4, align 8
  %81 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), %struct.hio* %80)
  %82 = load %struct.hio*, %struct.hio** %4, align 8
  %83 = call i32 @hio_clear(%struct.hio* %82)
  %84 = load i32, i32* @free, align 4
  %85 = load %struct.hio*, %struct.hio** %4, align 8
  %86 = call i32 @QUEUE_INSERT(i32 %84, %struct.hio* %85)
  br label %9

87:                                               ; preds = %68
  %88 = load %struct.hio*, %struct.hio** %4, align 8
  %89 = getelementptr inbounds %struct.hio, %struct.hio* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 128
  br i1 %91, label %92, label %132

92:                                               ; preds = %87
  %93 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %94 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %95 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nv*, %struct.nv** %6, align 8
  %98 = load %struct.hio*, %struct.hio** %4, align 8
  %99 = getelementptr inbounds %struct.hio, %struct.hio* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @MAXPHYS, align 4
  %102 = call i32 @hast_proto_recv_data(%struct.hast_resource* %93, i32 %96, %struct.nv* %97, i32 %100, i32 %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = load i32, i32* @EX_TEMPFAIL, align 4
  %106 = call i32 @secondary_exit(i32 %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %92
  %108 = load %struct.hio*, %struct.hio** %4, align 8
  %109 = getelementptr inbounds %struct.hio, %struct.hio* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %107
  %113 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @free, align 4
  %115 = load %struct.hio*, %struct.hio** %5, align 8
  %116 = call i32 @QUEUE_TAKE(i32 %114, %struct.hio* %115)
  %117 = load %struct.hio*, %struct.hio** %5, align 8
  %118 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.hio* %117)
  %119 = load %struct.hio*, %struct.hio** %4, align 8
  %120 = load %struct.hio*, %struct.hio** %5, align 8
  %121 = call i32 @hio_copy(%struct.hio* %119, %struct.hio* %120)
  %122 = load %struct.hio*, %struct.hio** %5, align 8
  %123 = getelementptr inbounds %struct.hio, %struct.hio* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load %struct.hio*, %struct.hio** %4, align 8
  %125 = getelementptr inbounds %struct.hio, %struct.hio* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load %struct.hio*, %struct.hio** %5, align 8
  %127 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), %struct.hio* %126)
  %128 = load i32, i32* @send, align 4
  %129 = load %struct.hio*, %struct.hio** %5, align 8
  %130 = call i32 @QUEUE_INSERT(i32 %128, %struct.hio* %129)
  br label %131

131:                                              ; preds = %112, %107
  br label %132

132:                                              ; preds = %131, %87
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.nv*, %struct.nv** %6, align 8
  %135 = call i32 @nv_free(%struct.nv* %134)
  %136 = load %struct.hio*, %struct.hio** %4, align 8
  %137 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), %struct.hio* %136)
  %138 = load i32, i32* @disk, align 4
  %139 = load %struct.hio*, %struct.hio** %4, align 8
  %140 = call i32 @QUEUE_INSERT(i32 %138, %struct.hio* %139)
  br label %9
}

declare dso_local i32 @pjdlog_debug(i32, i8*, ...) #1

declare dso_local i32 @QUEUE_TAKE(i32, %struct.hio*) #1

declare dso_local i32 @hast_proto_recv_hdr(i32, %struct.nv**) #1

declare dso_local i32 @secondary_exit(i32, i8*) #1

declare dso_local i64 @requnpack(%struct.hast_resource*, %struct.hio*, %struct.nv*) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

declare dso_local i32 @QUEUE_INSERT(i32, %struct.hio*) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

declare dso_local i32 @reqlog(i32, i32, i32, %struct.hio*, i8*, %struct.hio*) #1

declare dso_local i32 @hio_clear(%struct.hio*) #1

declare dso_local i32 @hast_proto_recv_data(%struct.hast_resource*, i32, %struct.nv*, i32, i32) #1

declare dso_local i32 @hio_copy(%struct.hio*, %struct.hio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
