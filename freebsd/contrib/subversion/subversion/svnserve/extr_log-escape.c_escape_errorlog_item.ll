; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_log-escape.c_escape_errorlog_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_log-escape.c_escape_errorlog_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @escape_errorlog_item(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %127

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  store i8* %24, i8** %9, align 8
  br label %25

25:                                               ; preds = %116, %17
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %119

36:                                               ; preds = %34
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %110

41:                                               ; preds = %36
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @svn_ctype_isprint(i8 zeroext %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 92
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %10, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @svn_ctype_iscntrl(i8 zeroext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %110

56:                                               ; preds = %51, %46, %41
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  store i8 92, i8* %57, align 1
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp uge i8* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %64, i8** %8, align 8
  br label %119

65:                                               ; preds = %56
  %66 = load i8*, i8** %10, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  switch i32 %68, label %94 [
    i32 8, label %69
    i32 10, label %72
    i32 13, label %75
    i32 9, label %78
    i32 11, label %81
    i32 92, label %84
    i32 34, label %89
  ]

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %8, align 8
  store i8 98, i8* %70, align 1
  br label %109

72:                                               ; preds = %65
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  store i8 110, i8* %73, align 1
  br label %109

75:                                               ; preds = %65
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %8, align 8
  store i8 114, i8* %76, align 1
  br label %109

78:                                               ; preds = %65
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  store i8 116, i8* %79, align 1
  br label %109

81:                                               ; preds = %65
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  store i8 118, i8* %82, align 1
  br label %109

84:                                               ; preds = %65
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  store i8 %86, i8* %87, align 1
  br label %109

89:                                               ; preds = %65
  %90 = load i8*, i8** %10, align 8
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 -1
  store i8 %91, i8* %93, align 1
  br label %109

94:                                               ; preds = %65
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 -2
  %98 = icmp uge i8* %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 -1
  store i8* %101, i8** %8, align 8
  store i8* %101, i8** %9, align 8
  br label %109

102:                                              ; preds = %94
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @c2x(i8 zeroext %104, i8 signext 120, i8* %105)
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 3
  store i8* %108, i8** %8, align 8
  br label %109

109:                                              ; preds = %102, %99, %89, %84, %81, %78, %75, %72, %69
  br label %115

110:                                              ; preds = %51, %36
  %111 = load i8*, i8** %10, align 8
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %8, align 8
  store i8 %112, i8* %113, align 1
  br label %115

115:                                              ; preds = %110, %109
  br label %116

116:                                              ; preds = %115
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %10, align 8
  br label %25

119:                                              ; preds = %62, %34
  %120 = load i8*, i8** %8, align 8
  store i8 0, i8* %120, align 1
  %121 = load i8*, i8** %8, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %119, %16
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @svn_ctype_isprint(i8 zeroext) #1

declare dso_local i64 @svn_ctype_iscntrl(i8 zeroext) #1

declare dso_local i32 @c2x(i8 zeroext, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
