; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_format_cert_validity.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_format_cert_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey_cert = type { i64, i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"forever\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%Y-%m-%dT%H:%M:%S\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"before %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"after %s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"from %s to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sshkey_format_cert_validity(%struct.sshkey_cert* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sshkey_cert*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca [64 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.tm*, align 8
  store %struct.sshkey_cert* %0, %struct.sshkey_cert** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %13, align 16
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %14, align 16
  %15 = load %struct.sshkey_cert*, %struct.sshkey_cert** %5, align 8
  %16 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.sshkey_cert*, %struct.sshkey_cert** %5, align 8
  %21 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @strlcpy(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %27)
  store i64 %28, i64* %4, align 8
  br label %108

29:                                               ; preds = %19, %3
  %30 = load %struct.sshkey_cert*, %struct.sshkey_cert** %5, align 8
  %31 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.sshkey_cert*, %struct.sshkey_cert** %5, align 8
  %36 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INT_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @INT_MAX, align 8
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.sshkey_cert*, %struct.sshkey_cert** %5, align 8
  %44 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i64 [ %41, %40 ], [ %45, %42 ]
  store i64 %47, i64* %11, align 8
  %48 = call %struct.tm* @localtime(i64* %11)
  store %struct.tm* %48, %struct.tm** %12, align 8
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %50 = load %struct.tm*, %struct.tm** %12, align 8
  %51 = call i32 @strftime(i8* %49, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %50)
  br label %52

52:                                               ; preds = %46, %29
  %53 = load %struct.sshkey_cert*, %struct.sshkey_cert** %5, align 8
  %54 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, -1
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = load %struct.sshkey_cert*, %struct.sshkey_cert** %5, align 8
  %60 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @INT_MAX, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i64, i64* @INT_MAX, align 8
  br label %72

67:                                               ; preds = %58
  %68 = load %struct.sshkey_cert*, %struct.sshkey_cert** %5, align 8
  %69 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  br label %72

72:                                               ; preds = %67, %65
  %73 = phi i64 [ %66, %65 ], [ %71, %67 ]
  store i64 %73, i64* %11, align 8
  %74 = call %struct.tm* @localtime(i64* %11)
  store %struct.tm* %74, %struct.tm** %12, align 8
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %76 = load %struct.tm*, %struct.tm** %12, align 8
  %77 = call i32 @strftime(i8* %75, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %76)
  br label %78

78:                                               ; preds = %72, %52
  %79 = load %struct.sshkey_cert*, %struct.sshkey_cert** %5, align 8
  %80 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %86 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %84, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  br label %103

87:                                               ; preds = %78
  %88 = load %struct.sshkey_cert*, %struct.sshkey_cert** %5, align 8
  %89 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %91, -1
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %96 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %94, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  br label %102

97:                                               ; preds = %87
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %101 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %98, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %99, i8* %100)
  br label %102

102:                                              ; preds = %97, %93
  br label %103

103:                                              ; preds = %102, %83
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @strlcpy(i8* %104, i8* %105, i64 %106)
  store i64 %107, i64* %4, align 8
  br label %108

108:                                              ; preds = %103, %25
  %109 = load i64, i64* %4, align 8
  ret i64 %109
}

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
