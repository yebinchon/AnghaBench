; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_lagg.c_ifconfig_lagg_get_lagg_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_lagg.c_ifconfig_lagg_get_lagg_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ifconfig_lagg_status = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i32 }
%struct._ifconfig_lagg_status = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, i32, %struct.ifconfig_lagg_status }

@OTHER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@SIOCGLAGGOPTS = common dso_local global i32 0, align 4
@SIOCGLAGGFLAGS = common dso_local global i32 0, align 4
@SIOCGLAGG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_lagg_get_lagg_status(%struct.TYPE_7__* %0, i8* %1, %struct.ifconfig_lagg_status** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ifconfig_lagg_status**, align 8
  %8 = alloca %struct._ifconfig_lagg_status*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ifconfig_lagg_status** %2, %struct.ifconfig_lagg_status*** %7, align 8
  %9 = call %struct._ifconfig_lagg_status* @calloc(i32 1, i32 128)
  store %struct._ifconfig_lagg_status* %9, %struct._ifconfig_lagg_status** %8, align 8
  %10 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %11 = icmp eq %struct._ifconfig_lagg_status* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32, i32* @OTHER, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  store i32 -1, i32* %4, align 4
  br label %96

21:                                               ; preds = %3
  %22 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %23 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %22, i32 0, i32 0
  %24 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %25 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.ifconfig_lagg_status, %struct.ifconfig_lagg_status* %25, i32 0, i32 2
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %26, align 8
  %27 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %28 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %27, i32 0, i32 2
  %29 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %30 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.ifconfig_lagg_status, %struct.ifconfig_lagg_status* %30, i32 0, i32 1
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %31, align 8
  %32 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %33 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %32, i32 0, i32 1
  %34 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %35 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.ifconfig_lagg_status, %struct.ifconfig_lagg_status* %35, i32 0, i32 0
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %36, align 8
  %37 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %38 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %37, i32 0, i32 4
  %39 = load %struct.ifconfig_lagg_status**, %struct.ifconfig_lagg_status*** %7, align 8
  store %struct.ifconfig_lagg_status* %38, %struct.ifconfig_lagg_status** %39, align 8
  %40 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %41 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %44 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 8
  %46 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %47 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 4, i32* %48, align 8
  %49 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %50 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strlcpy(i32 %52, i8* %53, i32 4)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = load i32, i32* @AF_LOCAL, align 4
  %57 = load i32, i32* @SIOCGLAGGOPTS, align 4
  %58 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %59 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %58, i32 0, i32 2
  %60 = call i64 @ifconfig_ioctlwrap(%struct.TYPE_7__* %55, i32 %56, i32 %57, %struct.TYPE_8__* %59)
  %61 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %62 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @strlcpy(i32 %64, i8* %65, i32 4)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = load i32, i32* @AF_LOCAL, align 4
  %69 = load i32, i32* @SIOCGLAGGFLAGS, align 4
  %70 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %71 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %70, i32 0, i32 1
  %72 = call i64 @ifconfig_ioctlwrap(%struct.TYPE_7__* %67, i32 %68, i32 %69, %struct.TYPE_8__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %21
  %75 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %76 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %21
  %79 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %80 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @strlcpy(i32 %82, i8* %83, i32 4)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = load i32, i32* @AF_LOCAL, align 4
  %87 = load i32, i32* @SIOCGLAGG, align 4
  %88 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %89 = getelementptr inbounds %struct._ifconfig_lagg_status, %struct._ifconfig_lagg_status* %88, i32 0, i32 0
  %90 = call i64 @ifconfig_ioctlwrap(%struct.TYPE_7__* %85, i32 %86, i32 %87, %struct.TYPE_8__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %78
  %93 = load %struct._ifconfig_lagg_status*, %struct._ifconfig_lagg_status** %8, align 8
  %94 = call i32 @free(%struct._ifconfig_lagg_status* %93)
  store i32 -1, i32* %4, align 4
  br label %96

95:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %92, %12
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct._ifconfig_lagg_status* @calloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ifconfig_ioctlwrap(%struct.TYPE_7__*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct._ifconfig_lagg_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
