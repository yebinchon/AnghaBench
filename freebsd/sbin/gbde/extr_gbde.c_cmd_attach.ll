; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_cmd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_cmd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_softc = type { i8* }
%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"create geom\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"BDE\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Attach to %s failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_softc*, i8*, i8*)* @cmd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_attach(%struct.g_bde_softc* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.g_bde_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca %struct.gctl_req*, align 8
  %10 = alloca i8*, align 8
  store %struct.g_bde_softc* %0, %struct.g_bde_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %11, %struct.gctl_req** %9, align 8
  %12 = load %struct.gctl_req*, %struct.gctl_req** %9, align 8
  %13 = call i32 @gctl_ro_param(%struct.gctl_req* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.gctl_req*, %struct.gctl_req** %9, align 8
  %15 = call i32 @gctl_ro_param(%struct.gctl_req* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %16 = load %struct.gctl_req*, %struct.gctl_req** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @gctl_ro_param(%struct.gctl_req* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 -1, i8* %17)
  %19 = load %struct.gctl_req*, %struct.gctl_req** %9, align 8
  %20 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %21 = load %struct.g_bde_softc*, %struct.g_bde_softc** %4, align 8
  %22 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @gctl_ro_param(%struct.gctl_req* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %20, i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @O_RDONLY, align 4
  %30 = call i32 @open(i8* %28, i32 %29, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %39 = call i32 @read(i32 %37, i8* %38, i32 16)
  %40 = load %struct.gctl_req*, %struct.gctl_req** %9, align 8
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %42 = call i32 @gctl_ro_param(%struct.gctl_req* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 16, i8* %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @close(i32 %43)
  br label %45

45:                                               ; preds = %36, %3
  %46 = load %struct.gctl_req*, %struct.gctl_req** %9, align 8
  %47 = call i8* @gctl_issue(%struct.gctl_req* %46)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %51, i8* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
