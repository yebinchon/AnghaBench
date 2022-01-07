; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_is_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_is_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_path_is_child(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @SVN_PATH_IS_EMPTY(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @SVN_PATH_IS_EMPTY(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 47
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %12
  store i8* null, i8** %4, align 8
  br label %131

23:                                               ; preds = %16
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @apr_pstrdup(i32* %27, i8* %28)
  br label %32

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i8* [ %29, %26 ], [ %31, %30 ]
  store i8* %33, i8** %4, align 8
  br label %131

34:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %42, %35
  %50 = phi i1 [ false, %35 ], [ %48, %42 ]
  br i1 %50, label %51, label %68

51:                                               ; preds = %49
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store i8* null, i8** %4, align 8
  br label %131

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %35

68:                                               ; preds = %49
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %130

75:                                               ; preds = %68
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %130

82:                                               ; preds = %75
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 47
  br i1 %88, label %89, label %106

89:                                               ; preds = %82
  %90 = load i32*, i32** %7, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32*, i32** %7, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = call i8* @apr_pstrdup(i32* %93, i8* %97)
  br label %104

99:                                               ; preds = %89
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  br label %104

104:                                              ; preds = %99, %92
  %105 = phi i8* [ %98, %92 ], [ %103, %99 ]
  store i8* %105, i8** %4, align 8
  br label %131

106:                                              ; preds = %82
  %107 = load i64, i64* %8, align 8
  %108 = icmp eq i64 %107, 1
  br i1 %108, label %109, label %128

109:                                              ; preds = %106
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 47
  br i1 %114, label %115, label %128

115:                                              ; preds = %109
  %116 = load i32*, i32** %7, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32*, i32** %7, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = call i8* @apr_pstrdup(i32* %119, i8* %121)
  br label %126

123:                                              ; preds = %115
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  br label %126

126:                                              ; preds = %123, %118
  %127 = phi i8* [ %122, %118 ], [ %125, %123 ]
  store i8* %127, i8** %4, align 8
  br label %131

128:                                              ; preds = %109, %106
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129, %75, %68
  store i8* null, i8** %4, align 8
  br label %131

131:                                              ; preds = %130, %126, %104, %63, %32, %22
  %132 = load i8*, i8** %4, align 8
  ret i8* %132
}

declare dso_local i64 @SVN_PATH_IS_EMPTY(i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
