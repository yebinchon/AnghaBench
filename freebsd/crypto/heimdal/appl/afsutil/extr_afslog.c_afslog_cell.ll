; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_afslog.c_afslog_cell.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_afslog.c_afslog_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cell_list = type { i8*, %struct.cell_list* }

@.str = private unnamed_addr constant [29 x i8] c"No cell matching \22%s\22 found.\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Cell \22%s\22 expanded to \22%s\22\00", align 1
@cell_list = common dso_local global %struct.cell_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @afslog_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afslog_cell(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cell_list*, align 8
  %7 = alloca %struct.cell_list**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @expand_cell_name(i8* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %3, align 4
  br label %75

20:                                               ; preds = %12
  %21 = load i64, i64* @verbose, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strcmp(i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %23, %20
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.cell_list*, %struct.cell_list** @cell_list, align 8
  store %struct.cell_list* %34, %struct.cell_list** %6, align 8
  store %struct.cell_list** @cell_list, %struct.cell_list*** %7, align 8
  br label %35

35:                                               ; preds = %47, %33
  %36 = load %struct.cell_list*, %struct.cell_list** %6, align 8
  %37 = icmp ne %struct.cell_list* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.cell_list*, %struct.cell_list** %6, align 8
  %40 = getelementptr inbounds %struct.cell_list, %struct.cell_list* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strcmp(i8* %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %75

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.cell_list*, %struct.cell_list** %6, align 8
  %49 = getelementptr inbounds %struct.cell_list, %struct.cell_list* %48, i32 0, i32 1
  store %struct.cell_list** %49, %struct.cell_list*** %7, align 8
  %50 = load %struct.cell_list*, %struct.cell_list** %6, align 8
  %51 = getelementptr inbounds %struct.cell_list, %struct.cell_list* %50, i32 0, i32 1
  %52 = load %struct.cell_list*, %struct.cell_list** %51, align 8
  store %struct.cell_list* %52, %struct.cell_list** %6, align 8
  br label %35

53:                                               ; preds = %35
  %54 = call %struct.cell_list* @malloc(i32 16)
  store %struct.cell_list* %54, %struct.cell_list** %6, align 8
  %55 = load %struct.cell_list*, %struct.cell_list** %6, align 8
  %56 = icmp eq %struct.cell_list* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %75

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @strdup(i8* %59)
  %61 = load %struct.cell_list*, %struct.cell_list** %6, align 8
  %62 = getelementptr inbounds %struct.cell_list, %struct.cell_list* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.cell_list*, %struct.cell_list** %6, align 8
  %64 = getelementptr inbounds %struct.cell_list, %struct.cell_list* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.cell_list*, %struct.cell_list** %6, align 8
  %69 = call i32 @free(%struct.cell_list* %68)
  store i32 -1, i32* %3, align 4
  br label %75

70:                                               ; preds = %58
  %71 = load %struct.cell_list*, %struct.cell_list** %6, align 8
  %72 = getelementptr inbounds %struct.cell_list, %struct.cell_list* %71, i32 0, i32 1
  store %struct.cell_list* null, %struct.cell_list** %72, align 8
  %73 = load %struct.cell_list*, %struct.cell_list** %6, align 8
  %74 = load %struct.cell_list**, %struct.cell_list*** %7, align 8
  store %struct.cell_list* %73, %struct.cell_list** %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %67, %57, %45, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i8* @expand_cell_name(i8*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.cell_list* @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.cell_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
