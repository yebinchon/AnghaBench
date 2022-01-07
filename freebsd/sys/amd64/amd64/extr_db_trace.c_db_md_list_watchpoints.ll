; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_db_md_list_watchpoints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_db_md_list_watchpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbreg = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"\0Ahardware watchpoints:\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"  watch    status        type  len             address\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"  -----  --------  ----------  ---  ------------------\0A\00", align 1
@DBREG_DR7_LEN_8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"  %-5d  %-8s  %10s  %3d  \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@DB_STGY_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"  %-5d  disabled\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"\0Adebug register values:\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"  dr%d 0x%016lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_md_list_watchpoints() #0 {
  %1 = alloca %struct.dbreg, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @fill_dbregs(i32* null, %struct.dbreg* %1)
  %6 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %56, %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %59

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %1, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 7
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @DBREG_DR7_ENABLED(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %1, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @DBREG_DR7_ACCESS(i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %1, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 7
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @DBREG_DR7_LEN(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @DBREG_DR7_LEN_8, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  store i32 8, i32* %3, align 4
  br label %40

37:                                               ; preds = %20
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @watchtype_str(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = call i64 @DBREG_DRX(%struct.dbreg* %1, i32 %46)
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @DB_STGY_ANY, align 4
  %50 = call i32 @db_printsym(i32 %48, i32 %49)
  %51 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %55

52:                                               ; preds = %12
  %53 = load i32, i32* %2, align 4
  %54 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %40
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %2, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %2, align 4
  br label %9

59:                                               ; preds = %9
  %60 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %76, %59
  %62 = load i32, i32* %2, align 4
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32, i32* %2, align 4
  %66 = icmp ne i32 %65, 4
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* %2, align 4
  %69 = icmp ne i32 %68, 5
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %2, align 4
  %73 = call i64 @DBREG_DRX(%struct.dbreg* %1, i32 %72)
  %74 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %71, i64 %73)
  br label %75

75:                                               ; preds = %70, %67, %64
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %2, align 4
  br label %61

79:                                               ; preds = %61
  %80 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fill_dbregs(i32*, %struct.dbreg*) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i64 @DBREG_DR7_ENABLED(i32, i32) #1

declare dso_local i32 @DBREG_DR7_ACCESS(i32, i32) #1

declare dso_local i32 @DBREG_DR7_LEN(i32, i32) #1

declare dso_local i32 @watchtype_str(i32) #1

declare dso_local i32 @db_printsym(i32, i32) #1

declare dso_local i64 @DBREG_DRX(%struct.dbreg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
