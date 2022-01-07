; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_Policy_getNextMethod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_Policy_getNextMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_IDENTITY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@EAP_MAX_METHODS = common dso_local global i32 0, align 4
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP: getNextMethod: vendor %d type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.eap_sm*, i32*)* @eap_sm_Policy_getNextMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eap_sm_Policy_getNextMethod(%struct.eap_sm* %0, i32* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %8 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %11 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %16 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %26

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* @TRUE, align 4
  %24 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %25 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  br label %92

26:                                               ; preds = %14
  %27 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %28 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %87

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @EAP_MAX_METHODS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %87

35:                                               ; preds = %31
  %36 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %37 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %61, label %48

48:                                               ; preds = %35
  %49 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %50 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @EAP_TYPE_NONE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %48, %35
  %62 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %63 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %74 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %5, align 8
  %83 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %84 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %91

87:                                               ; preds = %48, %31, %26
  %88 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %89 = load i32*, i32** %4, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i64, i64* @EAP_TYPE_NONE, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %87, %61
  br label %92

92:                                               ; preds = %91, %19
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @wpa_printf(i32 %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %95, i64 %96)
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
