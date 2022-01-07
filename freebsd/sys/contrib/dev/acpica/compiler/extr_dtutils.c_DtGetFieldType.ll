; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtutils.c_DtGetFieldType.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtutils.c_DtGetFieldType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@DT_FLAG = common dso_local global i32 0, align 4
@DT_FIELD_TYPE_FLAGS_INTEGER = common dso_local global i32 0, align 4
@DT_FIELD_TYPE_FLAG = common dso_local global i32 0, align 4
@DT_FIELD_TYPE_STRING = common dso_local global i32 0, align 4
@DT_FIELD_TYPE_BUFFER = common dso_local global i32 0, align 4
@DT_FIELD_TYPE_INLINE_SUBTABLE = common dso_local global i32 0, align 4
@DT_FIELD_TYPE_UNICODE = common dso_local global i32 0, align 4
@DT_FIELD_TYPE_UUID = common dso_local global i32 0, align 4
@DT_FIELD_TYPE_DEVICE_PATH = common dso_local global i32 0, align 4
@DT_FIELD_TYPE_LABEL = common dso_local global i32 0, align 4
@DT_FIELD_TYPE_INTEGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DtGetFieldType(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DT_FLAG, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @DT_FIELD_TYPE_FLAGS_INTEGER, align 4
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %33 [
    i32 157, label %17
    i32 156, label %17
    i32 155, label %17
    i32 154, label %17
    i32 153, label %17
    i32 152, label %17
    i32 151, label %17
    i32 150, label %17
    i32 149, label %17
    i32 148, label %17
    i32 146, label %17
    i32 145, label %17
    i32 144, label %17
    i32 142, label %17
    i32 141, label %17
    i32 143, label %17
    i32 147, label %17
    i32 136, label %19
    i32 131, label %19
    i32 135, label %19
    i32 134, label %19
    i32 130, label %19
    i32 159, label %21
    i32 132, label %21
    i32 160, label %21
    i32 164, label %21
    i32 163, label %21
    i32 161, label %21
    i32 162, label %21
    i32 133, label %21
    i32 140, label %23
    i32 139, label %23
    i32 138, label %23
    i32 129, label %25
    i32 128, label %27
    i32 158, label %29
    i32 137, label %31
  ]

17:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %18 = load i32, i32* @DT_FIELD_TYPE_FLAG, align 4
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %13, %13, %13, %13, %13
  %20 = load i32, i32* @DT_FIELD_TYPE_STRING, align 4
  store i32 %20, i32* %4, align 4
  br label %35

21:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  %22 = load i32, i32* @DT_FIELD_TYPE_BUFFER, align 4
  store i32 %22, i32* %4, align 4
  br label %35

23:                                               ; preds = %13, %13, %13
  %24 = load i32, i32* @DT_FIELD_TYPE_INLINE_SUBTABLE, align 4
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %13
  %26 = load i32, i32* @DT_FIELD_TYPE_UNICODE, align 4
  store i32 %26, i32* %4, align 4
  br label %35

27:                                               ; preds = %13
  %28 = load i32, i32* @DT_FIELD_TYPE_UUID, align 4
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %13
  %30 = load i32, i32* @DT_FIELD_TYPE_DEVICE_PATH, align 4
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %13
  %32 = load i32, i32* @DT_FIELD_TYPE_LABEL, align 4
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %13
  %34 = load i32, i32* @DT_FIELD_TYPE_INTEGER, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %31, %29, %27, %25, %23, %21, %19, %17
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
