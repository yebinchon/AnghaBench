; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_ms_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_ms_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_ms_mppe_keys = type { i8*, i32, i8*, i32 }
%struct.radius_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RADIUS_VENDOR_ID_MICROSOFT = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"RADIUS: Failed to decrypt send key\00", align 1
@RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"RADIUS: Failed to decrypt recv key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radius_ms_mppe_keys* @radius_msg_get_ms_keys(%struct.radius_msg* %0, %struct.radius_msg* %1, i32* %2, i64 %3) #0 {
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
  br label %90

19:                                               ; preds = %15
  %20 = call %struct.radius_ms_mppe_keys* @os_zalloc(i32 32)
  store %struct.radius_ms_mppe_keys* %20, %struct.radius_ms_mppe_keys** %12, align 8
  %21 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  %22 = icmp eq %struct.radius_ms_mppe_keys* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store %struct.radius_ms_mppe_keys* null, %struct.radius_ms_mppe_keys** %5, align 8
  br label %90

24:                                               ; preds = %19
  %25 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %26 = load i32, i32* @RADIUS_VENDOR_ID_MICROSOFT, align 4
  %27 = load i32, i32* @RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY, align 4
  %28 = call i32* @radius_msg_get_vendor_attr(%struct.radius_msg* %25, i32 %26, i32 %27, i64* %11)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %24
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %35 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  %42 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %41, i32 0, i32 3
  %43 = call i8* @decrypt_ms_key(i32* %32, i64 %33, i32 %38, i32* %39, i64 %40, i32* %42)
  %44 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  %45 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  %47 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %31
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %31
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @os_free(i32* %54)
  br label %56

56:                                               ; preds = %53, %24
  %57 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %58 = load i32, i32* @RADIUS_VENDOR_ID_MICROSOFT, align 4
  %59 = load i32, i32* @RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY, align 4
  %60 = call i32* @radius_msg_get_vendor_attr(%struct.radius_msg* %57, i32 %58, i32 %59, i64* %11)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %88

63:                                               ; preds = %56
  %64 = load i32*, i32** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %67 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  %74 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %73, i32 0, i32 1
  %75 = call i8* @decrypt_ms_key(i32* %64, i64 %65, i32 %70, i32* %71, i64 %72, i32* %74)
  %76 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  %77 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  %79 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %63
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = call i32 @wpa_printf(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %63
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @os_free(i32* %86)
  br label %88

88:                                               ; preds = %85, %56
  %89 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %12, align 8
  store %struct.radius_ms_mppe_keys* %89, %struct.radius_ms_mppe_keys** %5, align 8
  br label %90

90:                                               ; preds = %88, %23, %18
  %91 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %5, align 8
  ret %struct.radius_ms_mppe_keys* %91
}

declare dso_local %struct.radius_ms_mppe_keys* @os_zalloc(i32) #1

declare dso_local i32* @radius_msg_get_vendor_attr(%struct.radius_msg*, i32, i32, i64*) #1

declare dso_local i8* @decrypt_ms_key(i32*, i64, i32, i32*, i64, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
