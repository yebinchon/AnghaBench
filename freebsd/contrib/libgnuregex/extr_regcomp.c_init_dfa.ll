; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_init_dfa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_init_dfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32*, i32*, i32*, i32 }

@BIN_TREE_STORAGE_SIZE = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@REG_ESPACE = common dso_local global i32 0, align 4
@re_token_t = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@REG_NOERROR = common dso_local global i32 0, align 4
@BITSET_WORDS = common dso_local global i32 0, align 4
@BITSET_WORD_BITS = common dso_local global i32 0, align 4
@CODESET = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@WEOF = common dso_local global i32 0, align 4
@_NL_CTYPE_CODESET_NAME = common dso_local global i32 0, align 4
@_NL_CTYPE_MAP_TO_NONASCII = common dso_local global i32 0, align 4
@utf8_sb_map = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @init_dfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_dfa(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = call i32 @memset(%struct.TYPE_4__* %8, i8 signext 0, i32 56)
  %10 = load i32, i32* @BIN_TREE_STORAGE_SIZE, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @SIZE_MAX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @REG_ESPACE, align 4
  store i32 %17, i32* %3, align 4
  br label %119

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @re_token_t, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32* @re_malloc(i32 %23, i64 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 7
  store i32* %27, i32** %29, align 8
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %37, %18
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %5, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %30

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = call i32* @calloc(i32 4, i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 6
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sub i32 %45, 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @MB_CUR_MAX, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %40
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55, %40
  %62 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %62, i8** %7, align 8
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66, %63
  %73 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i8*, i8** %7, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %87

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = call i8* @strchr(i8* %79, i8 signext 46)
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** %7, align 8
  %84 = call i8* @strchr(i8* %83, i8 signext 46)
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %7, align 8
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i8*, i8** %7, align 8
  %89 = call i64 @strcasecmp(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = call i64 @strcasecmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %87
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %91
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  store i32 0, i32* %100, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br label %110

110:                                              ; preds = %105, %98
  %111 = phi i1 [ true, %98 ], [ %109, %105 ]
  %112 = zext i1 %111 to i32
  %113 = call i64 @BE(i32 %112, i32 0)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @REG_ESPACE, align 4
  store i32 %116, i32* %3, align 4
  br label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @REG_NOERROR, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %115, %16
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i8 signext, i32) #1

declare dso_local i32* @re_malloc(i32, i64) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @BE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
