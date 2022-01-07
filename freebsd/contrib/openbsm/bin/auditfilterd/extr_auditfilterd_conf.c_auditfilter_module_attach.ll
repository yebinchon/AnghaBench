; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditfilterd/extr_auditfilterd_conf.c_auditfilter_module_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditfilterd/extr_auditfilterd_conf.c_auditfilter_module_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auditfilter_module = type { i64 (%struct.auditfilter_module*, i32, i32)*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32 }

@RTLD_NOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"auditfilter_module_attach: %s: %s\00", align 1
@AUDIT_FILTER_ATTACH_STRING = common dso_local global i32 0, align 4
@AUDIT_FILTER_REINIT_STRING = common dso_local global i32 0, align 4
@AUDIT_FILTER_RECORD_STRING = common dso_local global i32 0, align 4
@AUDIT_FILTER_RAWRECORD_STRING = common dso_local global i32 0, align 4
@AUDIT_FILTER_DETACH_STRING = common dso_local global i32 0, align 4
@AUDIT_FILTER_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"auditfilter_module_attach: %s: failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auditfilter_module*)* @auditfilter_module_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auditfilter_module_attach(%struct.auditfilter_module* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.auditfilter_module*, align 8
  store %struct.auditfilter_module* %0, %struct.auditfilter_module** %3, align 8
  %4 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %5 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @RTLD_NOW, align 4
  %8 = call i32* @dlopen(i32 %6, i32 %7)
  %9 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %10 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %9, i32 0, i32 6
  store i32* %8, i32** %10, align 8
  %11 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %12 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %17 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (...) @dlerror()
  %20 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  store i32 -1, i32* %2, align 4
  br label %105

21:                                               ; preds = %1
  %22 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %23 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @AUDIT_FILTER_ATTACH_STRING, align 4
  %26 = call i8* @dlsym(i32* %24, i32 %25)
  %27 = bitcast i8* %26 to i64 (%struct.auditfilter_module*, i32, i32)*
  %28 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %29 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %28, i32 0, i32 0
  store i64 (%struct.auditfilter_module*, i32, i32)* %27, i64 (%struct.auditfilter_module*, i32, i32)** %29, align 8
  %30 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %31 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @AUDIT_FILTER_REINIT_STRING, align 4
  %34 = call i8* @dlsym(i32* %32, i32 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %37 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %39 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @AUDIT_FILTER_RECORD_STRING, align 4
  %42 = call i8* @dlsym(i32* %40, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %45 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %47 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @AUDIT_FILTER_RAWRECORD_STRING, align 4
  %50 = call i8* @dlsym(i32* %48, i32 %49)
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %53 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %55 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @AUDIT_FILTER_DETACH_STRING, align 4
  %58 = call i8* @dlsym(i32* %56, i32 %57)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %61 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %63 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %62, i32 0, i32 0
  %64 = load i64 (%struct.auditfilter_module*, i32, i32)*, i64 (%struct.auditfilter_module*, i32, i32)** %63, align 8
  %65 = icmp ne i64 (%struct.auditfilter_module*, i32, i32)* %64, null
  br i1 %65, label %66, label %104

66:                                               ; preds = %21
  %67 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %68 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %67, i32 0, i32 0
  %69 = load i64 (%struct.auditfilter_module*, i32, i32)*, i64 (%struct.auditfilter_module*, i32, i32)** %68, align 8
  %70 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %71 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %72 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %75 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = call i64 %69(%struct.auditfilter_module* %70, i32 %73, i32 %76)
  %78 = load i64, i64* @AUDIT_FILTER_SUCCESS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %66
  %81 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %82 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %86 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @dlclose(i32* %87)
  %89 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %90 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %89, i32 0, i32 6
  store i32* null, i32** %90, align 8
  %91 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %92 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %91, i32 0, i32 5
  store i32* null, i32** %92, align 8
  %93 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %94 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %93, i32 0, i32 0
  store i64 (%struct.auditfilter_module*, i32, i32)* null, i64 (%struct.auditfilter_module*, i32, i32)** %94, align 8
  %95 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %96 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %95, i32 0, i32 4
  store i32* null, i32** %96, align 8
  %97 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %98 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %97, i32 0, i32 3
  store i32* null, i32** %98, align 8
  %99 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %100 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %99, i32 0, i32 2
  store i32* null, i32** %100, align 8
  %101 = load %struct.auditfilter_module*, %struct.auditfilter_module** %3, align 8
  %102 = getelementptr inbounds %struct.auditfilter_module, %struct.auditfilter_module* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  store i32 -1, i32* %2, align 4
  br label %105

103:                                              ; preds = %66
  br label %104

104:                                              ; preds = %103, %21
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %80, %15
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32* @dlopen(i32, i32) #1

declare dso_local i32 @warnx(i8*, i32, ...) #1

declare dso_local i32 @dlerror(...) #1

declare dso_local i8* @dlsym(i32*, i32) #1

declare dso_local i32 @dlclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
