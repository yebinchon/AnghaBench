; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_media.c_ifconfig_media_get_mediareq.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_media.c_ifconfig_media_get_mediareq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.ifmediareq = type { i32, i32*, i32 }
%struct._ifconfig_media_status = type { %struct.ifmediareq, i32* }

@SIOCGIFXMEDIA = common dso_local global i64 0, align 8
@OTHER = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i8* null, align 8
@AF_LOCAL = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i64 0, align 8
@OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_media_get_mediareq(%struct.TYPE_6__* %0, i8* %1, %struct.ifmediareq** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ifmediareq**, align 8
  %8 = alloca %struct._ifconfig_media_status*, align 8
  %9 = alloca %struct._ifconfig_media_status*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ifmediareq** %2, %struct.ifmediareq*** %7, align 8
  %11 = load i64, i64* @SIOCGIFXMEDIA, align 8
  store i64 %11, i64* %10, align 8
  %12 = load %struct.ifmediareq**, %struct.ifmediareq*** %7, align 8
  store %struct.ifmediareq* null, %struct.ifmediareq** %12, align 8
  %13 = call %struct._ifconfig_media_status* @calloc(i32 1, i32 32)
  store %struct._ifconfig_media_status* %13, %struct._ifconfig_media_status** %8, align 8
  %14 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %8, align 8
  %15 = icmp eq %struct._ifconfig_media_status* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i8*, i8** @OTHER, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load i8*, i8** @ENOMEM, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  store i32 -1, i32* %4, align 4
  br label %114

25:                                               ; preds = %3
  %26 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %8, align 8
  %27 = call i32 @memset(%struct._ifconfig_media_status* %26, i32 0, i32 32)
  %28 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %8, align 8
  %29 = getelementptr inbounds %struct._ifconfig_media_status, %struct._ifconfig_media_status* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strlcpy(i32 %31, i8* %32, i32 4)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = load i32, i32* @AF_LOCAL, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %8, align 8
  %38 = getelementptr inbounds %struct._ifconfig_media_status, %struct._ifconfig_media_status* %37, i32 0, i32 0
  %39 = call i64 @ifconfig_ioctlwrap(%struct.TYPE_6__* %34, i32 %35, i64 %36, %struct.ifmediareq* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %25
  %42 = load i64, i64* @SIOCGIFMEDIA, align 8
  store i64 %42, i64* %10, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = load i32, i32* @AF_LOCAL, align 4
  %45 = load i64, i64* %10, align 8
  %46 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %8, align 8
  %47 = getelementptr inbounds %struct._ifconfig_media_status, %struct._ifconfig_media_status* %46, i32 0, i32 0
  %48 = call i64 @ifconfig_ioctlwrap(%struct.TYPE_6__* %43, i32 %44, i64 %45, %struct.ifmediareq* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load i8*, i8** @OK, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %8, align 8
  %56 = call i32 @free(%struct._ifconfig_media_status* %55)
  store i32 -1, i32* %4, align 4
  br label %114

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %25
  %59 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %8, align 8
  %60 = getelementptr inbounds %struct._ifconfig_media_status, %struct._ifconfig_media_status* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %8, align 8
  %66 = getelementptr inbounds %struct._ifconfig_media_status, %struct._ifconfig_media_status* %65, i32 0, i32 0
  %67 = load %struct.ifmediareq**, %struct.ifmediareq*** %7, align 8
  store %struct.ifmediareq* %66, %struct.ifmediareq** %67, align 8
  store i32 0, i32* %4, align 4
  br label %114

68:                                               ; preds = %58
  %69 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %8, align 8
  %70 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %8, align 8
  %71 = getelementptr inbounds %struct._ifconfig_media_status, %struct._ifconfig_media_status* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = add i64 32, %75
  %77 = trunc i64 %76 to i32
  %78 = call %struct._ifconfig_media_status* @realloc(%struct._ifconfig_media_status* %69, i32 %77)
  store %struct._ifconfig_media_status* %78, %struct._ifconfig_media_status** %9, align 8
  %79 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %9, align 8
  %80 = icmp eq %struct._ifconfig_media_status* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %68
  %82 = load i8*, i8** @OTHER, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  %86 = load i8*, i8** @ENOMEM, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  %90 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %8, align 8
  %91 = call i32 @free(%struct._ifconfig_media_status* %90)
  store i32 -1, i32* %4, align 4
  br label %114

92:                                               ; preds = %68
  %93 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %9, align 8
  %94 = getelementptr inbounds %struct._ifconfig_media_status, %struct._ifconfig_media_status* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %9, align 8
  %98 = getelementptr inbounds %struct._ifconfig_media_status, %struct._ifconfig_media_status* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %98, i32 0, i32 1
  store i32* %96, i32** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = load i32, i32* @AF_LOCAL, align 4
  %102 = load i64, i64* %10, align 8
  %103 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %9, align 8
  %104 = getelementptr inbounds %struct._ifconfig_media_status, %struct._ifconfig_media_status* %103, i32 0, i32 0
  %105 = call i64 @ifconfig_ioctlwrap(%struct.TYPE_6__* %100, i32 %101, i64 %102, %struct.ifmediareq* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %92
  %108 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %9, align 8
  %109 = call i32 @free(%struct._ifconfig_media_status* %108)
  store i32 -1, i32* %4, align 4
  br label %114

110:                                              ; preds = %92
  %111 = load %struct._ifconfig_media_status*, %struct._ifconfig_media_status** %9, align 8
  %112 = getelementptr inbounds %struct._ifconfig_media_status, %struct._ifconfig_media_status* %111, i32 0, i32 0
  %113 = load %struct.ifmediareq**, %struct.ifmediareq*** %7, align 8
  store %struct.ifmediareq* %112, %struct.ifmediareq** %113, align 8
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %110, %107, %81, %64, %50, %16
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct._ifconfig_media_status* @calloc(i32, i32) #1

declare dso_local i32 @memset(%struct._ifconfig_media_status*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ifconfig_ioctlwrap(%struct.TYPE_6__*, i32, i64, %struct.ifmediareq*) #1

declare dso_local i32 @free(%struct._ifconfig_media_status*) #1

declare dso_local %struct._ifconfig_media_status* @realloc(%struct._ifconfig_media_status*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
