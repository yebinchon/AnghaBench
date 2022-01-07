; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftpd.c_reduce_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftpd.c_reduce_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"/./\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/../\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @reduce_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reduce_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %5

5:                                                ; preds = %40, %1
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strstr(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %24, %9
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = icmp ugt i8* %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi i1 [ false, %11 ], [ %20, %15 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %26, i8** %4, align 8
  br label %11

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %34, %27
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  store i8 %37, i8* %39, align 1
  br label %30

40:                                               ; preds = %30
  br label %5

41:                                               ; preds = %5
  br label %42

42:                                               ; preds = %104, %41
  %43 = load i8*, i8** %2, align 8
  %44 = call i8* @strstr(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %3, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %105

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %105

51:                                               ; preds = %46
  %52 = load i8*, i8** %3, align 8
  store i8* %52, i8** %4, align 8
  br label %53

53:                                               ; preds = %66, %51
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %2, align 8
  %56 = icmp ugt i8* %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 47
  br label %63

63:                                               ; preds = %57, %53
  %64 = phi i1 [ false, %53 ], [ %62, %57 ]
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %68, i8** %4, align 8
  br label %53

69:                                               ; preds = %63
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %83, %69
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %2, align 8
  %75 = icmp uge i8* %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i8*, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 47
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %86

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 -1
  store i8* %85, i8** %4, align 8
  br label %72

86:                                               ; preds = %81, %72
  %87 = load i8*, i8** %4, align 8
  %88 = load i8*, i8** %2, align 8
  %89 = icmp ult i8* %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %105

91:                                               ; preds = %86
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %98, %91
  %95 = load i8*, i8** %3, align 8
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i8*, i8** %3, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %3, align 8
  %101 = load i8, i8* %100, align 1
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %4, align 8
  store i8 %101, i8* %103, align 1
  br label %94

104:                                              ; preds = %94
  br label %42

105:                                              ; preds = %90, %50, %42
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
