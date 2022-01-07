; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.wps_context*, i32, i32 }
%struct.wps_context = type { i32 }
%struct.wps_registrar_config = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wps_registrar* @wps_registrar_init(%struct.wps_context* %0, %struct.wps_registrar_config* %1) #0 {
  %3 = alloca %struct.wps_registrar*, align 8
  %4 = alloca %struct.wps_context*, align 8
  %5 = alloca %struct.wps_registrar_config*, align 8
  %6 = alloca %struct.wps_registrar*, align 8
  store %struct.wps_context* %0, %struct.wps_context** %4, align 8
  store %struct.wps_registrar_config* %1, %struct.wps_registrar_config** %5, align 8
  %7 = call %struct.wps_registrar* @os_zalloc(i32 104)
  store %struct.wps_registrar* %7, %struct.wps_registrar** %6, align 8
  %8 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %9 = icmp eq %struct.wps_registrar* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.wps_registrar* null, %struct.wps_registrar** %3, align 8
  br label %163

11:                                               ; preds = %2
  %12 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %13 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %12, i32 0, i32 21
  %14 = call i32 @dl_list_init(i32* %13)
  %15 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %16 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %15, i32 0, i32 20
  %17 = call i32 @dl_list_init(i32* %16)
  %18 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %19 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %20 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %19, i32 0, i32 19
  store %struct.wps_context* %18, %struct.wps_context** %20, align 8
  %21 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %22 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %21, i32 0, i32 17
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %25 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %24, i32 0, i32 18
  store i32 %23, i32* %25, align 4
  %26 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %27 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %26, i32 0, i32 16
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %30 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %29, i32 0, i32 17
  store i32 %28, i32* %30, align 8
  %31 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %32 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %35 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %34, i32 0, i32 16
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %37 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %40 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %39, i32 0, i32 15
  store i32 %38, i32* %40, align 8
  %41 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %42 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %41, i32 0, i32 13
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %45 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %44, i32 0, i32 14
  store i32 %43, i32* %45, align 4
  %46 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %47 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %50 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %49, i32 0, i32 13
  store i32 %48, i32* %50, align 8
  %51 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %52 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %55 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %54, i32 0, i32 12
  store i32 %53, i32* %55, align 4
  %56 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %57 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %60 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %59, i32 0, i32 11
  store i32 %58, i32* %60, align 8
  %61 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %62 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %11
  %66 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %67 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %66, i32 0, i32 9
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %70 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = call i32* @wpabuf_alloc_copy(i64 %68, i32 %71)
  %73 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %74 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %73, i32 0, i32 10
  store i32* %72, i32** %74, align 8
  %75 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %76 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %75, i32 0, i32 10
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %81 = call i32 @os_free(%struct.wps_registrar* %80)
  store %struct.wps_registrar* null, %struct.wps_registrar** %3, align 8
  br label %163

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %11
  %84 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %85 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %88 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 4
  %89 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %90 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %89, i32 0, i32 0
  store i32 -1, i32* %90, align 8
  %91 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %92 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %91, i32 0, i32 1
  store i32 -1, i32* %92, align 4
  %93 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %94 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %97 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %99 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %102 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %104 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %107 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %109 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %83
  %113 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %114 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %117 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %120 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @os_memcpy(i32 %115, i32 %118, i32 %121)
  %123 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %124 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %127 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %112, %83
  %129 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %130 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %128
  %134 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %135 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %138 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @os_memdup(i64 %136, i32 %139)
  %141 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %142 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  %143 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %144 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %133
  %148 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %149 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %152 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %147, %133
  br label %154

154:                                              ; preds = %153, %128
  %155 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %156 = call i64 @wps_set_ie(%struct.wps_registrar* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %160 = call i32 @wps_registrar_deinit(%struct.wps_registrar* %159)
  store %struct.wps_registrar* null, %struct.wps_registrar** %3, align 8
  br label %163

161:                                              ; preds = %154
  %162 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  store %struct.wps_registrar* %162, %struct.wps_registrar** %3, align 8
  br label %163

163:                                              ; preds = %161, %158, %79, %10
  %164 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  ret %struct.wps_registrar* %164
}

declare dso_local %struct.wps_registrar* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

declare dso_local i32* @wpabuf_alloc_copy(i64, i32) #1

declare dso_local i32 @os_free(%struct.wps_registrar*) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i64 @os_memdup(i64, i32) #1

declare dso_local i64 @wps_set_ie(%struct.wps_registrar*) #1

declare dso_local i32 @wps_registrar_deinit(%struct.wps_registrar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
