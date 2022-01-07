; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_das_data = type { i64, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.radius_das_conf = type { i64, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to open UDP socket for RADIUS DAS\00", align 1
@radius_das_receive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radius_das_data* @radius_das_init(%struct.radius_das_conf* %0) #0 {
  %2 = alloca %struct.radius_das_data*, align 8
  %3 = alloca %struct.radius_das_conf*, align 8
  %4 = alloca %struct.radius_das_data*, align 8
  store %struct.radius_das_conf* %0, %struct.radius_das_conf** %3, align 8
  %5 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %6 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %11 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %16 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9, %1
  store %struct.radius_das_data* null, %struct.radius_das_data** %2, align 8
  br label %112

20:                                               ; preds = %14
  %21 = call %struct.radius_das_data* @os_zalloc(i32 56)
  store %struct.radius_das_data* %21, %struct.radius_das_data** %4, align 8
  %22 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %23 = icmp eq %struct.radius_das_data* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store %struct.radius_das_data* null, %struct.radius_das_data** %2, align 8
  br label %112

25:                                               ; preds = %20
  %26 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %27 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %30 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %32 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %35 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %37 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %40 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %42 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %45 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %47 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %50 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %52 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %55 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %57 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %56, i32 0, i32 3
  %58 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %59 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @os_memcpy(i32* %57, i32* %60, i32 4)
  %62 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %63 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %66 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @os_memdup(i32* %64, i32 %67)
  %69 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %70 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %72 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %25
  %76 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %77 = call i32 @radius_das_deinit(%struct.radius_das_data* %76)
  store %struct.radius_das_data* null, %struct.radius_das_data** %2, align 8
  br label %112

78:                                               ; preds = %25
  %79 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %80 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %83 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.radius_das_conf*, %struct.radius_das_conf** %3, align 8
  %85 = getelementptr inbounds %struct.radius_das_conf, %struct.radius_das_conf* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @radius_das_open_socket(i64 %86)
  %88 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %89 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %91 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %78
  %95 = load i32, i32* @MSG_ERROR, align 4
  %96 = call i32 @wpa_printf(i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %98 = call i32 @radius_das_deinit(%struct.radius_das_data* %97)
  store %struct.radius_das_data* null, %struct.radius_das_data** %2, align 8
  br label %112

99:                                               ; preds = %78
  %100 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %101 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @radius_das_receive, align 4
  %104 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %105 = call i64 @eloop_register_read_sock(i64 %102, i32 %103, %struct.radius_das_data* %104, i32* null)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  %109 = call i32 @radius_das_deinit(%struct.radius_das_data* %108)
  store %struct.radius_das_data* null, %struct.radius_das_data** %2, align 8
  br label %112

110:                                              ; preds = %99
  %111 = load %struct.radius_das_data*, %struct.radius_das_data** %4, align 8
  store %struct.radius_das_data* %111, %struct.radius_das_data** %2, align 8
  br label %112

112:                                              ; preds = %110, %107, %94, %75, %24, %19
  %113 = load %struct.radius_das_data*, %struct.radius_das_data** %2, align 8
  ret %struct.radius_das_data* %113
}

declare dso_local %struct.radius_das_data* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32* @os_memdup(i32*, i32) #1

declare dso_local i32 @radius_das_deinit(%struct.radius_das_data*) #1

declare dso_local i64 @radius_das_open_socket(i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eloop_register_read_sock(i64, i32, %struct.radius_das_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
