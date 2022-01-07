; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_server_sm_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_server_sm_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32, i32, %struct.TYPE_4__, %struct.eap_sm*, %struct.eap_sm*, %struct.eap_sm*, %struct.eap_sm*, %struct.eap_sm*, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.eap_sm*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.eap_sm*, i64)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP: Server state machine removed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_server_sm_deinit(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  %3 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %4 = icmp eq %struct.eap_sm* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %111

6:                                                ; preds = %1
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = call i32 @wpa_printf(i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %10 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %9, i32 0, i32 11
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %6
  %14 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %15 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %20 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %19, i32 0, i32 11
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.eap_sm*, i64)*, i32 (%struct.eap_sm*, i64)** %22, align 8
  %24 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %25 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %26 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = call i32 %23(%struct.eap_sm* %24, i64 %27)
  br label %29

29:                                               ; preds = %18, %13, %6
  %30 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %31 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @wpabuf_free(i32 %33)
  %35 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %36 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %40 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bin_clear_free(i32 %38, i32 %42)
  %44 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %45 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load %struct.eap_sm*, %struct.eap_sm** %46, align 8
  %48 = call i32 @os_free(%struct.eap_sm* %47)
  %49 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %50 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @wpabuf_free(i32 %51)
  %53 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %54 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @wpabuf_free(i32 %56)
  %58 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %59 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %58, i32 0, i32 8
  %60 = load %struct.eap_sm*, %struct.eap_sm** %59, align 8
  %61 = call i32 @os_free(%struct.eap_sm* %60)
  %62 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %63 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %62, i32 0, i32 7
  %64 = load %struct.eap_sm*, %struct.eap_sm** %63, align 8
  %65 = call i32 @os_free(%struct.eap_sm* %64)
  %66 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %67 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %66, i32 0, i32 6
  %68 = load %struct.eap_sm*, %struct.eap_sm** %67, align 8
  %69 = call i32 @os_free(%struct.eap_sm* %68)
  %70 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %71 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %70, i32 0, i32 5
  %72 = load %struct.eap_sm*, %struct.eap_sm** %71, align 8
  %73 = call i32 @os_free(%struct.eap_sm* %72)
  %74 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %75 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %74, i32 0, i32 4
  %76 = load %struct.eap_sm*, %struct.eap_sm** %75, align 8
  %77 = call i32 @os_free(%struct.eap_sm* %76)
  %78 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %79 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @wpabuf_free(i32 %81)
  %83 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %84 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @wpabuf_free(i32 %86)
  %88 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %89 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %93 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @bin_clear_free(i32 %91, i32 %95)
  %97 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %98 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @eap_user_free(i32 %99)
  %101 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %102 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @wpabuf_free(i32 %103)
  %105 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %106 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @wpabuf_free(i32 %107)
  %109 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %110 = call i32 @os_free(%struct.eap_sm* %109)
  br label %111

111:                                              ; preds = %29, %5
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @bin_clear_free(i32, i32) #1

declare dso_local i32 @os_free(%struct.eap_sm*) #1

declare dso_local i32 @eap_user_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
