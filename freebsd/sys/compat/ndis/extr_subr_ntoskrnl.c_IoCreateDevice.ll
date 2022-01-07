; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_IoCreateDevice.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_IoCreateDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_10__*, i32*, i32, i32*, i32*, i32, i64, i32*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, i64 }

@NonPagedPool = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@EVENT_TYPE_SYNC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IoCreateDevice(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_10__** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__**, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_10__** %6, %struct.TYPE_10__*** %15, align 8
  %17 = load i32, i32* @NonPagedPool, align 4
  %18 = call i8* @ExAllocatePoolWithTag(i32 %17, i32 112, i32 0)
  %19 = bitcast i8* %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %16, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %23, i32* %8, align 4
  br label %153

24:                                               ; preds = %7
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 16
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 15
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 14
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %24
  %38 = load i32, i32* @NonPagedPool, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i8* @ExAllocatePoolWithTag(i32 %38, i32 %39, i32 0)
  %41 = bitcast i8* %40 to %struct.TYPE_10__*
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = icmp eq %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %50 = call i32 @ExFreePool(%struct.TYPE_10__* %49)
  %51 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %51, i32* %8, align 4
  br label %153

52:                                               ; preds = %37
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @bzero(%struct.TYPE_10__* %55, i32 %56)
  br label %61

58:                                               ; preds = %24
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %60, align 8
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 112, %63
  %65 = trunc i64 %64 to i32
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 13
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 12
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 6
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %73, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 11
  store i32* null, i32** %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 10
  %88 = load i32, i32* @EVENT_TYPE_SYNC, align 4
  %89 = load i32, i32* @TRUE, align 4
  %90 = call i32 @KeInitializeEvent(i32* %87, i32 %88, i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 9
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* @NonPagedPool, align 4
  %94 = call i8* @ExAllocatePoolWithTag(i32 %93, i32 4, i32 0)
  %95 = bitcast i8* %94 to %struct.TYPE_8__*
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 7
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %97, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 7
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = icmp eq %struct.TYPE_8__* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %61
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = icmp ne %struct.TYPE_10__* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = call i32 @ExFreePool(%struct.TYPE_10__* %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %114 = call i32 @ExFreePool(%struct.TYPE_10__* %113)
  %115 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %115, i32* %8, align 4
  br label %153

116:                                              ; preds = %61
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 4, i32* %124, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 7
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = icmp eq %struct.TYPE_10__* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %116
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %137, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 6
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %139, align 8
  br label %149

140:                                              ; preds = %116
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 6
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %145, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  store %struct.TYPE_10__* %146, %struct.TYPE_10__** %148, align 8
  br label %149

149:                                              ; preds = %140, %134
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %151 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %15, align 8
  store %struct.TYPE_10__* %150, %struct.TYPE_10__** %151, align 8
  %152 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %149, %112, %48, %22
  %154 = load i32, i32* %8, align 4
  ret i32 %154
}

declare dso_local i8* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_10__*) #1

declare dso_local i32 @bzero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
