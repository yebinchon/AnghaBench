; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_main.c_getcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_main.c_getcmd.c"
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
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store %struct.cmd* null, %struct.cmd** %7, align 8
  %10 = load %struct.cmd*, %struct.cmd** @cmdtab, align 8
  store %struct.cmd* %10, %struct.cmd** %6, align 8
  br label %11

11:                                               ; preds = %74, %1
  %12 = load %struct.cmd*, %struct.cmd** %6, align 8
  %13 = getelementptr inbounds %struct.cmd, %struct.cmd* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %77

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %35, %16
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  %24 = load i8, i8* %22, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load %struct.cmd*, %struct.cmd** %6, align 8
  store %struct.cmd* %33, %struct.cmd** %2, align 8
  br label %83

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  br label %18

38:                                               ; preds = %18
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp sgt i64 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  store i32 1, i32* %8, align 4
  %58 = load %struct.cmd*, %struct.cmd** %6, align 8
  store %struct.cmd* %58, %struct.cmd** %7, align 8
  br label %72

59:                                               ; preds = %42
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %59
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72, %38
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.cmd*, %struct.cmd** %6, align 8
  %76 = getelementptr inbounds %struct.cmd, %struct.cmd* %75, i32 1
  store %struct.cmd* %76, %struct.cmd** %6, align 8
  br label %11

77:                                               ; preds = %11
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store %struct.cmd* inttoptr (i64 -1 to %struct.cmd*), %struct.cmd** %2, align 8
  br label %83

81:                                               ; preds = %77
  %82 = load %struct.cmd*, %struct.cmd** %7, align 8
  store %struct.cmd* %82, %struct.cmd** %2, align 8
  br label %83

83:                                               ; preds = %81, %80, %32
  %84 = load %struct.cmd*, %struct.cmd** %2, align 8
  ret %struct.cmd* %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
