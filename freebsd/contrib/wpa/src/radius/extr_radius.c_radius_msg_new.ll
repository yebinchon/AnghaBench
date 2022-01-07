; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32*, i32 }

@RADIUS_DEFAULT_MSG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radius_msg* @radius_msg_new(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.radius_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.radius_msg*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call %struct.radius_msg* @os_zalloc(i32 16)
  store %struct.radius_msg* %7, %struct.radius_msg** %6, align 8
  %8 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %9 = icmp eq %struct.radius_msg* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.radius_msg* null, %struct.radius_msg** %3, align 8
  br label %39

11:                                               ; preds = %2
  %12 = load i32, i32* @RADIUS_DEFAULT_MSG_SIZE, align 4
  %13 = call i32* @wpabuf_alloc(i32 %12)
  %14 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %15 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %17 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %11
  %21 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %22 = call i64 @radius_msg_initialize(%struct.radius_msg* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %11
  %25 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %26 = call i32 @radius_msg_free(%struct.radius_msg* %25)
  store %struct.radius_msg* null, %struct.radius_msg** %3, align 8
  br label %39

27:                                               ; preds = %20
  %28 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %29 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @wpabuf_put(i32* %30, i32 4)
  %32 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %33 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @radius_msg_set_hdr(%struct.radius_msg* %34, i32 %35, i32 %36)
  %38 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  store %struct.radius_msg* %38, %struct.radius_msg** %3, align 8
  br label %39

39:                                               ; preds = %27, %24, %10
  %40 = load %struct.radius_msg*, %struct.radius_msg** %3, align 8
  ret %struct.radius_msg* %40
}

declare dso_local %struct.radius_msg* @os_zalloc(i32) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i64 @radius_msg_initialize(%struct.radius_msg*) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

declare dso_local i32 @wpabuf_put(i32*, i32) #1

declare dso_local i32 @radius_msg_set_hdr(%struct.radius_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
