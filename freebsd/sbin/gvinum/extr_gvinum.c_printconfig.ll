; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_printconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_printconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.utsname = type { i8* }

@GV_CFG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"getconfig\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"can't get configuration: %s\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"# Vinum configuration of %s, saved at %s\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"# Current configuration:\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @printconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printconfig(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca %struct.utsname, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @GV_CFG_LEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = call i32 @uname(%struct.utsname* %6)
  %18 = call i32 @time(i32* %8)
  %19 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %19, %struct.gctl_req** %5, align 8
  %20 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %21 = call i32 @gctl_ro_param(%struct.gctl_req* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %23 = call i32 @gctl_ro_param(%struct.gctl_req* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %24 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @gctl_ro_param(%struct.gctl_req* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 -1, i8* %25)
  %27 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %28 = trunc i64 %14 to i32
  %29 = call i32 @gctl_rw_param(%struct.gctl_req* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %28, i8* %16)
  %30 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %31 = call i8* @gctl_issue(%struct.gctl_req* %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %35)
  store i32 1, i32* %11, align 4
  br label %55

37:                                               ; preds = %2
  %38 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %39 = call i32 @gctl_free(%struct.gctl_req* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds %struct.utsname, %struct.utsname* %6, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @ctime(i32* %8)
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %37
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %16)
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %52, %34
  %56 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %11, align 4
  switch i32 %57, label %59 [
    i32 0, label %58
    i32 1, label %58
  ]

58:                                               ; preds = %55, %55
  ret void

59:                                               ; preds = %55
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uname(%struct.utsname*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #2

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, i8*) #2

declare dso_local i32 @gctl_rw_param(%struct.gctl_req*, i8*, i32, i8*) #2

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @gctl_free(%struct.gctl_req*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i8* @ctime(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
