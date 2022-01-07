; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c_parse_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c_parse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileptr = type { i32 }

@KRB5_BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"unclosed {\00", align 1
@KRB5_CONFIG_BADFORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileptr*, i32*, i32**, i8**)* @parse_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_list(%struct.fileptr* %0, i32* %1, i32** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileptr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.fileptr* %0, %struct.fileptr** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %17 = load i32, i32* @KRB5_BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i32* null, i32** %13, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %90, %78, %57, %4
  %24 = trunc i64 %18 to i32
  %25 = load %struct.fileptr*, %struct.fileptr** %6, align 8
  %26 = call i32* @config_fgets(i8* %20, i32 %24, %struct.fileptr* %25)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %91

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = call i64 @strcspn(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %33 = getelementptr inbounds i8, i8* %20, i64 %32
  store i8 0, i8* %33, align 1
  store i8* %20, i8** %15, align 8
  br label %34

34:                                               ; preds = %39, %28
  %35 = load i8*, i8** %15, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isspace(i8 zeroext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %15, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %15, align 8
  br label %34

42:                                               ; preds = %34
  %43 = load i8*, i8** %15, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %15, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 59
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %15, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47, %42
  br label %23

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %64, %58
  %60 = load i8*, i8** %15, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @isspace(i8 zeroext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %15, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %15, align 8
  br label %59

67:                                               ; preds = %59
  %68 = load i8*, i8** %15, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 125
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %96

73:                                               ; preds = %67
  %74 = load i8*, i8** %15, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %23

79:                                               ; preds = %73
  %80 = load %struct.fileptr*, %struct.fileptr** %6, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = load i32**, i32*** %8, align 8
  %84 = load i8**, i8*** %9, align 8
  %85 = call i32 @parse_binding(%struct.fileptr* %80, i32* %81, i8* %82, i32** %13, i32** %83, i8** %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %96

90:                                               ; preds = %79
  br label %23

91:                                               ; preds = %23
  %92 = load i32, i32* %14, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %94, align 8
  %95 = load i32, i32* @KRB5_CONFIG_BADFORMAT, align 4
  store i32 %95, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %96

96:                                               ; preds = %91, %88, %72
  %97 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @config_fgets(i8*, i32, %struct.fileptr*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @parse_binding(%struct.fileptr*, i32*, i8*, i32**, i32**, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
