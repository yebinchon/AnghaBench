; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_configure.c_openpam_load_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_configure.c_openpam_load_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"any\00", align 1
@pam_facility_name = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c".conf\00", align 1
@pam_conf_style = common dso_local global i64 0, align 8
@pam_d_style = common dso_local global i64 0, align 8
@openpam_policy_path = common dso_local global i8** null, align 8
@ENAMETOOLONG = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @openpam_load_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openpam_load_chain(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %27

22:                                               ; preds = %3
  %23 = load i8**, i8*** @pam_facility_name, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  br label %27

27:                                               ; preds = %22, %21
  %28 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %21 ], [ %26, %22 ]
  %29 = call i32 @ENTERS(i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32* @strchr(i8* %30, i8 signext 47)
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @strrchr(i8* %34, i8 signext 46)
  store i8* %35, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @pam_conf_style, align 8
  store i64 %42, i64* %13, align 8
  br label %45

43:                                               ; preds = %37, %33
  %44 = load i64, i64* @pam_d_style, align 8
  store i64 %44, i64* %13, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32*, i32** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @openpam_load_file(i32* %46, i8* %47, i64 %48, i8* %49, i64 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @RETURNN(i32 %52)
  br label %54

54:                                               ; preds = %45, %27
  %55 = load i8**, i8*** @openpam_policy_path, align 8
  store i8** %55, i8*** %9, align 8
  br label %56

56:                                               ; preds = %122, %54
  %57 = load i8**, i8*** %9, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %125

60:                                               ; preds = %56
  %61 = load i8**, i8*** %9, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = trunc i64 %16 to i32
  %64 = call i64 @strlcpy(i8* %18, i8* %62, i32 %63)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp uge i64 %65, %16
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i64, i64* @ENAMETOOLONG, align 8
  store i64 %68, i64* @errno, align 8
  %69 = call i32 @RETURNN(i32 -1)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i64, i64* %12, align 8
  %72 = sub i64 %71, 1
  %73 = getelementptr inbounds i8, i8* %18, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 47
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load i8*, i8** %6, align 8
  %79 = trunc i64 %16 to i32
  %80 = call i64 @strlcat(i8* %18, i8* %78, i32 %79)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp uge i64 %81, %16
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i64, i64* @ENAMETOOLONG, align 8
  store i64 %84, i64* @errno, align 8
  %85 = call i32 @RETURNN(i32 -1)
  br label %86

86:                                               ; preds = %83, %77
  %87 = load i64, i64* @pam_d_style, align 8
  store i64 %87, i64* %13, align 8
  br label %90

88:                                               ; preds = %70
  %89 = load i64, i64* @pam_conf_style, align 8
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i32*, i32** %5, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @openpam_load_file(i32* %91, i8* %92, i64 %93, i8* %18, i64 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @RETURNN(i32 %99)
  br label %101

101:                                              ; preds = %98, %90
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i64, i64* @errno, align 8
  %106 = load i64, i64* @ENOENT, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @RETURNN(i32 %109)
  br label %111

111:                                              ; preds = %108, %104, %101
  %112 = load i32, i32* %14, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* @pam_d_style, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @RETURNN(i32 %119)
  br label %121

121:                                              ; preds = %118, %114, %111
  br label %122

122:                                              ; preds = %121
  %123 = load i8**, i8*** %9, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i32 1
  store i8** %124, i8*** %9, align 8
  br label %56

125:                                              ; preds = %56
  %126 = load i64, i64* @ENOENT, align 8
  store i64 %126, i64* @errno, align 8
  %127 = call i32 @RETURNN(i32 -1)
  %128 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ENTERS(i8*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @openpam_load_file(i32*, i8*, i64, i8*, i64) #2

declare dso_local i32 @RETURNN(i32) #2

declare dso_local i64 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @strlcat(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
