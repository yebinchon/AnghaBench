; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_try_load_public.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_try_load_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"-----BEGIN\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SSH PRIVATE KEY FILE\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshkey*, i8*, i8**)* @sshkey_try_load_public to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sshkey_try_load_public(%struct.sshkey* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8**, i8*** %7, align 8
  store i8* null, i8** %16, align 8
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %115

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %108, %33, %23
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @getline(i8** %9, i64* %11, i32* %25)
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %109

28:                                               ; preds = %24
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %34 [
    i32 35, label %33
    i32 10, label %33
    i32 0, label %33
  ]

33:                                               ; preds = %28, %28, %28
  br label %24

34:                                               ; preds = %28
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  br label %109

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i8*, i8** %10, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 9
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ true, %49 ], [ %58, %54 ]
  br label %61

61:                                               ; preds = %59, %44
  %62 = phi i1 [ false, %44 ], [ %60, %59 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  br label %44

67:                                               ; preds = %61
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %108

71:                                               ; preds = %67
  %72 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %73 = call i32 @sshkey_read(%struct.sshkey* %72, i8** %10)
  store i32 %73, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %107

75:                                               ; preds = %71
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i64 @strcspn(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i8**, i8*** %7, align 8
  %81 = icmp ne i8** %80, null
  br i1 %81, label %82, label %101

82:                                               ; preds = %75
  %83 = load i8*, i8** %10, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i8*, i8** %10, align 8
  br label %91

89:                                               ; preds = %82
  %90 = load i8*, i8** %6, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i8* [ %88, %87 ], [ %90, %89 ]
  %93 = call i8* @strdup(i8* %92)
  %94 = load i8**, i8*** %7, align 8
  store i8* %93, i8** %94, align 8
  %95 = load i8**, i8*** %7, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %98, %91
  br label %101

101:                                              ; preds = %100, %75
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @fclose(i32* %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %4, align 4
  br label %115

107:                                              ; preds = %71
  br label %108

108:                                              ; preds = %107, %67
  br label %24

109:                                              ; preds = %42, %24
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @fclose(i32* %112)
  %114 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %109, %101, %21
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sshkey_read(%struct.sshkey*, i8**) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
