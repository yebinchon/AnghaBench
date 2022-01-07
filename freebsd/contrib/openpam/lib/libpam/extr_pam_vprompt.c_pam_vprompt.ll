; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_vprompt.c_pam_vprompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_vprompt.c_pam_vprompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pam_message = type { i32, i8* }
%struct.pam_response = type { i8* }
%struct.pam_conv = type { i32 (i32, %struct.pam_message**, %struct.pam_response**, i32)*, i32 }

@PAM_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@PAM_CONV = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@PAM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no conversation function\00", align 1
@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pam_vprompt(i32* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pam_message, align 8
  %15 = alloca %struct.pam_message*, align 8
  %16 = alloca %struct.pam_response*, align 8
  %17 = alloca %struct.pam_conv*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* @PAM_MAX_MSG_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = call i32 (...) @ENTER()
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @PAM_CONV, align 4
  %27 = call i32 @pam_get_item(i32* %25, i32 %26, i8** %18)
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = load i32, i32* @PAM_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* %19, align 4
  %33 = call i32 @RETURNC(i32 %32)
  br label %34

34:                                               ; preds = %31, %5
  %35 = load i8*, i8** %18, align 8
  %36 = bitcast i8* %35 to %struct.pam_conv*
  store %struct.pam_conv* %36, %struct.pam_conv** %17, align 8
  %37 = load %struct.pam_conv*, %struct.pam_conv** %17, align 8
  %38 = icmp eq %struct.pam_conv* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.pam_conv*, %struct.pam_conv** %17, align 8
  %41 = getelementptr inbounds %struct.pam_conv, %struct.pam_conv* %40, i32 0, i32 0
  %42 = load i32 (i32, %struct.pam_message**, %struct.pam_response**, i32)*, i32 (i32, %struct.pam_message**, %struct.pam_response**, i32)** %41, align 8
  %43 = icmp eq i32 (i32, %struct.pam_message**, %struct.pam_response**, i32)* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @PAM_LOG_ERROR, align 4
  %46 = call i32 @openpam_log(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %48 = call i32 @RETURNC(i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @PAM_MAX_MSG_SIZE, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @vsnprintf(i8* %23, i32 %50, i8* %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %14, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %14, i32 0, i32 1
  store i8* %23, i8** %56, align 8
  store %struct.pam_message* %14, %struct.pam_message** %15, align 8
  store %struct.pam_response* null, %struct.pam_response** %16, align 8
  %57 = load %struct.pam_conv*, %struct.pam_conv** %17, align 8
  %58 = getelementptr inbounds %struct.pam_conv, %struct.pam_conv* %57, i32 0, i32 0
  %59 = load i32 (i32, %struct.pam_message**, %struct.pam_response**, i32)*, i32 (i32, %struct.pam_message**, %struct.pam_response**, i32)** %58, align 8
  %60 = load %struct.pam_conv*, %struct.pam_conv** %17, align 8
  %61 = getelementptr inbounds %struct.pam_conv, %struct.pam_conv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %59(i32 1, %struct.pam_message** %15, %struct.pam_response** %16, i32 %62)
  store i32 %63, i32* %19, align 4
  %64 = load %struct.pam_response*, %struct.pam_response** %16, align 8
  %65 = icmp eq %struct.pam_response* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  br label %71

67:                                               ; preds = %49
  %68 = load %struct.pam_response*, %struct.pam_response** %16, align 8
  %69 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  br label %71

71:                                               ; preds = %67, %66
  %72 = phi i8* [ null, %66 ], [ %70, %67 ]
  %73 = load i8**, i8*** %9, align 8
  store i8* %72, i8** %73, align 8
  %74 = load %struct.pam_response*, %struct.pam_response** %16, align 8
  %75 = call i32 @FREE(%struct.pam_response* %74)
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @RETURNC(i32 %76)
  %78 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ENTER(...) #2

declare dso_local i32 @pam_get_item(i32*, i32, i8**) #2

declare dso_local i32 @RETURNC(i32) #2

declare dso_local i32 @openpam_log(i32, i8*) #2

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @FREE(%struct.pam_response*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
