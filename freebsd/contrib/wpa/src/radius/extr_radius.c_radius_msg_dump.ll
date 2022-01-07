; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.radius_attr_hdr = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"RADIUS message: code=%d (%s) identifier=%d length=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_msg_dump(%struct.radius_msg* %0) #0 {
  %2 = alloca %struct.radius_msg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.radius_attr_hdr*, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %2, align 8
  %5 = load i32, i32* @MSG_INFO, align 4
  %6 = load %struct.radius_msg*, %struct.radius_msg** %2, align 8
  %7 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.radius_msg*, %struct.radius_msg** %2, align 8
  %12 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @radius_code_string(i32 %15)
  %17 = load %struct.radius_msg*, %struct.radius_msg** %2, align 8
  %18 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.radius_msg*, %struct.radius_msg** %2, align 8
  %23 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be_to_host16(i32 %26)
  %28 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %16, i32 %21, i32 %27)
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %41, %1
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.radius_msg*, %struct.radius_msg** %2, align 8
  %32 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.radius_msg*, %struct.radius_msg** %2, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %36, i64 %37)
  store %struct.radius_attr_hdr* %38, %struct.radius_attr_hdr** %4, align 8
  %39 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %4, align 8
  %40 = call i32 @radius_msg_dump_attr(%struct.radius_attr_hdr* %39)
  br label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %29

44:                                               ; preds = %29
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @radius_code_string(i32) #1

declare dso_local i32 @be_to_host16(i32) #1

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #1

declare dso_local i32 @radius_msg_dump_attr(%struct.radius_attr_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
