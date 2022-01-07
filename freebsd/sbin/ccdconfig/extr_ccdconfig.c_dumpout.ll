; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_dumpout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_dumpout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@dumpout.v = internal global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CCD\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%s\0Aor possibly kernel and ccdconfig out of sync\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ccd%d not configured\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"# ccd\09\09ileave\09flags\09component devices\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dumpout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dumpout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %7 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %7, %struct.gctl_req** %3, align 8
  store i32 65536, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i8* @malloc(i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %11 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %13 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %14 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %15 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4, i32* %2)
  %16 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @gctl_rw_param(%struct.gctl_req* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %17, i8* %18)
  %20 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %21 = call i8* @gctl_issue(%struct.gctl_req* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i64, i64* @verbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @dumpout.v, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* @dumpout.v, align 4
  br label %42

42:                                               ; preds = %40, %37, %34
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  ret i32 0
}

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, ...) #1

declare dso_local i32 @gctl_rw_param(%struct.gctl_req*, i8*, i32, i8*) #1

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
