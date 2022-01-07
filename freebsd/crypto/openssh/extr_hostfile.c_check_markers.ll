; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_check_markers.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_check_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MRK_NONE = common dso_local global i32 0, align 4
@MRK_ERROR = common dso_local global i32 0, align 4
@CA_MARKER = common dso_local global i32 0, align 4
@MRK_CA = common dso_local global i32 0, align 4
@REVOKE_MARKER = common dso_local global i32 0, align 4
@MRK_REVOKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @check_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_markers(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i32, i32* @MRK_NONE, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %94, %1
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 64
  br i1 %15, label %16, label %95

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MRK_NONE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @MRK_ERROR, align 4
  store i32 %21, i32* %2, align 4
  br label %99

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 32)
  store i8* %24, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 9)
  store i8* %28, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @MRK_ERROR, align 4
  store i32 %31, i32* %2, align 4
  br label %99

32:                                               ; preds = %26, %22
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = icmp ule i8* %33, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 32
  %41 = icmp uge i8* %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @MRK_ERROR, align 4
  store i32 %43, i32* %2, align 4
  br label %99

44:                                               ; preds = %37
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i8* %45, i8* %46, i32 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %58
  store i8 0, i8* %59, align 1
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %61 = load i32, i32* @CA_MARKER, align 4
  %62 = call i64 @strcmp(i8* %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = load i32, i32* @MRK_CA, align 4
  store i32 %65, i32* %7, align 4
  br label %76

66:                                               ; preds = %44
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %68 = load i32, i32* @REVOKE_MARKER, align 4
  %69 = call i64 @strcmp(i8* %67, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @MRK_REVOKE, align 4
  store i32 %72, i32* %7, align 4
  br label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @MRK_ERROR, align 4
  store i32 %74, i32* %2, align 4
  br label %99

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %64
  %77 = load i8*, i8** %5, align 8
  store i8* %77, i8** %6, align 8
  br label %78

78:                                               ; preds = %91, %76
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 9
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ true, %78 ], [ %87, %83 ]
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  br label %78

94:                                               ; preds = %88
  br label %11

95:                                               ; preds = %11
  %96 = load i8*, i8** %6, align 8
  %97 = load i8**, i8*** %3, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %73, %42, %30, %20
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
