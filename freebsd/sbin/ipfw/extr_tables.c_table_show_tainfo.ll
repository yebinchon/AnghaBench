; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_table_show_tainfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_table_show_tainfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ta_cldata = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c" %salgorithm %s info\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"  size: %u items: %u itemsize: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"  size: %u items: %u itemsize4: %u itemsize6: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  items: %u itemsize: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"  items: %u itemsize4: %u itemsize6: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c" algo class: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ta_cldata*, i8*, i8*)* @table_show_tainfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @table_show_tainfo(i32* %0, %struct.ta_cldata* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ta_cldata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ta_cldata* %1, %struct.ta_cldata** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %10 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %80 [
    i32 129, label %12
    i32 130, label %12
    i32 128, label %49
  ]

12:                                               ; preds = %4, %4
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14)
  %16 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %17 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %20 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %12
  %24 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %25 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %28 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %31 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29, i32 %32)
  br label %48

34:                                               ; preds = %12
  %35 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %36 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %39 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %42 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %45 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %34, %23
  br label %83

49:                                               ; preds = %4
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %51)
  %53 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %54 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %57 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %62 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %65 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %66)
  br label %79

68:                                               ; preds = %49
  %69 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %70 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %73 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ta_cldata*, %struct.ta_cldata** %6, align 8
  %76 = getelementptr inbounds %struct.ta_cldata, %struct.ta_cldata* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %68, %60
  br label %83

80:                                               ; preds = %4
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %79, %48
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
