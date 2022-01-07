; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_deroff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_deroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i64, i8*, %struct.roff_node*, %struct.roff_node* }

@ROFFT_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c" %&0^|~\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deroff(i8** %0, %struct.roff_node* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.roff_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  %7 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %8 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ROFFT_TEXT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 3
  %15 = load %struct.roff_node*, %struct.roff_node** %14, align 8
  store %struct.roff_node* %15, %struct.roff_node** %4, align 8
  br label %16

16:                                               ; preds = %22, %12
  %17 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %18 = icmp ne %struct.roff_node* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i8**, i8*** %3, align 8
  %21 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  call void @deroff(i8** %20, %struct.roff_node* %21)
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %24 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %23, i32 0, i32 2
  %25 = load %struct.roff_node*, %struct.roff_node** %24, align 8
  store %struct.roff_node* %25, %struct.roff_node** %4, align 8
  br label %16

26:                                               ; preds = %16
  br label %126

27:                                               ; preds = %2
  %28 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %65, %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 92
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = call i32* @strchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %51)
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  br label %64

57:                                               ; preds = %48, %42, %36
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @isspace(i8 zeroext %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %68

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %54
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  br label %31

68:                                               ; preds = %62, %31
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @strlen(i8* %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 92
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %81, %73, %68
  br label %85

85:                                               ; preds = %98, %84
  %86 = load i64, i64* %6, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i8*, i8** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @isspace(i8 zeroext %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %101

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, -1
  store i64 %100, i64* %6, align 8
  br label %85

101:                                              ; preds = %96, %85
  %102 = load i64, i64* %6, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %126

105:                                              ; preds = %101
  %106 = load i8**, i8*** %3, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i8*, i8** %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i8* @mandoc_strndup(i8* %110, i64 %111)
  %113 = load i8**, i8*** %3, align 8
  store i8* %112, i8** %113, align 8
  br label %126

114:                                              ; preds = %105
  %115 = load i8**, i8*** %3, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = load i64, i64* %6, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @mandoc_asprintf(i8** %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %116, i32 %118, i8* %119)
  %121 = load i8**, i8*** %3, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i8*, i8** %5, align 8
  %125 = load i8**, i8*** %3, align 8
  store i8* %124, i8** %125, align 8
  br label %126

126:                                              ; preds = %114, %109, %104, %26
  ret void
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @mandoc_strndup(i8*, i64) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
