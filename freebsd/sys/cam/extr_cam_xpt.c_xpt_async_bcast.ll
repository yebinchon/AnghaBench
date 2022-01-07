; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_async_bcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_async_bcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_list = type { i32 }
%struct.cam_path = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mtx* }
%struct.mtx = type { i32 }
%struct.async_node = type { i32, i32, i32 (i32, i32, %struct.cam_path*, i8*)*, i64 }

@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_list*, i32, %struct.cam_path*, i8*)* @xpt_async_bcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_async_bcast(%struct.async_list* %0, i32 %1, %struct.cam_path* %2, i8* %3) #0 {
  %5 = alloca %struct.async_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.async_node*, align 8
  %10 = alloca %struct.mtx*, align 8
  %11 = alloca %struct.async_node*, align 8
  store %struct.async_list* %0, %struct.async_list** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cam_path* %2, %struct.cam_path** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.async_list*, %struct.async_list** %5, align 8
  %13 = call %struct.async_node* @SLIST_FIRST(%struct.async_list* %12)
  store %struct.async_node* %13, %struct.async_node** %9, align 8
  br label %14

14:                                               ; preds = %65, %4
  %15 = load %struct.async_node*, %struct.async_node** %9, align 8
  %16 = icmp ne %struct.async_node* %15, null
  br i1 %16, label %17, label %67

17:                                               ; preds = %14
  %18 = load %struct.async_node*, %struct.async_node** %9, align 8
  %19 = load i32, i32* @links, align 4
  %20 = call %struct.async_node* @SLIST_NEXT(%struct.async_node* %18, i32 %19)
  store %struct.async_node* %20, %struct.async_node** %11, align 8
  %21 = load %struct.async_node*, %struct.async_node** %9, align 8
  %22 = getelementptr inbounds %struct.async_node, %struct.async_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %17
  %28 = load %struct.async_node*, %struct.async_node** %9, align 8
  %29 = getelementptr inbounds %struct.async_node, %struct.async_node* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %34 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.mtx*, %struct.mtx** %38, align 8
  br label %41

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %32
  %42 = phi %struct.mtx* [ %39, %32 ], [ null, %40 ]
  store %struct.mtx* %42, %struct.mtx** %10, align 8
  %43 = load %struct.mtx*, %struct.mtx** %10, align 8
  %44 = icmp ne %struct.mtx* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.mtx*, %struct.mtx** %10, align 8
  %47 = call i32 @mtx_lock(%struct.mtx* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.async_node*, %struct.async_node** %9, align 8
  %50 = getelementptr inbounds %struct.async_node, %struct.async_node* %49, i32 0, i32 2
  %51 = load i32 (i32, i32, %struct.cam_path*, i8*)*, i32 (i32, i32, %struct.cam_path*, i8*)** %50, align 8
  %52 = load %struct.async_node*, %struct.async_node** %9, align 8
  %53 = getelementptr inbounds %struct.async_node, %struct.async_node* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 %51(i32 %54, i32 %55, %struct.cam_path* %56, i8* %57)
  %59 = load %struct.mtx*, %struct.mtx** %10, align 8
  %60 = icmp ne %struct.mtx* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load %struct.mtx*, %struct.mtx** %10, align 8
  %63 = call i32 @mtx_unlock(%struct.mtx* %62)
  br label %64

64:                                               ; preds = %61, %48
  br label %65

65:                                               ; preds = %64, %17
  %66 = load %struct.async_node*, %struct.async_node** %11, align 8
  store %struct.async_node* %66, %struct.async_node** %9, align 8
  br label %14

67:                                               ; preds = %14
  ret void
}

declare dso_local %struct.async_node* @SLIST_FIRST(%struct.async_list*) #1

declare dso_local %struct.async_node* @SLIST_NEXT(%struct.async_node*, i32) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
