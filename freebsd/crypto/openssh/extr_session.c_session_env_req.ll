; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_session_env_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_session_env_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }
%struct.ssh = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [43 x i8] c"Ignoring env request %s: too many env vars\00", align 1
@options = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Setting env %d: %s=%s\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Ignoring env request %s: disallowed name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.TYPE_6__*)* @session_env_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_env_req(%struct.ssh* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %11 = call i8* @packet_get_cstring(i64* %8)
  store i8* %11, i8** %6, align 8
  %12 = call i8* @packet_get_cstring(i64* %9)
  store i8* %12, i8** %7, align 8
  %13 = call i32 (...) @packet_check_eom()
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 128
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %85

21:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %79, %21
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 0), align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 1), align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @match_pattern(i8* %27, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8* %38, i8* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = call %struct.TYPE_7__* @xrecallocarray(%struct.TYPE_7__* %43, i32 %46, i32 %50, i32 16)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %53, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i8* %54, i8** %63, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i8* %64, i8** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  store i32 1, i32* %3, align 4
  br label %90

78:                                               ; preds = %26
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %22

82:                                               ; preds = %22
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %18
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @free(i8* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %85, %34
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i8* @packet_get_cstring(i64*) #1

declare dso_local i32 @packet_check_eom(...) #1

declare dso_local i32 @debug2(i8*, ...) #1

declare dso_local i64 @match_pattern(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @xrecallocarray(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
