; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_verify_file.c_verify_tweak.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_verify_file.c_verify_tweak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@VE_WANT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"verify self tests failed\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@VE_MUST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"trust\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"revoke\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"revoked %d trust anchors\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"added %d trust anchors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, %struct.stat*, i8*, i32*, i32*, i32*)* @verify_tweak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_tweak(i32 %0, i64 %1, %struct.stat* %2, i8* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store %struct.stat* %2, %struct.stat** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load i32*, i32** %14, align 8
  store i32 0, i32* %21, align 4
  br label %115

22:                                               ; preds = %7
  %23 = load i8*, i8** %11, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* @VE_WANT, align 4
  %28 = load i32*, i32** %12, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %13, align 8
  store i32 1, i32* %29, align 4
  %30 = call i32 (...) @ve_self_tests()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  br label %114

35:                                               ; preds = %22
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @VE_MUST, align 4
  %41 = load i32*, i32** %12, align 8
  store i32 %40, i32* %41, align 4
  br label %113

42:                                               ; preds = %35
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @VE_MUST, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32*, i32** %12, align 8
  store i32 %48, i32* %49, align 4
  br label %112

50:                                               ; preds = %42
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32*, i32** %13, align 8
  store i32 1, i32* %55, align 4
  br label %111

56:                                               ; preds = %50
  %57 = load i8*, i8** %11, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32*, i32** %13, align 8
  store i32 0, i32* %61, align 4
  br label %110

62:                                               ; preds = %56
  %63 = load i8*, i8** %11, align 8
  %64 = call i64 @strncmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %109

66:                                               ; preds = %62
  %67 = load i64, i64* %9, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @SEEK_SET, align 4
  %72 = call i32 @lseek(i32 %70, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.stat*, %struct.stat** %10, align 8
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @read_fd(i32 %74, i32 %77)
  store i8* %78, i8** %15, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %115

82:                                               ; preds = %73
  %83 = load i8*, i8** %11, align 8
  %84 = call i64 @strstr(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i8*, i8** %15, align 8
  %88 = load %struct.stat*, %struct.stat** %10, align 8
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ve_trust_anchors_revoke(i8* %87, i32 %90)
  store i64 %91, i64* %16, align 8
  %92 = load i64, i64* %16, align 8
  %93 = trunc i64 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @DEBUG_PRINTF(i32 3, i8* %95)
  br label %108

97:                                               ; preds = %82
  %98 = load i8*, i8** %15, align 8
  %99 = load %struct.stat*, %struct.stat** %10, align 8
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @ve_trust_anchors_add_buf(i8* %98, i32 %101)
  store i64 %102, i64* %16, align 8
  %103 = load i64, i64* %16, align 8
  %104 = trunc i64 %103 to i32
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @DEBUG_PRINTF(i32 3, i8* %106)
  br label %108

108:                                              ; preds = %97, %86
  br label %109

109:                                              ; preds = %108, %62
  br label %110

110:                                              ; preds = %109, %60
  br label %111

111:                                              ; preds = %110, %54
  br label %112

112:                                              ; preds = %111, %46
  br label %113

113:                                              ; preds = %112, %39
  br label %114

114:                                              ; preds = %113, %34
  br label %115

115:                                              ; preds = %81, %114, %20
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ve_self_tests(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i8* @read_fd(i32, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @ve_trust_anchors_revoke(i8*, i32) #1

declare dso_local i32 @DEBUG_PRINTF(i32, i8*) #1

declare dso_local i64 @ve_trust_anchors_add_buf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
