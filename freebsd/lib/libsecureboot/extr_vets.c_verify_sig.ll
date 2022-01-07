; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vets.c_verify_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vets.c_verify_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, i32, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"verify_sig: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"certs\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"cannot verify: %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Unverified %s (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Verified %s signed by %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"someone we trust\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @verify_sig(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca [80 x i8], align 16
  %9 = alloca [4 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @DEBUG_PRINTF(i32 5, i8* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = trunc i64 %17 to i32
  %24 = call i64 @strlcpy(i8* %19, i8* %22, i32 %23)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = sub i64 %17, 5
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %14, align 8
  %31 = sub i64 %30, 3
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %15, align 4
  br label %108

36:                                               ; preds = %28
  %37 = load i64, i64* %14, align 8
  %38 = sub i64 %37, 3
  %39 = getelementptr inbounds i8, i8* %19, i64 %38
  %40 = call i8* @strcpy(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %40, i8** %12, align 8
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 3, i8* %41, align 1
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  store i8 85, i8* %42, align 1
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  store i8 4, i8* %43, align 1
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  store i8 3, i8* %44, align 1
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i32 80, i32* %49, align 8
  %50 = call %struct.TYPE_8__* @verify_signer(i8* %19, %struct.TYPE_9__* %7, i32 1)
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %6, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %36
  %54 = call i8* (...) @ve_error_get()
  %55 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %19, i8* %54)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %15, align 4
  br label %108

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %68, %56
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ugt i8* %58, %19
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i8*, i8** %12, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 46
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i8*, i8** %12, align 8
  store i8 0, i8* %66, align 1
  br label %71

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %12, align 8
  br label %57

71:                                               ; preds = %65, %57
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %75 [
  ]

75:                                               ; preds = %71
  store i8* null, i8** %13, align 8
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = call i32 @xfreepkey(%struct.TYPE_8__* %77)
  %79 = load i8*, i8** %13, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  br label %88

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i8* [ %86, %85 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %87 ]
  %90 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %19, i8* %89)
  br label %106

91:                                               ; preds = %76
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  br label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i8* [ %100, %99 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), %101 ]
  %104 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %19, i8* %103)
  br label %105

105:                                              ; preds = %102, %91
  br label %106

106:                                              ; preds = %105, %88
  %107 = load i8*, i8** %13, align 8
  store i8* %107, i8** %3, align 8
  store i32 1, i32* %15, align 4
  br label %108

108:                                              ; preds = %106, %53, %35
  %109 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i8*, i8** %3, align 8
  ret i8* %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEBUG_PRINTF(i32, i8*) #2

declare dso_local i64 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @strcpy(i8*, i8*) #2

declare dso_local %struct.TYPE_8__* @verify_signer(i8*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i8* @ve_error_get(...) #2

declare dso_local i32 @xfreepkey(%struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
