; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_kuserok.c_check_one_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_kuserok.c_check_one_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64 }
%struct.stat = type { i32, i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.passwd*, i32, i32*)* @check_one_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_one_file(i32 %0, i8* %1, %struct.passwd* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.stat, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.passwd* %2, %struct.passwd** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %21 = load i32, i32* @BUFSIZ, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32*, i32** %11, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %141

33:                                               ; preds = %5
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @rk_cloexec_file(i32* %34)
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @fileno(i32* %36)
  %38 = call i64 @fstat(i32 %37, %struct.stat* %16)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @fclose(i32* %41)
  %43 = load i32, i32* @errno, align 4
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %141

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @S_ISDIR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = load i32, i32* @EISDIR, align 4
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %141

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.passwd*, %struct.passwd** %9, align 8
  %57 = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = load i32, i32* @EACCES, align 4
  store i32 %67, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %141

68:                                               ; preds = %60, %53
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @S_IWGRP, align 4
  %72 = load i32, i32* @S_IWOTH, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @fclose(i32* %77)
  %79 = load i32, i32* @EACCES, align 4
  store i32 %79, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %141

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %137, %121, %113, %80
  %82 = trunc i64 %22 to i32
  %83 = load i32*, i32** %12, align 8
  %84 = call i32* @fgets(i8* %24, i32 %82, i32* %83)
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %138

86:                                               ; preds = %81
  %87 = call i32 @strcspn(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %24, i64 %88
  store i8* %89, i8** %19, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 10
  br i1 %93, label %94, label %115

94:                                               ; preds = %86
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @fgetc(i32* %95)
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* @EOF, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %110, %100
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* @EOF, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %20, align 4
  %107 = icmp ne i32 %106, 10
  br label %108

108:                                              ; preds = %105, %101
  %109 = phi i1 [ false, %101 ], [ %107, %105 ]
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @fgetc(i32* %111)
  store i32 %112, i32* %20, align 4
  br label %101

113:                                              ; preds = %108
  br label %81

114:                                              ; preds = %94
  br label %115

115:                                              ; preds = %114, %86
  %116 = load i8*, i8** %19, align 8
  store i8 0, i8* %116, align 1
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @krb5_parse_name(i32 %117, i8* %24, i32* %18)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %81

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %18, align 4
  %126 = call i32 @krb5_principal_compare(i32 %123, i32 %124, i32 %125)
  %127 = load i32*, i32** %11, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @krb5_free_principal(i32 %128, i32 %129)
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load i32*, i32** %12, align 8
  %136 = call i32 @fclose(i32* %135)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %141

137:                                              ; preds = %122
  br label %81

138:                                              ; preds = %81
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @fclose(i32* %139)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %141

141:                                              ; preds = %138, %134, %76, %64, %49, %40, %31
  %142 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @rk_cloexec_file(i32*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local i32 @fgetc(i32*) #2

declare dso_local i32 @krb5_parse_name(i32, i8*, i32*) #2

declare dso_local i32 @krb5_principal_compare(i32, i32, i32) #2

declare dso_local i32 @krb5_free_principal(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
