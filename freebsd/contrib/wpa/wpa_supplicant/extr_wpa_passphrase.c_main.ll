; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_passphrase.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_passphrase.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [98 x i8] c"usage: wpa_passphrase <ssid> [passphrase]\0A\0AIf passphrase is left out, it will be read from stdin\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"# reading passphrase from stdin\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to read passphrase\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Passphrase must be 8..63 characters\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid passphrase character\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"network={\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\09ssid=\22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\09#psk=\22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\09psk=\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %108

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  br label %60

27:                                               ; preds = %17
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %30 = load i32, i32* @stdin, align 4
  %31 = call i32* @fgets(i8* %29, i32 64, i32 %30)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %108

35:                                               ; preds = %27
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 63
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %55, %35
  %39 = load i8*, i8** %11, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i8*, i8** %11, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 13
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %43
  %54 = load i8*, i8** %11, align 8
  store i8 0, i8* %54, align 1
  br label %58

55:                                               ; preds = %48
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  br label %38

58:                                               ; preds = %53, %38
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %58, %23
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @os_strlen(i8* %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ult i64 %63, 8
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %12, align 8
  %67 = icmp ugt i64 %66, 63
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %60
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %108

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @has_ctrl_char(i32* %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %108

78:                                               ; preds = %70
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = load i8*, i8** %8, align 8
  %83 = call i64 @os_strlen(i8* %82)
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %85 = call i32 @pbkdf2_sha1(i8* %79, i32* %81, i64 %83, i32 4096, i8* %84, i32 32)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %89)
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %102, %78
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 32
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %92

105:                                              ; preds = %92
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %76, %68, %33, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @has_ctrl_char(i32*, i64) #1

declare dso_local i32 @pbkdf2_sha1(i8*, i32*, i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
