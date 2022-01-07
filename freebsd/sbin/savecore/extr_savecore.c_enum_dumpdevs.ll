; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_enum_dumpdevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_enum_dumpdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstab = type { i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"malloc(): %m\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"realloc(): %m\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"strdup(): %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i32*)* @enum_dumpdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @enum_dumpdevs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.fstab*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 8, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = call i8** @malloc(i32 %10)
  store i8** %11, i8*** %4, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = icmp eq i8** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @LOG_ERR, align 4
  %16 = call i32 @logmsg(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %76, %36, %18
  %20 = call %struct.fstab* (...) @getfsent()
  store %struct.fstab* %20, %struct.fstab** %3, align 8
  %21 = load %struct.fstab*, %struct.fstab** %3, align 8
  %22 = icmp eq %struct.fstab* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %79

24:                                               ; preds = %19
  %25 = load %struct.fstab*, %struct.fstab** %3, align 8
  %26 = getelementptr inbounds %struct.fstab, %struct.fstab* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.fstab*, %struct.fstab** %3, align 8
  %32 = getelementptr inbounds %struct.fstab, %struct.fstab* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strcmp(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %19

37:                                               ; preds = %30, %24
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %6, align 4
  %44 = load i8**, i8*** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = call i8** @realloc(i8** %44, i32 %48)
  store i8** %49, i8*** %4, align 8
  %50 = load i8**, i8*** %4, align 8
  %51 = icmp eq i8** %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = call i32 @logmsg(i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %37
  %58 = load %struct.fstab*, %struct.fstab** %3, align 8
  %59 = getelementptr inbounds %struct.fstab, %struct.fstab* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @strdup(i32 %60)
  %62 = load i8**, i8*** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %61, i8** %65, align 8
  %66 = load i8**, i8*** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %57
  %73 = load i32, i32* @LOG_ERR, align 4
  %74 = call i32 @logmsg(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %57
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %19

79:                                               ; preds = %23
  %80 = load i32, i32* %5, align 4
  %81 = load i32*, i32** %2, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i8**, i8*** %4, align 8
  ret i8** %82
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @logmsg(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.fstab* @getfsent(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
