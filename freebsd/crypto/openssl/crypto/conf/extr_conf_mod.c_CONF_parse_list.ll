; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_mod.c_CONF_parse_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_mod.c_CONF_parse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONF_F_CONF_PARSE_LIST = common dso_local global i32 0, align 4
@CONF_R_LIST_CANNOT_BE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CONF_parse_list(i8* %0, i32 %1, i32 %2, i32 (i8*, i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (i8*, i32, i8*)* %3, i32 (i8*, i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @CONF_F_CONF_PARSE_LIST, align 4
  %20 = load i32, i32* @CONF_R_LIST_CANNOT_BE_NULL, align 4
  %21 = call i32 @CONFerr(i32 %19, i32 %20)
  store i32 0, i32* %6, align 4
  br label %109

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %13, align 8
  br label %24

24:                                               ; preds = %106, %22
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i8*, i8** %13, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %13, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isspace(i8 zeroext %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %13, align 8
  br label %28

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @strchr(i8* %45, i32 %46)
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load i8*, i8** %13, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51, %44
  %56 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %10, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 %56(i8* null, i32 0, i8* %57)
  store i32 %58, i32* %12, align 4
  br label %97

59:                                               ; preds = %51
  %60 = load i8*, i8** %15, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  store i8* %64, i8** %14, align 8
  br label %72

65:                                               ; preds = %59
  %66 = load i8*, i8** %13, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = getelementptr inbounds i8, i8* %70, i64 -1
  store i8* %71, i8** %14, align 8
  br label %72

72:                                               ; preds = %65, %62
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %81, %75
  %77 = load i8*, i8** %14, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @isspace(i8 zeroext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %83, i8** %14, align 8
  br label %76

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %72
  %86 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %10, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = add nsw i64 %92, 1
  %94 = trunc i64 %93 to i32
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 %86(i8* %87, i32 %94, i8* %95)
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %85, %55
  %98 = load i32, i32* %12, align 4
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %6, align 4
  br label %109

102:                                              ; preds = %97
  %103 = load i8*, i8** %15, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1, i32* %6, align 4
  br label %109

106:                                              ; preds = %102
  %107 = load i8*, i8** %15, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  store i8* %108, i8** %13, align 8
  br label %24

109:                                              ; preds = %105, %100, %18
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @CONFerr(i32, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
