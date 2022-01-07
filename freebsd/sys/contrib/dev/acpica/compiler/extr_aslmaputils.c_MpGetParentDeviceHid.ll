; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmaputils.c_MpGetParentDeviceHid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmaputils.c_MpGetParentDeviceHid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32*, %struct.TYPE_5__* }

@AML_DEVICE_OP = common dso_local global i64 0, align 8
@AML_SCOPE_OP = common dso_local global i64 0, align 8
@ASL_FILE_MAP_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c" No_Parent_Device \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" No_Device_Node \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"-No HID-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MpGetParentDeviceHid(%struct.TYPE_5__* %0, i32** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8** %2, i8*** %7, align 8
  br label %9

9:                                                ; preds = %28, %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AML_DEVICE_OP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AML_SCOPE_OP, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %19, %12, %9
  %27 = phi i1 [ false, %12 ], [ false, %9 ], [ %25, %19 ]
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %5, align 8
  br label %9

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %38 = call i32 @FlPrintFile(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %55

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %48 = call i32 @FlPrintFile(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %55

49:                                               ; preds = %39
  %50 = load i32*, i32** %8, align 8
  %51 = call i8* @AcpiNsGetExternalPathname(i32* %50)
  %52 = load i8**, i8*** %7, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i8* @MpGetHidValue(i32* %53)
  store i8* %54, i8** %4, align 8
  br label %56

55:                                               ; preds = %46, %36
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i8*, i8** %4, align 8
  ret i8* %57
}

declare dso_local i32 @FlPrintFile(i32, i8*) #1

declare dso_local i8* @AcpiNsGetExternalPathname(i32*) #1

declare dso_local i8* @MpGetHidValue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
