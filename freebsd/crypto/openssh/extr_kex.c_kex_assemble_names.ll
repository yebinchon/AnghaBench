; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_assemble_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_assemble_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kex_assemble_names(i8** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %16 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = icmp eq i8** %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23, %19, %3
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @strdup(i8* %30)
  %32 = load i8**, i8*** %5, align 8
  store i8* %31, i8** %32, align 8
  %33 = icmp eq i8* %31, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %35, i32* %4, align 4
  br label %136

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %136

37:                                               ; preds = %23
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %11, align 8
  %40 = load i8**, i8*** %5, align 8
  store i8* null, i8** %40, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i8* @kex_names_cat(i8* %46, i8* %48)
  store i8* %49, i8** %9, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %52, i32* %15, align 4
  br label %126

53:                                               ; preds = %45
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i8*, i8** %9, align 8
  store i8* %56, i8** %11, align 8
  br label %76

57:                                               ; preds = %37
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 45
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = call i8* @match_filter_blacklist(i8* %63, i8* %65)
  %67 = load i8**, i8*** %5, align 8
  store i8* %66, i8** %67, align 8
  %68 = icmp eq i8* %66, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %70, i32* %15, align 4
  br label %126

71:                                               ; preds = %62
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @free(i8* %72)
  store i32 0, i32* %4, align 4
  br label %136

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75, %53
  store i8* null, i8** %12, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i8* @strdup(i8* %77)
  store i8* %78, i8** %14, align 8
  store i8* %78, i8** %10, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %81, i32* %15, align 4
  br label %126

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %109, %82
  %84 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %84, i8** %8, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %113

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 33
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %92, i32* %15, align 4
  br label %126

93:                                               ; preds = %86
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i8*, i8** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i8* @match_filter_whitelist(i8* %96, i8* %97)
  store i8* %98, i8** %13, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %101, i32* %15, align 4
  br label %126

102:                                              ; preds = %93
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = call i8* @kex_names_cat(i8* %103, i8* %104)
  store i8* %105, i8** %9, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %108, i32* %15, align 4
  br label %126

109:                                              ; preds = %102
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i8*, i8** %9, align 8
  store i8* %112, i8** %12, align 8
  br label %83

113:                                              ; preds = %83
  %114 = load i8*, i8** %12, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load i8*, i8** %12, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116, %113
  %122 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %122, i32* %15, align 4
  br label %126

123:                                              ; preds = %116
  %124 = load i8*, i8** %12, align 8
  %125 = load i8**, i8*** %5, align 8
  store i8* %124, i8** %125, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %15, align 4
  br label %126

126:                                              ; preds = %123, %121, %107, %100, %91, %80, %69, %51
  %127 = load i8*, i8** %13, align 8
  %128 = call i32 @free(i8* %127)
  %129 = load i8*, i8** %14, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %126, %71, %36, %34
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @kex_names_cat(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @match_filter_blacklist(i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @match_filter_whitelist(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
