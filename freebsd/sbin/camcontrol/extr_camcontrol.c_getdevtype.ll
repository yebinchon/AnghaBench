; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_getdevtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_getdevtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }

@CC_DT_UNKNOWN = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"illegal\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@devtype_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*)* @getdevtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getdevtype(%struct.cam_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cam_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %3, align 8
  %6 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %7 = call i32 @get_device_type(%struct.cam_device* %6, i32 -1, i32 0, i32 0, i64* %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @CC_DT_UNKNOWN, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %25

18:                                               ; preds = %10
  %19 = load i32, i32* @stdout, align 4
  %20 = load i8**, i8*** @devtype_names, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @get_device_type(%struct.cam_device*, i32, i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
