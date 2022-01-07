; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_main.c_getcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_main.c_getcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i8* }

@cmdtab = common dso_local global %struct.cmd* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd* @getcmd(i8* %0) #0 {
  %2 = alloca %struct.cmd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cmd*, align 8
  %7 = alloca %struct.cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.cmd* null, %struct.cmd** %2, align 8
  br label %87

13:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store %struct.cmd* null, %struct.cmd** %7, align 8
  %14 = load %struct.cmd*, %struct.cmd** @cmdtab, align 8
  store %struct.cmd* %14, %struct.cmd** %6, align 8
  br label %15

15:                                               ; preds = %78, %13
  %16 = load %struct.cmd*, %struct.cmd** %6, align 8
  %17 = getelementptr inbounds %struct.cmd, %struct.cmd* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %81

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %39, %20
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load %struct.cmd*, %struct.cmd** %6, align 8
  store %struct.cmd* %37, %struct.cmd** %2, align 8
  br label %87

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  br label %22

42:                                               ; preds = %22
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp sgt i64 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  store i32 1, i32* %8, align 4
  %62 = load %struct.cmd*, %struct.cmd** %6, align 8
  store %struct.cmd* %62, %struct.cmd** %7, align 8
  br label %76

63:                                               ; preds = %46
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %72, %63
  br label %76

76:                                               ; preds = %75, %55
  br label %77

77:                                               ; preds = %76, %42
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.cmd*, %struct.cmd** %6, align 8
  %80 = getelementptr inbounds %struct.cmd, %struct.cmd* %79, i32 1
  store %struct.cmd* %80, %struct.cmd** %6, align 8
  br label %15

81:                                               ; preds = %15
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store %struct.cmd* inttoptr (i64 -1 to %struct.cmd*), %struct.cmd** %2, align 8
  br label %87

85:                                               ; preds = %81
  %86 = load %struct.cmd*, %struct.cmd** %7, align 8
  store %struct.cmd* %86, %struct.cmd** %2, align 8
  br label %87

87:                                               ; preds = %85, %84, %36, %12
  %88 = load %struct.cmd*, %struct.cmd** %2, align 8
  ret %struct.cmd* %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
