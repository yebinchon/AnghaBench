; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_authmethod_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_authmethod_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@supported = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"start over, passed a different list %s\00", align 1
@preferred = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"preferred %s\00", align 1
@current = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"No more authentication methods to try.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"authmethod_lookup %s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"remaining preferred: %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"authmethod_is_enabled %s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Next authentication method: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @authmethod_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @authmethod_get(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  store i8* %13, i8** %3, align 8
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i8*, i8** @supported, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** @supported, align 8
  %20 = call i64 @strcmp(i8* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17, %14
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @debug3(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** @supported, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @xstrdup(i8* %27)
  store i8* %28, i8** @supported, align 8
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  store i8* %29, i8** @preferred, align 8
  %30 = load i8*, i8** @preferred, align 8
  %31 = call i32 @debug3(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32* null, i32** @current, align 8
  br label %42

32:                                               ; preds = %17
  %33 = load i32*, i32** @current, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32*, i32** @current, align 8
  %37 = call i64 @authmethod_is_enabled(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32*, i32** @current, align 8
  store i32* %40, i32** %2, align 8
  br label %77

41:                                               ; preds = %35, %32
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %74, %42
  %44 = load i8*, i8** @preferred, align 8
  %45 = load i8*, i8** @supported, align 8
  %46 = call i8* @match_list(i8* %44, i8* %45, i32* %5)
  store i8* %46, i8** %4, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** @current, align 8
  store i32* null, i32** %2, align 8
  br label %77

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = load i8*, i8** @preferred, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** @preferred, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @debug3(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** @preferred, align 8
  %58 = call i32 @debug3(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %4, align 8
  %60 = call i32* @authmethod_lookup(i8* %59)
  store i32* %60, i32** @current, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %50
  %63 = load i32*, i32** @current, align 8
  %64 = call i64 @authmethod_is_enabled(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @debug3(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i32*, i32** @current, align 8
  store i32* %73, i32** %2, align 8
  br label %77

74:                                               ; preds = %62, %50
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @free(i8* %75)
  br label %43

77:                                               ; preds = %66, %48, %39
  %78 = load i32*, i32** %2, align 8
  ret i32* %78
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @debug3(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @authmethod_is_enabled(i32*) #1

declare dso_local i8* @match_list(i8*, i8*, i32*) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32* @authmethod_lookup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
