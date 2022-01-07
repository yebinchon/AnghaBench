; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_file_name_to_table_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_file_name_to_table_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"pme_%s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: asprintf() error %s for file %s\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: Invalid character '%c' in file name %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @file_name_to_table_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @file_name_to_table_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @prog, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %16, i8* %17)
  store i8* null, i8** %2, align 8
  br label %77

19:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %72, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 47
  br i1 %36, label %37, label %42

37:                                               ; preds = %34, %25
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 95, i8* %41, align 1
  br label %71

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 0, i8* %49, align 1
  br label %75

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @isalnum(i32 %51) #3
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 95
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i8*, i8** %3, align 8
  %59 = call i8* @strdup(i8* %58)
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* @prog, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @basename(i8* %62)
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61, i32 %63)
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @free(i8* %67)
  store i8* null, i8** %7, align 8
  br label %75

69:                                               ; preds = %54, %50
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70, %37
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %20

75:                                               ; preds = %57, %45, %20
  %76 = load i8*, i8** %7, align 8
  store i8* %76, i8** %2, align 8
  br label %77

77:                                               ; preds = %75, %13
  %78 = load i8*, i8** %2, align 8
  ret i8* %78
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
