; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_findservice.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_findservice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.valuelist = type { i32, %struct.valuelist*, %struct.valuelist*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.valuelist**)* @findservice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findservice(i8* %0, %struct.valuelist** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.valuelist**, align 8
  %6 = alloca %struct.valuelist*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.valuelist** %1, %struct.valuelist*** %5, align 8
  %8 = load %struct.valuelist**, %struct.valuelist*** %5, align 8
  %9 = load %struct.valuelist*, %struct.valuelist** %8, align 8
  store %struct.valuelist* %9, %struct.valuelist** %6, align 8
  br label %10

10:                                               ; preds = %61, %2
  %11 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %12 = icmp ne %struct.valuelist* %11, null
  br i1 %12, label %13, label %65

13:                                               ; preds = %10
  %14 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %15 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcasecmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %13
  %21 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %22 = load %struct.valuelist**, %struct.valuelist*** %5, align 8
  %23 = load %struct.valuelist*, %struct.valuelist** %22, align 8
  %24 = icmp ne %struct.valuelist* %21, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %20
  %26 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %27 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %26, i32 0, i32 1
  %28 = load %struct.valuelist*, %struct.valuelist** %27, align 8
  %29 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %30 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %29, i32 0, i32 2
  %31 = load %struct.valuelist*, %struct.valuelist** %30, align 8
  %32 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %31, i32 0, i32 1
  store %struct.valuelist* %28, %struct.valuelist** %32, align 8
  %33 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %34 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %33, i32 0, i32 1
  %35 = load %struct.valuelist*, %struct.valuelist** %34, align 8
  %36 = icmp ne %struct.valuelist* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %39 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %38, i32 0, i32 2
  %40 = load %struct.valuelist*, %struct.valuelist** %39, align 8
  %41 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %42 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %41, i32 0, i32 1
  %43 = load %struct.valuelist*, %struct.valuelist** %42, align 8
  %44 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %43, i32 0, i32 2
  store %struct.valuelist* %40, %struct.valuelist** %44, align 8
  br label %45

45:                                               ; preds = %37, %25
  %46 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %47 = load %struct.valuelist**, %struct.valuelist*** %5, align 8
  %48 = load %struct.valuelist*, %struct.valuelist** %47, align 8
  %49 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %48, i32 0, i32 2
  store %struct.valuelist* %46, %struct.valuelist** %49, align 8
  %50 = load %struct.valuelist**, %struct.valuelist*** %5, align 8
  %51 = load %struct.valuelist*, %struct.valuelist** %50, align 8
  %52 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %53 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %52, i32 0, i32 1
  store %struct.valuelist* %51, %struct.valuelist** %53, align 8
  %54 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %55 = load %struct.valuelist**, %struct.valuelist*** %5, align 8
  store %struct.valuelist* %54, %struct.valuelist** %55, align 8
  br label %56

56:                                               ; preds = %45, %20
  %57 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %58 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %3, align 4
  br label %75

60:                                               ; preds = %13
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  %63 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %62, i32 0, i32 1
  %64 = load %struct.valuelist*, %struct.valuelist** %63, align 8
  store %struct.valuelist* %64, %struct.valuelist** %6, align 8
  br label %10

65:                                               ; preds = %10
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @sscanf(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %7)
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %65
  store i32 -1, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %56
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
