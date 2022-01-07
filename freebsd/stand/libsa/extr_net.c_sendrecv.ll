; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_net.c_sendrecv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_net.c_sendrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i32 }

@MINTMO = common dso_local global i64 0, align 8
@MAXWAIT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@MAXTMO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"sendrecv: short write! (%zd < %zd)\00", align 1
@debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendrecv(%struct.iodesc* %0, i32 (%struct.iodesc*, i8*, i64)* %1, i8* %2, i64 %3, i32 (%struct.iodesc*, i8**, i8**, i64, i8*)* %4, i8** %5, i8** %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.iodesc*, align 8
  %11 = alloca i32 (%struct.iodesc*, i8*, i64)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32 (%struct.iodesc*, i8**, i8**, i64, i8*)*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.iodesc* %0, %struct.iodesc** %10, align 8
  store i32 (%struct.iodesc*, i8*, i64)* %1, i32 (%struct.iodesc*, i8*, i64)** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 (%struct.iodesc*, i8**, i8**, i64, i8*)* %4, i32 (%struct.iodesc*, i8**, i8**, i64, i8*)** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i8* %7, i8** %17, align 8
  %24 = load i64, i64* @MINTMO, align 8
  store i64 %24, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %23, align 8
  %25 = call i64 (...) @getsecs()
  store i64 %25, i64* %22, align 8
  %26 = call i64 (...) @getsecs()
  store i64 %26, i64* %19, align 8
  br label %27

27:                                               ; preds = %107, %85, %8
  %28 = load i64, i64* @MAXWAIT, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = call i64 (...) @getsecs()
  %32 = load i64, i64* %22, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i64, i64* @MAXWAIT, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %37, i64* @errno, align 8
  store i32 -1, i32* %9, align 4
  br label %115

38:                                               ; preds = %30, %27
  %39 = load i64, i64* %23, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %38
  %42 = load i64, i64* %20, align 8
  %43 = load i64, i64* @MAXTMO, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %46, i64* @errno, align 8
  store i32 -1, i32* %9, align 4
  br label %115

47:                                               ; preds = %41
  %48 = load i32 (%struct.iodesc*, i8*, i64)*, i32 (%struct.iodesc*, i8*, i64)** %11, align 8
  %49 = load %struct.iodesc*, %struct.iodesc** %10, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 %48(%struct.iodesc* %49, i8* %50, i64 %51)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %13, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %18, align 4
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %60, %55, %47
  %65 = load i64, i64* %20, align 8
  store i64 %65, i64* %23, align 8
  %66 = load i64, i64* @MINTMO, align 8
  %67 = load i64, i64* %20, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %20, align 8
  %69 = load i64, i64* %20, align 8
  %70 = load i64, i64* @MAXTMO, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i64, i64* @MAXTMO, align 8
  store i64 %73, i64* %20, align 8
  br label %74

74:                                               ; preds = %72, %64
  %75 = load i32, i32* %18, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %84, %77
  %79 = call i64 (...) @getsecs()
  %80 = load i64, i64* %19, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load i64, i64* %20, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %78

85:                                               ; preds = %78
  store i64 0, i64* %23, align 8
  br label %27

86:                                               ; preds = %74
  %87 = load i64, i64* %19, align 8
  store i64 %87, i64* %21, align 8
  br label %88

88:                                               ; preds = %86, %38
  %89 = load i32 (%struct.iodesc*, i8**, i8**, i64, i8*)*, i32 (%struct.iodesc*, i8**, i8**, i64, i8*)** %14, align 8
  %90 = load %struct.iodesc*, %struct.iodesc** %10, align 8
  %91 = load i8**, i8*** %15, align 8
  %92 = load i8**, i8*** %16, align 8
  %93 = load i64, i64* %23, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = call i32 %89(%struct.iodesc* %90, i8** %91, i8** %92, i64 %93, i8* %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %105, label %98

98:                                               ; preds = %88
  %99 = load i64, i64* @errno, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i64, i64* @errno, align 8
  %103 = load i64, i64* @ETIMEDOUT, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %88
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %9, align 4
  br label %115

107:                                              ; preds = %101, %98
  %108 = call i64 (...) @getsecs()
  store i64 %108, i64* %19, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* %21, align 8
  %111 = sub nsw i64 %109, %110
  %112 = load i64, i64* %23, align 8
  %113 = sub nsw i64 %112, %111
  store i64 %113, i64* %23, align 8
  %114 = load i64, i64* %19, align 8
  store i64 %114, i64* %21, align 8
  br label %27

115:                                              ; preds = %105, %45, %36
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

declare dso_local i64 @getsecs(...) #1

declare dso_local i32 @panic(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
