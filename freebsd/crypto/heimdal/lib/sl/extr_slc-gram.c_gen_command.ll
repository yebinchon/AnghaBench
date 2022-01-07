; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_gen_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_gen_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assignment = type { %struct.TYPE_2__, i32, %struct.assignment* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"    { \00", align 1
@cfile = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"\22%s\22, \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s_wrap, \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\22%s %s\22, \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" },\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"    { \22%s\22 },\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assignment*)* @gen_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_command(%struct.assignment* %0) #0 {
  %2 = alloca %struct.assignment*, align 8
  %3 = alloca %struct.assignment*, align 8
  %4 = alloca %struct.assignment*, align 8
  %5 = alloca i8*, align 8
  store %struct.assignment* %0, %struct.assignment** %2, align 8
  %6 = load %struct.assignment*, %struct.assignment** %2, align 8
  %7 = call %struct.assignment* @find(%struct.assignment* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.assignment* %7, %struct.assignment** %3, align 8
  %8 = load %struct.assignment*, %struct.assignment** %3, align 8
  %9 = getelementptr inbounds %struct.assignment, %struct.assignment* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @gen_name(i8* %13)
  %15 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @cfile, align 4
  %17 = load %struct.assignment*, %struct.assignment** %3, align 8
  %18 = getelementptr inbounds %struct.assignment, %struct.assignment* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @cfile, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %25 = load %struct.assignment*, %struct.assignment** %2, align 8
  %26 = call %struct.assignment* @find(%struct.assignment* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store %struct.assignment* %26, %struct.assignment** %4, align 8
  %27 = load %struct.assignment*, %struct.assignment** %4, align 8
  %28 = icmp ne %struct.assignment* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load i32, i32* @cfile, align 4
  %31 = load %struct.assignment*, %struct.assignment** %3, align 8
  %32 = getelementptr inbounds %struct.assignment, %struct.assignment* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.assignment*, %struct.assignment** %4, align 8
  %36 = getelementptr inbounds %struct.assignment, %struct.assignment* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %34, i8* %38)
  br label %47

40:                                               ; preds = %1
  %41 = load i32, i32* @cfile, align 4
  %42 = load %struct.assignment*, %struct.assignment** %3, align 8
  %43 = getelementptr inbounds %struct.assignment, %struct.assignment* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %40, %29
  %48 = load %struct.assignment*, %struct.assignment** %2, align 8
  %49 = call %struct.assignment* @find(%struct.assignment* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store %struct.assignment* %49, %struct.assignment** %4, align 8
  %50 = load %struct.assignment*, %struct.assignment** %4, align 8
  %51 = icmp ne %struct.assignment* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @cfile, align 4
  %54 = load %struct.assignment*, %struct.assignment** %4, align 8
  %55 = getelementptr inbounds %struct.assignment, %struct.assignment* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %57)
  br label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @cfile, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32, i32* @cfile, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %65 = load %struct.assignment*, %struct.assignment** %3, align 8
  %66 = getelementptr inbounds %struct.assignment, %struct.assignment* %65, i32 0, i32 2
  %67 = load %struct.assignment*, %struct.assignment** %66, align 8
  store %struct.assignment* %67, %struct.assignment** %3, align 8
  br label %68

68:                                               ; preds = %84, %62
  %69 = load %struct.assignment*, %struct.assignment** %3, align 8
  %70 = icmp ne %struct.assignment* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.assignment*, %struct.assignment** %3, align 8
  %73 = getelementptr inbounds %struct.assignment, %struct.assignment* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @strcmp(i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.assignment*, %struct.assignment** %3, align 8
  %79 = getelementptr inbounds %struct.assignment, %struct.assignment* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %77, %71
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.assignment*, %struct.assignment** %3, align 8
  %86 = getelementptr inbounds %struct.assignment, %struct.assignment* %85, i32 0, i32 2
  %87 = load %struct.assignment*, %struct.assignment** %86, align 8
  store %struct.assignment* %87, %struct.assignment** %3, align 8
  br label %68

88:                                               ; preds = %68
  %89 = call i32 (i32, i8*, ...) @cprint(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local %struct.assignment* @find(%struct.assignment*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @gen_name(i8*) #1

declare dso_local i32 @cprint(i32, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
