; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_genkey_passphrase_prompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_genkey_passphrase_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Enter new passphrase: \00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Enter passphrase: \00", align 1
@RPP_ECHO_OFF = common dso_local global i32 0, align 4
@RPP_REQUIRE_TTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot read passphrase: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@BUFSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Reenter new passphrase: \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"They didn't match.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, i32, i8*, i64)* @eli_genkey_passphrase_prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eli_genkey_passphrase_prompt(%struct.gctl_req* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gctl_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  br label %14

14:                                               ; preds = %75, %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @RPP_ECHO_OFF, align 4
  %23 = load i32, i32* @RPP_REQUIRE_TTY, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @readpassphrase(i8* %18, i8* %19, i32 %21, i32 %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %14
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @explicit_bzero(i8* %29, i32 %31)
  %33 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @gctl_error(%struct.gctl_req* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %5, align 4
  br label %80

37:                                               ; preds = %14
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = load i32, i32* @BUFSIZE, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %11, align 8
  %44 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %12, align 8
  %45 = trunc i64 %42 to i32
  %46 = load i32, i32* @RPP_ECHO_OFF, align 4
  %47 = load i32, i32* @RPP_REQUIRE_TTY, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @readpassphrase(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %44, i32 %45, i32 %48)
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %40
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @explicit_bzero(i8* %53, i32 %55)
  %57 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 @gctl_error(%struct.gctl_req* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %75

61:                                               ; preds = %40
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @strcmp(i8* %62, i8* %44)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @explicit_bzero(i8* %66, i32 %68)
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 3, i32* %13, align 4
  br label %75

72:                                               ; preds = %61
  %73 = trunc i64 %42 to i32
  %74 = call i32 @explicit_bzero(i8* %44, i32 %73)
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %72, %65, %52
  %76 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %13, align 4
  switch i32 %77, label %82 [
    i32 0, label %78
    i32 1, label %80
    i32 3, label %14
  ]

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78, %37
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %75, %28
  %81 = load i32, i32* %5, align 4
  ret i32 %81

82:                                               ; preds = %75
  unreachable
}

declare dso_local i8* @readpassphrase(i8*, i8*, i32, i32) #1

declare dso_local i32 @explicit_bzero(i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
