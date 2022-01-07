; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c_krb5_config_parse_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c_krb5_config_parse_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileptr = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@KRB5_BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"unmatched }\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"binding before section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileptr*, %struct.TYPE_7__**, i32*, i8**)* @krb5_config_parse_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_config_parse_debug(%struct.fileptr* %0, %struct.TYPE_7__** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileptr*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.fileptr* %0, %struct.fileptr** %6, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  store i32* null, i32** %11, align 8
  %17 = load i32, i32* @KRB5_BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  br label %21

21:                                               ; preds = %101, %50, %4
  %22 = trunc i64 %18 to i32
  %23 = load %struct.fileptr*, %struct.fileptr** %6, align 8
  %24 = call i32* @config_fgets(i8* %20, i32 %22, %struct.fileptr* %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %102

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = call i64 @strcspn(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = getelementptr inbounds i8, i8* %20, i64 %30
  store i8 0, i8* %31, align 1
  store i8* %20, i8** %15, align 8
  br label %32

32:                                               ; preds = %37, %26
  %33 = load i8*, i8** %15, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isspace(i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %15, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %15, align 8
  br label %32

40:                                               ; preds = %32
  %41 = load i8*, i8** %15, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 35
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %15, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 59
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40
  br label %21

51:                                               ; preds = %45
  %52 = load i8*, i8** %15, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 91
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i8*, i8** %15, align 8
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %59 = load i8**, i8*** %9, align 8
  %60 = call i32 @parse_section(i8* %57, %struct.TYPE_7__** %10, %struct.TYPE_7__** %58, i8** %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

65:                                               ; preds = %56
  store i32* null, i32** %11, align 8
  br label %101

66:                                               ; preds = %51
  %67 = load i8*, i8** %15, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 125
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %72, align 8
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

74:                                               ; preds = %66
  %75 = load i8*, i8** %15, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %81 = icmp eq %struct.TYPE_7__* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %83, align 8
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

85:                                               ; preds = %79
  %86 = load %struct.fileptr*, %struct.fileptr** %6, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i8**, i8*** %9, align 8
  %93 = call i32 @parse_binding(%struct.fileptr* %86, i32* %87, i8* %88, i32** %11, i32* %91, i8** %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %74
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %65
  br label %21

102:                                              ; preds = %21
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

103:                                              ; preds = %102, %96, %82, %71, %63
  %104 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @config_fgets(i8*, i32, %struct.fileptr*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @parse_section(i8*, %struct.TYPE_7__**, %struct.TYPE_7__**, i8**) #2

declare dso_local i32 @parse_binding(%struct.fileptr*, i32*, i8*, i32**, i32*, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
