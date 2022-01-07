; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getrpcent.c_rpcent_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getrpcent.c_rpcent_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcent = type { i8*, i8**, i32 }

@.str = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rpcent*, i8**, i64, i32*)* @rpcent_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcent_unpack(i8* %0, %struct.rpcent* %1, i8** %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rpcent*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  store i8* %0, i8** %7, align 8
  store %struct.rpcent* %1, %struct.rpcent** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 35
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %121

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strpbrk(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %121

29:                                               ; preds = %23
  %30 = load i8*, i8** %12, align 8
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @strpbrk(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %121

36:                                               ; preds = %29
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %12, align 8
  store i8 0, i8* %37, align 1
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.rpcent*, %struct.rpcent** %8, align 8
  %41 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %54, %36
  %43 = load i8*, i8** %12, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %12, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 9
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ true, %42 ], [ %51, %47 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %12, align 8
  br label %42

57:                                               ; preds = %52
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @atoi(i8* %58)
  %60 = load %struct.rpcent*, %struct.rpcent** %8, align 8
  %61 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i8**, i8*** %9, align 8
  %63 = load %struct.rpcent*, %struct.rpcent** %8, align 8
  %64 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %63, i32 0, i32 1
  store i8** %62, i8*** %64, align 8
  store i8** %62, i8*** %13, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i8* @strpbrk(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %12, align 8
  store i8 0, i8* %70, align 1
  br label %72

72:                                               ; preds = %69, %57
  br label %73

73:                                               ; preds = %118, %93, %72
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i8*, i8** %12, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %76, %73
  %82 = phi i1 [ false, %73 ], [ %80, %76 ]
  br i1 %82, label %83, label %119

83:                                               ; preds = %81
  %84 = load i8*, i8** %12, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %12, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 9
  br i1 %92, label %93, label %96

93:                                               ; preds = %88, %83
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %12, align 8
  br label %73

96:                                               ; preds = %88
  %97 = load i8**, i8*** %13, align 8
  %98 = load i8**, i8*** %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = sub i64 %99, 1
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = icmp ult i8** %97, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i8*, i8** %12, align 8
  %105 = load i8**, i8*** %13, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i32 1
  store i8** %106, i8*** %13, align 8
  store i8* %104, i8** %105, align 8
  br label %110

107:                                              ; preds = %96
  %108 = load i32, i32* @ERANGE, align 4
  %109 = load i32*, i32** %11, align 8
  store i32 %108, i32* %109, align 4
  store i32 -1, i32* %6, align 4
  br label %121

110:                                              ; preds = %103
  %111 = load i8*, i8** %12, align 8
  %112 = call i8* @strpbrk(i8* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %112, i8** %12, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %12, align 8
  store i8 0, i8* %116, align 1
  br label %118

118:                                              ; preds = %115, %110
  br label %73

119:                                              ; preds = %81
  %120 = load i8**, i8*** %13, align 8
  store i8* null, i8** %120, align 8
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %107, %35, %28, %22
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
