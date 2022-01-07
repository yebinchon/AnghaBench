; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_cisco_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_cisco_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_ms_mppe_keys = type { i32, i32 }
%struct.radius_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RADIUS_VENDOR_ID_CISCO = common dso_local global i32 0, align 4
@RADIUS_CISCO_AV_PAIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"leap:session-key=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radius_ms_mppe_keys* @radius_msg_get_cisco_keys(%struct.radius_msg* %0, %struct.radius_msg* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.radius_ms_mppe_keys*, align 8
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.radius_ms_mppe_keys*, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %6, align 8
  store %struct.radius_msg* %1, %struct.radius_msg** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %14 = icmp eq %struct.radius_msg* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %17 = icmp eq %struct.radius_msg* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store %struct.radius_ms_mppe_keys* null, %struct.radius_ms_mppe_keys** %5, align 8
  br label %59

19:                                               ; preds = %15
  %20 = call %struct.radius_ms_mppe_keys* @os_zalloc(i32 8)
  store %struct.radius_ms_mppe_keys* %20, %struct.radius_ms_mppe_keys** %12, align 8
  %21 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  %22 = icmp eq %struct.radius_ms_mppe_keys* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store %struct.radius_ms_mppe_keys* null, %struct.radius_ms_mppe_keys** %5, align 8
  br label %59

24:                                               ; preds = %19
  %25 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %26 = load i32, i32* @RADIUS_VENDOR_ID_CISCO, align 4
  %27 = load i32, i32* @RADIUS_CISCO_AV_PAIR, align 4
  %28 = call i32* @radius_msg_get_vendor_attr(%struct.radius_msg* %25, i32 %26, i32 %27, i64* %11)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %24
  %32 = load i64, i64* %11, align 8
  %33 = icmp eq i64 %32, 51
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @os_memcmp(i32* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 17)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 17
  %41 = load i64, i64* %11, align 8
  %42 = sub i64 %41, 17
  %43 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %44 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  %51 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %50, i32 0, i32 0
  %52 = call i32 @decrypt_ms_key(i32* %40, i64 %42, i32 %47, i32* %48, i64 %49, i32* %51)
  %53 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  %54 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %38, %34, %31, %24
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @os_free(i32* %56)
  %58 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  store %struct.radius_ms_mppe_keys* %58, %struct.radius_ms_mppe_keys** %5, align 8
  br label %59

59:                                               ; preds = %55, %23, %18
  %60 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %5, align 8
  ret %struct.radius_ms_mppe_keys* %60
}

declare dso_local %struct.radius_ms_mppe_keys* @os_zalloc(i32) #1

declare dso_local i32* @radius_msg_get_vendor_attr(%struct.radius_msg*, i32, i32, i64*) #1

declare dso_local i64 @os_memcmp(i32*, i8*, i32) #1

declare dso_local i32 @decrypt_ms_key(i32*, i64, i32, i32*, i64, i32*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
