; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptpassannouncefunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptpassannouncefunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { i32 }
%struct.cam_periph = type { i32 }

@periph_links = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_ed*, i8*)* @xptpassannouncefunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptpassannouncefunc(%struct.cam_ed* %0, i8* %1) #0 {
  %3 = alloca %struct.cam_ed*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cam_periph*, align 8
  %6 = alloca i32, align 4
  store %struct.cam_ed* %0, %struct.cam_ed** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %8 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %7, i32 0, i32 0
  %9 = call %struct.cam_periph* @SLIST_FIRST(i32* %8)
  store %struct.cam_periph* %9, %struct.cam_periph** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %14, %2
  %11 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %12 = icmp ne %struct.cam_periph* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %16 = load i32, i32* @periph_links, align 4
  %17 = call %struct.cam_periph* @SLIST_NEXT(%struct.cam_periph* %15, i32 %16)
  store %struct.cam_periph* %17, %struct.cam_periph** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %10

20:                                               ; preds = %10
  %21 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %22 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %21, i32 0, i32 0
  %23 = call %struct.cam_periph* @SLIST_FIRST(i32* %22)
  store %struct.cam_periph* %23, %struct.cam_periph** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %28 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strncmp(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %34 = call i32 @xpt_announce_periph(%struct.cam_periph* %33, i32* null)
  br label %35

35:                                               ; preds = %32, %26, %20
  ret i32 1
}

declare dso_local %struct.cam_periph* @SLIST_FIRST(i32*) #1

declare dso_local %struct.cam_periph* @SLIST_NEXT(%struct.cam_periph*, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @xpt_announce_periph(%struct.cam_periph*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
