; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_format_method_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_format_method_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, %struct.sshkey* }
%struct.sshkey = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sshkey*, i64, i32 }

@options = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@SSH_FP_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s ID %s (serial %llu) CA %s %s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s %s%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*)* @format_method_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_method_key(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  store %struct.sshkey* %10, %struct.sshkey** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %14 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %15 = icmp eq %struct.sshkey* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %101

17:                                               ; preds = %1
  %18 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %19 = call i64 @sshkey_is_cert(%struct.sshkey* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %17
  %22 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %23 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.sshkey*, %struct.sshkey** %25, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 0), align 4
  %28 = load i32, i32* @SSH_FP_DEFAULT, align 4
  %29 = call i8* @sshkey_fingerprint(%struct.sshkey* %26, i32 %27, i32 %28)
  store i8* %29, i8** %6, align 8
  %30 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %31 = call i32 @sshkey_type(%struct.sshkey* %30)
  %32 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %33 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %40 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %45 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.sshkey*, %struct.sshkey** %47, align 8
  %49 = call i32 @sshkey_type(%struct.sshkey* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %21
  br label %55

53:                                               ; preds = %21
  %54 = load i8*, i8** %6, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %52 ], [ %54, %53 ]
  %57 = load i8*, i8** %5, align 8
  %58 = icmp eq i8* %57, null
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %61 = load i8*, i8** %5, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %66

64:                                               ; preds = %55
  %65 = load i8*, i8** %5, align 8
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %63 ], [ %65, %64 ]
  %68 = call i32 (i8**, i8*, i32, i8*, ...) @xasprintf(i8** %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %38, i64 %43, i32 %49, i8* %56, i8* %60, i8* %67)
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @free(i8* %69)
  br label %99

71:                                               ; preds = %17
  %72 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 0), align 4
  %74 = load i32, i32* @SSH_FP_DEFAULT, align 4
  %75 = call i8* @sshkey_fingerprint(%struct.sshkey* %72, i32 %73, i32 %74)
  store i8* %75, i8** %6, align 8
  %76 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %77 = call i32 @sshkey_type(%struct.sshkey* %76)
  %78 = load i8*, i8** %6, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %83

81:                                               ; preds = %71
  %82 = load i8*, i8** %6, align 8
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %80 ], [ %82, %81 ]
  %85 = load i8*, i8** %5, align 8
  %86 = icmp eq i8* %85, null
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %89 = load i8*, i8** %5, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %94

92:                                               ; preds = %83
  %93 = load i8*, i8** %5, align 8
  br label %94

94:                                               ; preds = %92, %91
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %91 ], [ %93, %92 ]
  %96 = call i32 (i8**, i8*, i32, i8*, ...) @xasprintf(i8** %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %77, i8* %84, i8* %88, i8* %95)
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @free(i8* %97)
  br label %99

99:                                               ; preds = %94, %66
  %100 = load i8*, i8** %7, align 8
  store i8* %100, i8** %2, align 8
  br label %101

101:                                              ; preds = %99, %16
  %102 = load i8*, i8** %2, align 8
  ret i8* %102
}

declare dso_local i64 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i8* @sshkey_fingerprint(%struct.sshkey*, i32, i32) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32, i8*, ...) #1

declare dso_local i32 @sshkey_type(%struct.sshkey*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
