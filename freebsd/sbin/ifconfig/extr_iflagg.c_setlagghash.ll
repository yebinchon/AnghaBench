; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iflagg.c_setlagghash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iflagg.c_setlagghash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }
%struct.lagg_reqflags = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"l2\00", align 1
@LAGG_F_HASHL2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"l3\00", align 1
@LAGG_F_HASHL3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"l4\00", align 1
@LAGG_F_HASHL4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid lagghash option: %s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"No lagghash options supplied\00", align 1
@name = common dso_local global i32 0, align 4
@SIOCSLAGGHASH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"SIOCSLAGGHASH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setlagghash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setlagghash(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.lagg_reqflags, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %13 = getelementptr inbounds %struct.lagg_reqflags, %struct.lagg_reqflags* %9, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %11, align 8
  store i8* %15, i8** %10, align 8
  br label %16

16:                                               ; preds = %51, %4
  %17 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %16
  %20 = load i8*, i8** %12, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @LAGG_F_HASHL2, align 4
  %25 = getelementptr inbounds %struct.lagg_reqflags, %struct.lagg_reqflags* %9, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  br label %51

28:                                               ; preds = %19
  %29 = load i8*, i8** %12, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @LAGG_F_HASHL3, align 4
  %34 = getelementptr inbounds %struct.lagg_reqflags, %struct.lagg_reqflags* %9, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %50

37:                                               ; preds = %28
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* @LAGG_F_HASHL4, align 4
  %43 = getelementptr inbounds %struct.lagg_reqflags, %struct.lagg_reqflags* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %49

46:                                               ; preds = %37
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %32
  br label %51

51:                                               ; preds = %50, %23
  br label %16

52:                                               ; preds = %16
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @free(i8* %53)
  %55 = getelementptr inbounds %struct.lagg_reqflags, %struct.lagg_reqflags* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %52
  %61 = getelementptr inbounds %struct.lagg_reqflags, %struct.lagg_reqflags* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @name, align 4
  %64 = call i32 @strlcpy(i32 %62, i32 %63, i32 4)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @SIOCSLAGGHASH, align 4
  %67 = call i64 @ioctl(i32 %65, i32 %66, %struct.lagg_reqflags* %9)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %60
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.lagg_reqflags*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
