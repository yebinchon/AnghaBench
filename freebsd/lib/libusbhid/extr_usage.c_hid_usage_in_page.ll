; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusbhid/extr_usage.c_hid_usage_in_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusbhid/extr_usage.c_hid_usage_in_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i8* }

@hid_usage_in_page.b = internal global [100 x i8] zeroinitializer, align 16
@npages = common dso_local global i32 0, align 4
@pages = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hid_usage_in_page(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @HID_PAGE(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @HID_USAGE(i32 %11)
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @npages, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pages, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %31

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %13

31:                                               ; preds = %26, %13
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @npages, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %96

36:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %92, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pages, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %38, %44
  br i1 %45, label %46, label %95

46:                                               ; preds = %37
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pages, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %75

60:                                               ; preds = %46
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pages, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @fmtcheck(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hid_usage_in_page.b, i64 0, i64 0), i8* %72, i32 %73)
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hid_usage_in_page.b, i64 0, i64 0), i8** %2, align 8
  br label %99

75:                                               ; preds = %46
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pages, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %2, align 8
  br label %99

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %37

95:                                               ; preds = %37
  br label %96

96:                                               ; preds = %95, %35
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hid_usage_in_page.b, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hid_usage_in_page.b, i64 0, i64 0), i8** %2, align 8
  br label %99

99:                                               ; preds = %96, %79, %60
  %100 = load i8*, i8** %2, align 8
  ret i8* %100
}

declare dso_local i32 @HID_PAGE(i32) #1

declare dso_local i32 @HID_USAGE(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @fmtcheck(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
