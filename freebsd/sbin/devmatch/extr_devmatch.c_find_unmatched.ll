; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_find_unmatched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_find_unmatched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devinfo_dev = type { i8*, i32, i8*, i8*, i32 }

@all_flag = common dso_local global i32 0, align 4
@DF_ENABLED = common dso_local global i32 0, align 4
@DF_ATTACHED_ONCE = common dso_local global i32 0, align 4
@verbose_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Searching %s %s bus at %s for pnpinfo %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devinfo_dev*, i8*)* @find_unmatched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_unmatched(%struct.devinfo_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.devinfo_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.devinfo_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.devinfo_dev* %0, %struct.devinfo_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @all_flag, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %13 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %93

20:                                               ; preds = %11, %8
  %21 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %22 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DF_ENABLED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %93

28:                                               ; preds = %20
  %29 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %30 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DF_ATTACHED_ONCE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %93

36:                                               ; preds = %28
  %37 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %38 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.devinfo_dev* @devinfo_handle_to_device(i32 %39)
  store %struct.devinfo_dev* %40, %struct.devinfo_dev** %5, align 8
  %41 = load %struct.devinfo_dev*, %struct.devinfo_dev** %5, align 8
  %42 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strdup(i8* %43)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %62, %36
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = icmp uge i8* %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @isdigit(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i1 [ false, %51 ], [ %59, %55 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %64, i8** %7, align 8
  br label %51

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %7, align 8
  store i8 0, i8* %67, align 1
  %68 = load i64, i64* @verbose_flag, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %72 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %76 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %79 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %73, i8* %74, i8* %77, i8* %80)
  br label %82

82:                                               ; preds = %70, %65
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %85 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %88 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @search_hints(i8* %83, i8* %86, i8* %89)
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @free(i8* %91)
  br label %93

93:                                               ; preds = %82, %35, %27, %19
  %94 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @devinfo_foreach_device_child(%struct.devinfo_dev* %94, i32 (%struct.devinfo_dev*, i8*)* @find_unmatched, i8* %95)
  ret i32 %96
}

declare dso_local %struct.devinfo_dev* @devinfo_handle_to_device(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @search_hints(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @devinfo_foreach_device_child(%struct.devinfo_dev*, i32 (%struct.devinfo_dev*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
