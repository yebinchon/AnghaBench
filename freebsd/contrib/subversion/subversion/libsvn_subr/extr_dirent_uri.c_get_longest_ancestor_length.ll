; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_get_longest_ancestor_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_get_longest_ancestor_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@type_dirent = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i8*, i32*)* @get_longest_ancestor_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_longest_ancestor_length(i64 %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @SVN_PATH_IS_EMPTY(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @SVN_PATH_IS_EMPTY(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %4
  store i64 0, i64* %5, align 8
  br label %135

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %59, %26
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %27
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* %12, align 8
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %46, %39
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %48
  br label %60

59:                                               ; preds = %54
  br label %27

60:                                               ; preds = %58, %27
  %61 = load i64, i64* %12, align 8
  %62 = icmp eq i64 %61, 1
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 47
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i64 1, i64* %5, align 8
  br label %135

76:                                               ; preds = %69, %63, %60
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @type_dirent, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i64, i64* %12, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i64 0, i64* %5, align 8
  br label %135

84:                                               ; preds = %80, %76
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 47
  br i1 %94, label %114, label %95

95:                                               ; preds = %88, %84
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i8*, i8** %7, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 47
  br i1 %105, label %114, label %106

106:                                              ; preds = %99, %95
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %10, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %11, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %99, %88
  %115 = load i64, i64* %12, align 8
  store i64 %115, i64* %5, align 8
  br label %135

116:                                              ; preds = %110, %106
  %117 = load i64, i64* %13, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 47
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 47
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i64 1, i64* %5, align 8
  br label %135

132:                                              ; preds = %125, %119, %116
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %13, align 8
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %133, %131, %114, %83, %75, %25
  %136 = load i64, i64* %5, align 8
  ret i64 %136
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @SVN_PATH_IS_EMPTY(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
